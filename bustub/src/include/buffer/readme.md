## Project 1  
Reference: Database-System-Concepts-7th-Edition Ch13.5 Database Buffer  

LRU Replacer  
Need to search in o(1), delete; Perform like a stack  
Data Structure: Hash map + Linked list  

Buffer Pool Manager Instance  
Data Structure:  
std::unordered_map< page_id_t, frame_id_t > page_table_;  
std::list< frame_id_t > free_list_;  

Class Pages (including content;page_id_ ;pin_count_ = 0; is_dirty_)  
Class BPM is friend class of Pages  
Class DiskManager(Responsible for writing page from BPM to Disk)  

Print out the test file to get the whole Gradescope test file!  
    /*Gradescope Test output*/  
    
    FILE *out;
    out = fopen("/autograder/bustub/test/buffer/grading_..._test.cpp", "r");  
    // out = fopen("../test/buffer/..._test.cpp", "r");  
    char ch;  
    while ((ch = getc(out)) != EOF) {  
        putchar(ch);  
    }  
    fclose(out);  

Get the path for testing on Gradescope using getcwd().      
    #include < direct.h >;   (Windows)  
    #include < unistd.h >;   (Linux/Mac)  
    int MAX_PATH = 10000;  
    char buffer[MAX_PATH];  
    std::cout << getcwd(buffer, MAX_PATH);    

latch_.lock();  
std::lock_guard< std::mutex > lock(latch_); //better as unlock automatically in Deconstructor  

Avoid calling another function with latch (interlock)  

ConcurrencyTest  
std::vector< std::thread > threads;  
std::shared_ptr< BufferPoolManagerInstance > bpm( )  
threads.push_back(std::thread([ &bpm ]( ){  


==5570==ERROR: AddressSanitizer: heap-use-after-free on address 0x000107101a90 at pc 0x000102bca6d0 bp 0x00016d8325b0 sp 0x00016d8325a8  

    // frame_id = &(victimize_list_.front());  
    *frame_id = victimize_list_.front();  

Clang-tidy:  don't use else after return;  

redundant boolean literal supplied to boolean operator x  
    if (replacer_->Victim(&frame_id) == false) {  
        ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~  
        !replacer_->Victim(&frame_id)  
 error: use range-based for loop instead  

    for (auto iter = page_table_.begin(); iter != page_table_.end(); ++iter) {  
    ^   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  
        (auto & iter : page_table_)  

error: missing username/bug in TODO  
  // TODO:reset its metadata  
  ^~~~~~~~~~~~~~~~~~~~~~~~~~  
  // TODO(unknown): reset its metadata  