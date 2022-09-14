//===----------------------------------------------------------------------===//
//
//                         BusTub
//
// lru_replacer.cpp
//
// Identification: src/buffer/lru_replacer.cpp
//
// Copyright (c) 2015-2019, Carnegie Mellon University Database Group
//
//===----------------------------------------------------------------------===//

#include "buffer/lru_replacer.h"
#include "common/logger.h"
namespace bustub {

LRUReplacer::LRUReplacer(size_t num_pages) { num_pages_ = num_pages; }

LRUReplacer::~LRUReplacer() = default;

auto LRUReplacer::Victim(frame_id_t *frame_id) -> bool {
  latch_.lock();
  if (Size() == 0) {
    frame_id = nullptr;
    latch_.unlock();
    return false;
  }
  // frame_id = &(victimize_list_.front());
  *frame_id = victimize_list_.front();
  victimize_list_.pop_front();
  lru_.erase(*frame_id);
  latch_.unlock();
  return true;
}

void LRUReplacer::Pin(frame_id_t frame_id) {
  latch_.lock();
  // check whether exist or not
  if (lru_.find(frame_id) == lru_.end()) {
    latch_.unlock();
    return;
  }
  victimize_list_.remove(frame_id);
  lru_[frame_id] = 1;
  // lru_.emplace(frame_id, 1);
  latch_.unlock();
}

void LRUReplacer::Unpin(frame_id_t frame_id) {
  latch_.lock();
  // delete from  pinned_list_
  // check whether exist or not
  if (lru_.find(frame_id) != lru_.end() && lru_.find(frame_id)->second == 0) {  // already exist
    latch_.unlock();
    return;
  }
  LOG_DEBUG("unpin:%d", frame_id);
  lru_.emplace(frame_id, 0);
  victimize_list_.push_back(frame_id);
  latch_.unlock();
}

auto LRUReplacer::Size() -> size_t { return victimize_list_.size(); }

}  // namespace bustub
