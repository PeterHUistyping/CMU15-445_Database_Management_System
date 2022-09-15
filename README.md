# CMU15-445_Database_Project
 Database Design Project (C++)  
 Course Link:  

 https://15445.courses.cs.cmu.edu/fall2021/assignments.html  

 Project Link:  

 https://github.com/cmu-db/bustub  

## Environment
Mac & Linux_Ubuntu (VMware)

## Tools
CMake, Google C++ Style Guide, Unit Testing, etc  

## Gradescope Test File
Print out the test file to get the whole Gradescope test file!  
    FILE *out;
    out = fopen("/autograder/bustub/test/buffer/grading_buffer_pool_manager_instance_test.cpp", "r");  
    // out = fopen("../test/buffer/buffer_pool_manager_instance_test.cpp", "r");
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

## Debug(to be done)
codelldb:  
On launch.json:  "program": "${workspaceFolder}/build/test/starter_test",  
    {
        // Use IntelliSense to learn about possible attributes.
        // Hover to view descriptions of existing attributes.
        // For more information, visit: https://go.microsoft.com/fwlink/?linkid=830387
        "version": "0.2.0",
        "configurations": [
            {
                "type": "lldb",
                "request": "launch",
                "name": "Debug",
                "program": "${workspaceFolder}/build/test/starter_test",
                "args": [],
                "cwd": "${workspaceFolder}"
    } ]
    }

## Project 0
![Pr0](bustub/submission/Photo/Project0_GS.png)  

Keypoint used in C++:  
Template -- template <typename T>  
Exception  

How to create m*n arrays [the 2nd way-inherit]  

Google C++ Style Guide  
    Naming_Class Data Members need a trailing underscore.  

    ** no viable conversion from   
    std::unique_ptr<bustub::RowMatrix<int> : temp   
    const RowMatrix<T> * : temp.get()  
    
    Consider replacing 'unsigned long' with 'uint64' uint64_t  
    C-style casts are discouraged; use static_cast/const_cast/reinterpret_cast  
    Convert one int ->int64_t  
    const uint64_t size = (static_cast<uint64_t>(rows_) * cols_)  
    

![Check-clang-tidy](bustub/submission/Photo/check-clang-tidy.png)  
![Pr0](bustub/submission/Photo/Project0_1.png)
 
