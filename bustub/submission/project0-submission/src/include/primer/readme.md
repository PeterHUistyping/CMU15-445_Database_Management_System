# Project 0
Linux_Ubuntu (VMWARE)  
C++ Template template <typename T>  
CMake  
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

#ifndef __int8_t_defined  
# define __int8_t_defined  
typedef signed char             int8_t;   
typedef short int               int16_t;  
typedef int                     int32_t;  
# if __WORDSIZE == 64  
typedef long int                int64_t;  
# else  
__extension__  
typedef long long int           int64_t;  
# endif
#endif  
 
/* Unsigned.  */  
typedef unsigned char           uint8_t;  
typedef unsigned short int      uint16_t;  
#ifndef __uint32_t_defined  
typedef unsigned int            uint32_t;  
# define __uint32_t_defined  
#endif  
#if __WORDSIZE == 64  
typedef unsigned long int       uint64_t;  
#else  
__extension__
typedef unsigned long long int  uint64_t;  
#endif  

C-style casts are discouraged; use static_cast/const_cast/reinterpret_cast  

Use brace initialization to convert arithmetic types (e.g., int64_t{x}). This is the safest approach because code will not compile if conversion can result in information loss. The syntax is also concise.  

Use absl::implicit_cast to safely cast up a type hierarchy, e.g., casting a Foo* to a SuperclassOfFoo* or casting a Foo* to a const Foo*. C++ usually does this automatically but some situations need an explicit up-cast, such as use of the ?: operator.  

Use static_cast as the equivalent of a C-style cast that does value conversion, when you need to explicitly up-cast a pointer from a class to its superclass, or when you need to explicitly cast a pointer from a superclass to a subclass. In this last case, you must be sure your object is actually an instance of the subclass.  

Use const_cast to remove the const qualifier (see const).  

Use reinterpret_cast to do unsafe conversions of pointer types to and from integer and other pointer types, including void*. Use this only if you know what you are doing and you understand the aliasing issues. Also, consider the alternative absl::bit_cast.  

Use absl::bit_cast to interpret the raw bits of a value using a different type of the same size (a type pun), such as interpreting the bits of a double as int64_t.  



