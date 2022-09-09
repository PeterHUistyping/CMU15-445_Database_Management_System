# CMU15-445_Database_Project
 Database Design Project (C++)
 Course Link:
 https://15445.courses.cs.cmu.edu/fall2021/assignments.html

## Environment
Mac & Linux_Ubuntu (VMWARE)

## Tools
CMake, Google C++ Style Guide, Unit Testing

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

    Convert one int ->int64_t
    const uint64_t size = (static_cast<uint64_t>(rows_) * cols_)

    Consider replacing 'unsigned long' with 'uint64' uint64_t

    C-style casts are discouraged; use static_cast/const_cast/reinterpret_cast

![Check-clang-tidy](bustub/submission/Photo/check-clang-tidy.png)
![Pr0](bustub/submission/Photo/Project0_1.png)

