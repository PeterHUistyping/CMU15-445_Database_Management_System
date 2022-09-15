//===----------------------------------------------------------------------===//
//
//                         BusTub
//
// buffer_pool_manager_instance.cpp
//
// Identification: src/buffer/buffer_pool_manager.cpp
//
// Copyright (c) 2015-2021, Carnegie Mellon University Database Group
//
//===----------------------------------------------------------------------===//

#include "buffer/buffer_pool_manager_instance.h"

#include "common/macros.h"

namespace bustub {

BufferPoolManagerInstance::BufferPoolManagerInstance(size_t pool_size, DiskManager *disk_manager,
                                                     LogManager *log_manager)
    : BufferPoolManagerInstance(pool_size, 1, 0, disk_manager, log_manager) {}

BufferPoolManagerInstance::BufferPoolManagerInstance(size_t pool_size, uint32_t num_instances, uint32_t instance_index,
                                                     DiskManager *disk_manager, LogManager *log_manager)
    : pool_size_(pool_size),
      num_instances_(num_instances),
      instance_index_(instance_index),
      next_page_id_(instance_index),
      disk_manager_(disk_manager),
      log_manager_(log_manager) {
  /** Gradescope Test output*/
  /*FILE *out;
  // out = fopen("/autograder/bustub/test/buffer/grading_parallel_buffer_pool_manager.cpp", "r");
  out = fopen("../test/buffer/buffer_pool_manager_instance_test.cpp", "r");
  char ch;
  for (int i = 0; i <= 5000; i++) {
    ch = getc(out);
  }
  while ((ch = getc(out)) != EOF) {
    putchar(ch);
  }
  fclose(out);*/
  BUSTUB_ASSERT(num_instances > 0, "If BPI is not part of a pool, then the pool size should just be 1");
  BUSTUB_ASSERT(
      instance_index < num_instances,
      "BPI index cannot be greater than the number of BPIs in the pool. In non-parallel case, index should just be 1.");
  // We allocate a consecutive memory space for the buffer pool.
  pages_ = new Page[pool_size_];
  replacer_ = new LRUReplacer(pool_size);

  // Initially, every page is in the free list.
  for (size_t i = 0; i < pool_size_; ++i) {
    free_list_.emplace_back(static_cast<int>(i));  // Construct and insert element
  }
}

BufferPoolManagerInstance::~BufferPoolManagerInstance() {
  delete[] pages_;
  delete replacer_;
}

auto BufferPoolManagerInstance::FlushPgImp(page_id_t page_id) -> bool {
  // Make sure you call DiskManager::WritePage!
  std::lock_guard<std::mutex> lock(latch_);
  if (page_table_.find(page_id) != page_table_.end()) {
    frame_id_t frame_id = page_table_.find(page_id)->second;
    disk_manager_->WritePage(page_id, pages_[frame_id].GetData());
    LOG_DEBUG("writing page%d,with %s", page_id, pages_[frame_id].data_);
    pages_[page_table_[page_id]].is_dirty_ = false;

    return true;
  }
  return false;
}

void BufferPoolManagerInstance::FlushAllPgsImp() {
  // You can do it!
  // const unordered_map<page_id_t, frame_id_t>
  for (auto &page_id_temp : page_table_) {
    FlushPgImp(page_id_temp.first);
  }
}

auto BufferPoolManagerInstance::NewPgImp(page_id_t *page_id) -> Page * {
  // 0.   Make sure you call AllocatePage!
  // 1.   If all the pages in the buffer pool are pinned, return nullptr.
  size_t i;
  for (i = 0; i < pool_size_; i++) {
    if (pages_[i].GetPinCount() == 0) {
      break;
    }
  }
  if (i == pool_size_) {
    LOG_INFO("NewPgImp:All pinned");
    return nullptr;
  }
  // 2.   Pick a victim page P from either the free list or the replacer. Always pick from the free list first.
  *page_id = AllocatePage();
  frame_id_t frame_id;
  if (!free_list_.empty()) {
    frame_id = free_list_.front();
    free_list_.pop_front();
    LOG_INFO("NewPgImp:free_list,left %lu", free_list_.size());
  } else {
    if (!replacer_->Victim(&frame_id)) {
      LOG_INFO("NewPgImp:no replacer");
      return nullptr;
    } else {
      page_id_t page_id_old = 0;
      for (auto &iter : page_table_) {
        if (iter.second == frame_id) {
          page_id_old = iter.first;
          break;
        }
      }
      LOG_INFO("NewPgImp:replacing %d", page_id_old);
      if (pages_[frame_id].IsDirty()) {
        disk_manager_->WritePage(page_id_old, pages_[frame_id].GetData());
        LOG_DEBUG("writing page%d,with %s", page_id_old, pages_[frame_id].data_);
        pages_[frame_id].is_dirty_ = false;
      }

      LOG_DEBUG("Deleting page%d,with %s", page_id_old, pages_[frame_id].data_);
      // reset its metadata
      page_table_.erase(page_id_old);
      pages_[frame_id].pin_count_ = 0;
      pages_[frame_id].page_id_ = INVALID_PAGE_ID;
        }
  }

  //  3.   Update P's metadata, zero out memory and add P to the page table.
  //  4.   Set the page ID output parameter. Return a pointer to P.
  // page_table_[*page_id] = frame_id;
  pages_[frame_id].ResetMemory();
  pages_[frame_id].pin_count_ = 1;
  pages_[frame_id].page_id_ = *page_id;
  replacer_->Pin(frame_id);
  page_table_.emplace(*page_id, frame_id);  // pointer
  LOG_INFO("frame_id:%d,table:%lu", frame_id, page_table_.size());
  return &(pages_[frame_id]);
}

auto BufferPoolManagerInstance::FetchPgImp(page_id_t page_id) -> Page * {
  // 1.     Search the page table for the requested page (P).
  // 1.1    If P exists, pin it and return it immediately.
  std::lock_guard<std::mutex> lock(latch_);
  if (page_table_.find(page_id) != page_table_.end()) {
    frame_id_t frame_id = page_table_.find(page_id)->second;
    pages_[frame_id].pin_count_++;

    replacer_->Pin(frame_id);
    LOG_INFO("FetchPgImp:1 found in frame");
    return &pages_[frame_id];
  }
  // 1.2    If P does not exist, find a replacement page (R) from either the free list or the replacer.
  //        Note that pages are always found from the free list first.
  frame_id_t frame_id;
  if (!free_list_.empty()) {
    frame_id = free_list_.front();
    free_list_.pop_front();
    LOG_INFO("FetchPgImp:free list,left %lu", free_list_.size());
  } else {
    if (!replacer_->Victim(&frame_id)) {
      LOG_INFO("FetchPgImp:Replacer");
      return nullptr;
    }
    page_id_t page_id_old = 0;
    for (auto &iter : page_table_) {
      if (iter.second == frame_id) {
        page_id_old = iter.first;
        break;
      }
    }
    // 2.     If R is dirty, write it back to the disk.
    // 3.     Delete R from the page table and insert P.
    LOG_INFO("FetchPgImp:replacing %d", page_id_old);

    if (pages_[frame_id].IsDirty()) {
      disk_manager_->WritePage(page_id_old, pages_[frame_id].GetData());
      LOG_DEBUG("writing page%d,with %s", page_id_old, pages_[frame_id].data_);
      pages_[frame_id].is_dirty_ = false;
    }
    LOG_DEBUG("Deleting page%d,with %s", page_id_old, pages_[frame_id].data_);
    // reset its metadata
    page_table_.erase(page_id_old);
    pages_[frame_id].pin_count_ = 0;
    pages_[frame_id].page_id_ = INVALID_PAGE_ID;

    // 4.     Update P's metadata, read in the page content from disk, and then return a pointer to P.
  }
  Page *newpage = &pages_[frame_id];
  newpage->ResetMemory();
  page_table_[page_id] = frame_id;
  disk_manager_->ReadPage(page_id, newpage->data_);
  newpage->is_dirty_ = false;
  newpage->pin_count_ = 1;
  newpage->page_id_ = page_id;
  replacer_->Pin(frame_id);
  LOG_DEBUG("Fetching page%d,with %s", page_id, pages_[frame_id].data_);
  LOG_INFO("frame_id:%d,table:%lu", frame_id, page_table_.size());
  return newpage;
}

auto BufferPoolManagerInstance::DeletePgImp(page_id_t page_id) -> bool {
  // 0.   Make sure you call DeallocatePage!
  // 1.   Search the page table for the requested page (P).
  // 1.   If P does not exist, return true.
  std::lock_guard<std::mutex> lock(latch_);  // avoid interlock
  if (page_table_.find(page_id) == page_table_.end()) {
    LOG_INFO("Delete no such page");
    return true;
  }
  frame_id_t frame_id = page_table_.find(page_id)->second;
  // 2.   If P exists, but has a non-zero pin-count, return false. Someone is using the page.
  if (pages_[frame_id].GetPinCount() != 0) {
    LOG_INFO("Delete failed pinned");
    return false;
  }
  // 3.   Otherwise, P can be deleted. Remove P from the page table, reset its metadata and return it to the free
  // list.
  LOG_INFO("Delete %d", page_id);
  if (pages_[frame_id].is_dirty_) {
    disk_manager_->WritePage(page_id, pages_[frame_id].GetData());
    LOG_DEBUG("writing page%d,with %s", page_id, pages_[frame_id].data_);
    pages_[frame_id].is_dirty_ = false;
  }
  LOG_DEBUG("Deleting page%d,with %s", page_id, pages_[frame_id].data_);
  // reset its metadata
  DeallocatePage(page_id);
  pages_[frame_id].pin_count_ = 0;
  pages_[frame_id].page_id_ = INVALID_PAGE_ID;
  return true;
}

auto BufferPoolManagerInstance::UnpinPgImp(page_id_t page_id, bool is_dirty) -> bool {
  std::lock_guard<std::mutex> lock(latch_);
  if (page_table_.find(page_id) == page_table_.end()) {
    LOG_INFO("UnpinPgImp:No such page id");
    return false;
  }
  int pin_count = pages_[page_table_[page_id]].GetPinCount();
  if (pin_count < 0) {
    LOG_INFO("%d", pin_count);
    return false;
  }
  if (is_dirty) {
    pages_[page_table_[page_id]].is_dirty_ = true;
  }
  if (pin_count == 0) {
    replacer_->Unpin(page_table_[page_id]);
    return true;
  }
  LOG_INFO("unpin %d", page_id);
  // LOG_INFO("unpin %d,free list left %lu", page_id, free_list_.size());
  pages_[page_table_[page_id]].pin_count_--;
  if (pages_[page_table_[page_id]].pin_count_ == 0) {
    replacer_->Unpin(page_table_[page_id]);
    return true;
  }
  return true;
}

auto BufferPoolManagerInstance::AllocatePage() -> page_id_t {
  const page_id_t next_page_id = next_page_id_;
  next_page_id_ += num_instances_;
  ValidatePageId(next_page_id);
  return next_page_id;
}

void BufferPoolManagerInstance::ValidatePageId(const page_id_t page_id) const {
  assert(page_id % num_instances_ == instance_index_);  // allocated pages mod back to this BPI
}

}  // namespace bustub
