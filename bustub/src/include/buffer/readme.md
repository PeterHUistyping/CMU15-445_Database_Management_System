## Project 1  
LRU Replacer  
Need to search in o(1), delete; Perform like a stack  
Data Structure: Hash map + Linked list  

Buffer Pool Manager Instance  
Data Structure:  
std::unordered_map<page_id_t, frame_id_t> page_table_;  
std::list<frame_id_t> free_list_;  

Class Pages (including content;meta data)  
Class DiskManager(Responsible for writing page from BPM to Disk)  


==5570==ERROR: AddressSanitizer: heap-use-after-free on address 0x000107101a90 at pc 0x000102bca6d0 bp 0x00016d8325b0 sp 0x00016d8325a8  

    // frame_id = &(victimize_list_.front());  
    *frame_id = victimize_list_.front();  

Clang-tidy:  
don't use else after return;  
