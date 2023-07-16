## Environment
Mac & Linux_Ubuntu (VMware)

## Tools
CMake, Google C++ Style Guide, Unit Testing, etc  

## Gradescope Test File
Print out the test file to get the whole Gradescope test file!  
    FILE *out;  
    out = fopen("/autograder/bustub/test/buffer/  grading_buffer_pool_manager_instance_test.cpp", "r");  
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
    char buffer[ MAX_PATH ];  
    std::cout << getcwd(buffer, MAX_PATH);  

## Debug 
"common/logger.h"  
or
codelldb:(to be done)  
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
