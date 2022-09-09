
b''
b''
b''
b''
b'-- The C compiler identification is GNU 7.5.0
-- The CXX compiler identification is GNU 7.5.0
-- Check for working C compiler: /usr/bin/cc
-- Check for working C compiler: /usr/bin/cc -- works
-- Detecting C compiler ABI info
-- Detecting C compiler ABI info - done
-- Detecting C compile features
-- Detecting C compile features - done
-- Check for working CXX compiler: /usr/bin/c++
-- Check for working CXX compiler: /usr/bin/c++ -- works
-- Detecting CXX compiler ABI info
-- Detecting CXX compiler ABI info - done
-- Detecting CXX compile features
-- Detecting CXX compile features - done
-- BusTub/main found clang-format at /usr/bin/clang-format-8
-- BusTub/main found clang-tidy at /usr/bin/clang-tidy-8
-- BusTub/main found cpplint at /autograder/bustub/build_support/cpplint.py
-- Configuring done
-- Generating done
-- Build files have been written to: /autograder/bustub/build/googletest-download
Scanning dependencies of target googletest
[ 11%] Creating directories for \'googletest\'
[ 22%] Performing download step (git clone) for \'googletest\'
Cloning into \'googletest-src\'...
Already on \'main\'
Your branch is up to date with \'origin/main\'.
[ 33%] No patch step for \'googletest\'
[ 44%] Performing update step for \'googletest\'
Current branch main is up to date.
[ 55%] No configure step for \'googletest\'
[ 66%] No build step for \'googletest\'
[ 77%] No install step for \'googletest\'
[ 88%] No test step for \'googletest\'
[100%] Completed \'googletest\'
[100%] Built target googletest
-- Found PythonInterp: /usr/bin/python (found version "2.7.17") 
-- Looking for pthread.h
-- Looking for pthread.h - found
-- Looking for pthread_create
-- Looking for pthread_create - not found
-- Looking for pthread_create in pthreads
-- Looking for pthread_create in pthreads - not found
-- Looking for pthread_create in pthread
-- Looking for pthread_create in pthread - found
-- Found Threads: TRUE  
-- CMAKE_CXX_FLAGS:  -fPIC -Wall -Wextra -Werror -march=native -Wno-unused-parameter -Wno-attributes
-- CMAKE_CXX_FLAGS_DEBUG: -g -O0 -ggdb -fsanitize=address -fno-omit-frame-pointer -fno-optimize-sibling-calls
-- CMAKE_EXE_LINKER_FLAGS:  -fPIC
-- CMAKE_SHARED_LINKER_FLAGS:  -fPIC
-- BusTub/test found valgrind at /usr/bin/valgrind
-- Configuring done
-- Generating done
-- Build files have been written to: /autograder/bustub/build
'
b'Scanning dependencies of target thirdparty_murmur3
Scanning dependencies of target gtest
[  2%] Building CXX object src/CMakeFiles/thirdparty_murmur3.dir/__/third_party/murmur3/MurmurHash3.cpp.o
[  5%] Building CXX object googletest-build/googletest/CMakeFiles/gtest.dir/src/gtest-all.cc.o
[  5%] Linking CXX shared library ../lib/libthirdparty_murmur3.so
[  5%] Built target thirdparty_murmur3
Scanning dependencies of target bustub_shared
[  5%] Building CXX object src/CMakeFiles/bustub_shared.dir/buffer/buffer_pool_manager_instance.cpp.o
[  7%] Building CXX object src/CMakeFiles/bustub_shared.dir/buffer/clock_replacer.cpp.o
[ 10%] Building CXX object src/CMakeFiles/bustub_shared.dir/buffer/lru_replacer.cpp.o
[ 10%] Building CXX object src/CMakeFiles/bustub_shared.dir/buffer/parallel_buffer_pool_manager.cpp.o
[ 13%] Building CXX object src/CMakeFiles/bustub_shared.dir/catalog/column.cpp.o
[ 13%] Building CXX object src/CMakeFiles/bustub_shared.dir/catalog/schema.cpp.o
[ 15%] Building CXX object src/CMakeFiles/bustub_shared.dir/catalog/table_generator.cpp.o
[ 15%] Linking CXX shared library ../../lib/libgtest.so
[ 15%] Built target gtest
[ 15%] Building CXX object src/CMakeFiles/bustub_shared.dir/common/config.cpp.o
Scanning dependencies of target gmock
[ 15%] Building CXX object googletest-build/googlemock/CMakeFiles/gmock.dir/src/gmock-all.cc.o
[ 18%] Building CXX object src/CMakeFiles/bustub_shared.dir/common/util/string_util.cpp.o
[ 18%] Building CXX object src/CMakeFiles/bustub_shared.dir/concurrency/lock_manager.cpp.o
[ 21%] Building CXX object src/CMakeFiles/bustub_shared.dir/concurrency/transaction_manager.cpp.o
[ 23%] Linking CXX shared library ../../lib/libgmock.so
[ 23%] Built target gmock
[ 23%] Building CXX object src/CMakeFiles/bustub_shared.dir/container/hash/extendible_hash_table.cpp.o
Scanning dependencies of target gtest_main
[ 26%] Building CXX object googletest-build/googletest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.o
[ 28%] Building CXX object src/CMakeFiles/bustub_shared.dir/container/hash/linear_probe_hash_table.cpp.o
[ 31%] Building CXX object src/CMakeFiles/bustub_shared.dir/execution/aggregation_executor.cpp.o
[ 31%] Linking CXX shared library ../../lib/libgtest_main.so
[ 31%] Built target gtest_main
[ 31%] Building CXX object src/CMakeFiles/bustub_shared.dir/execution/delete_executor.cpp.o
[ 34%] Building CXX object src/CMakeFiles/bustub_shared.dir/execution/distinct_executor.cpp.o
Scanning dependencies of target gmock_main
[ 36%] Building CXX object googletest-build/googlemock/CMakeFiles/gmock_main.dir/src/gmock_main.cc.o
[ 36%] Building CXX object src/CMakeFiles/bustub_shared.dir/execution/executor_factory.cpp.o
[ 36%] Linking CXX shared library ../../lib/libgmock_main.so
[ 36%] Built target gmock_main
[ 39%] Building CXX object src/CMakeFiles/bustub_shared.dir/execution/hash_join_executor.cpp.o
[ 39%] Building CXX object src/CMakeFiles/bustub_shared.dir/execution/index_scan_executor.cpp.o
[ 42%] Building CXX object src/CMakeFiles/bustub_shared.dir/execution/insert_executor.cpp.o
[ 42%] Building CXX object src/CMakeFiles/bustub_shared.dir/execution/limit_executor.cpp.o
[ 44%] Building CXX object src/CMakeFiles/bustub_shared.dir/execution/mock_scan_executor.cpp.o
[ 44%] Building CXX object src/CMakeFiles/bustub_shared.dir/execution/nested_index_join_executor.cpp.o
[ 47%] Building CXX object src/CMakeFiles/bustub_shared.dir/execution/nested_loop_join_executor.cpp.o
[ 50%] Building CXX object src/CMakeFiles/bustub_shared.dir/execution/seq_scan_executor.cpp.o
[ 50%] Building CXX object src/CMakeFiles/bustub_shared.dir/execution/update_executor.cpp.o
[ 52%] Building CXX object src/CMakeFiles/bustub_shared.dir/recovery/checkpoint_manager.cpp.o
[ 52%] Building CXX object src/CMakeFiles/bustub_shared.dir/recovery/log_manager.cpp.o
[ 55%] Building CXX object src/CMakeFiles/bustub_shared.dir/recovery/log_recovery.cpp.o
[ 55%] Building CXX object src/CMakeFiles/bustub_shared.dir/storage/disk/disk_manager.cpp.o
[ 57%] Building CXX object src/CMakeFiles/bustub_shared.dir/storage/disk/disk_manager_memory.cpp.o
[ 57%] Building CXX object src/CMakeFiles/bustub_shared.dir/storage/index/b_plus_tree.cpp.o
[ 60%] Building CXX object src/CMakeFiles/bustub_shared.dir/storage/index/b_plus_tree_index.cpp.o
[ 60%] Building CXX object src/CMakeFiles/bustub_shared.dir/storage/index/extendible_hash_table_index.cpp.o
[ 63%] Building CXX object src/CMakeFiles/bustub_shared.dir/storage/index/index_iterator.cpp.o
[ 65%] Building CXX object src/CMakeFiles/bustub_shared.dir/storage/index/linear_probe_hash_table_index.cpp.o
[ 65%] Building CXX object src/CMakeFiles/bustub_shared.dir/storage/page/b_plus_tree_internal_page.cpp.o
[ 68%] Building CXX object src/CMakeFiles/bustub_shared.dir/storage/page/b_plus_tree_leaf_page.cpp.o
[ 68%] Building CXX object src/CMakeFiles/bustub_shared.dir/storage/page/b_plus_tree_page.cpp.o
[ 71%] Building CXX object src/CMakeFiles/bustub_shared.dir/storage/page/hash_table_block_page.cpp.o
[ 71%] Building CXX object src/CMakeFiles/bustub_shared.dir/storage/page/hash_table_bucket_page.cpp.o
[ 73%] Building CXX object src/CMakeFiles/bustub_shared.dir/storage/page/hash_table_directory_page.cpp.o
[ 73%] Building CXX object src/CMakeFiles/bustub_shared.dir/storage/page/hash_table_header_page.cpp.o
[ 76%] Building CXX object src/CMakeFiles/bustub_shared.dir/storage/page/header_page.cpp.o
[ 76%] Building CXX object src/CMakeFiles/bustub_shared.dir/storage/page/table_page.cpp.o
[ 78%] Building CXX object src/CMakeFiles/bustub_shared.dir/storage/table/table_heap.cpp.o
[ 78%] Building CXX object src/CMakeFiles/bustub_shared.dir/storage/table/table_iterator.cpp.o
[ 81%] Building CXX object src/CMakeFiles/bustub_shared.dir/storage/table/tuple.cpp.o
[ 84%] Building CXX object src/CMakeFiles/bustub_shared.dir/type/bigint_type.cpp.o
[ 84%] Building CXX object src/CMakeFiles/bustub_shared.dir/type/boolean_type.cpp.o
[ 86%] Building CXX object src/CMakeFiles/bustub_shared.dir/type/decimal_type.cpp.o
[ 86%] Building CXX object src/CMakeFiles/bustub_shared.dir/type/integer_parent_type.cpp.o
[ 89%] Building CXX object src/CMakeFiles/bustub_shared.dir/type/integer_type.cpp.o
[ 89%] Building CXX object src/CMakeFiles/bustub_shared.dir/type/smallint_type.cpp.o
[ 92%] Building CXX object src/CMakeFiles/bustub_shared.dir/type/timestamp_type.cpp.o
[ 92%] Building CXX object src/CMakeFiles/bustub_shared.dir/type/tinyint_type.cpp.o
[ 94%] Building CXX object src/CMakeFiles/bustub_shared.dir/type/type.cpp.o
[ 94%] Building CXX object src/CMakeFiles/bustub_shared.dir/type/value.cpp.o
[ 97%] Building CXX object src/CMakeFiles/bustub_shared.dir/type/varlen_type.cpp.o
[100%] Linking CXX shared library ../lib/libbustub_shared.so
[100%] Built target bustub_shared
'
b'Scanning dependencies of target check-format
Built target check-format
'
b'Scanning dependencies of target check-lint
Built target check-lint
'
b"[  2%] Built target thirdparty_murmur3
[ 97%] Built target bustub_shared
[100%] Built target gtest
Scanning dependencies of target check-clang-tidy
Enabled checks:
    bugprone-argument-comment
    bugprone-assert-side-effect
    bugprone-bool-pointer-implicit-conversion
    bugprone-copy-constructor-init
    bugprone-dangling-handle
    bugprone-exception-escape
    bugprone-fold-init-type
    bugprone-forward-declaration-namespace
    bugprone-forwarding-reference-overload
    bugprone-inaccurate-erase
    bugprone-incorrect-roundings
    bugprone-integer-division
    bugprone-lambda-function-name
    bugprone-macro-parentheses
    bugprone-macro-repeated-side-effects
    bugprone-misplaced-operator-in-strlen-in-alloc
    bugprone-misplaced-widening-cast
    bugprone-move-forwarding-reference
    bugprone-multiple-statement-macro
    bugprone-narrowing-conversions
    bugprone-parent-virtual-call
    bugprone-sizeof-container
    bugprone-sizeof-expression
    bugprone-string-constructor
    bugprone-string-integer-assignment
    bugprone-string-literal-with-embedded-nul
    bugprone-suspicious-enum-usage
    bugprone-suspicious-memset-usage
    bugprone-suspicious-missing-comma
    bugprone-suspicious-semicolon
    bugprone-suspicious-string-compare
    bugprone-swapped-arguments
    bugprone-terminating-continue
    bugprone-throw-keyword-missing
    bugprone-undefined-memory-manipulation
    bugprone-undelegated-constructor
    bugprone-unused-raii
    bugprone-unused-return-value
    bugprone-use-after-move
    bugprone-virtual-near-miss
    clang-analyzer-apiModeling.StdCLibraryFunctions
    clang-analyzer-apiModeling.TrustNonnull
    clang-analyzer-apiModeling.google.GTest
    clang-analyzer-core.CallAndMessage
    clang-analyzer-core.DivideZero
    clang-analyzer-core.DynamicTypePropagation
    clang-analyzer-core.NonNullParamChecker
    clang-analyzer-core.NonnilStringConstants
    clang-analyzer-core.NullDereference
    clang-analyzer-core.StackAddressEscape
    clang-analyzer-core.UndefinedBinaryOperatorResult
    clang-analyzer-core.VLASize
    clang-analyzer-core.builtin.BuiltinFunctions
    clang-analyzer-core.builtin.NoReturnFunctions
    clang-analyzer-core.uninitialized.ArraySubscript
    clang-analyzer-core.uninitialized.Assign
    clang-analyzer-core.uninitialized.Branch
    clang-analyzer-core.uninitialized.CapturedBlockVariable
    clang-analyzer-core.uninitialized.UndefReturn
    clang-analyzer-cplusplus.InnerPointer
    clang-analyzer-cplusplus.Move
    clang-analyzer-cplusplus.SelfAssignment
    clang-analyzer-deadcode.DeadStores
    clang-analyzer-nullability.NullPassedToNonnull
    clang-analyzer-nullability.NullReturnedFromNonnull
    clang-analyzer-nullability.NullableDereferenced
    clang-analyzer-nullability.NullablePassedToNonnull
    clang-analyzer-nullability.NullableReturnedFromNonnull
    clang-analyzer-optin.cplusplus.VirtualCall
    clang-analyzer-optin.mpi.MPI-Checker
    clang-analyzer-optin.osx.cocoa.localizability.EmptyLocalizationContextChecker
    clang-analyzer-optin.osx.cocoa.localizability.NonLocalizedStringChecker
    clang-analyzer-optin.performance.GCDAntipattern
    clang-analyzer-optin.performance.Padding
    clang-analyzer-optin.portability.UnixAPI
    clang-analyzer-osx.API
    clang-analyzer-osx.NumberObjectConversion
    clang-analyzer-osx.OSObjectRetainCount
    clang-analyzer-osx.ObjCProperty
    clang-analyzer-osx.SecKeychainAPI
    clang-analyzer-osx.cocoa.AtSync
    clang-analyzer-osx.cocoa.AutoreleaseWrite
    clang-analyzer-osx.cocoa.ClassRelease
    clang-analyzer-osx.cocoa.Dealloc
    clang-analyzer-osx.cocoa.IncompatibleMethodTypes
    clang-analyzer-osx.cocoa.Loops
    clang-analyzer-osx.cocoa.MissingSuperCall
    clang-analyzer-osx.cocoa.NSAutoreleasePool
    clang-analyzer-osx.cocoa.NSError
    clang-analyzer-osx.cocoa.NilArg
    clang-analyzer-osx.cocoa.NonNilReturnValue
    clang-analyzer-osx.cocoa.ObjCGenerics
    clang-analyzer-osx.cocoa.RetainCount
    clang-analyzer-osx.cocoa.RunLoopAutoreleaseLeak
    clang-analyzer-osx.cocoa.SelfInit
    clang-analyzer-osx.cocoa.SuperDealloc
    clang-analyzer-osx.cocoa.UnusedIvars
    clang-analyzer-osx.cocoa.VariadicMethodTypes
    clang-analyzer-osx.coreFoundation.CFError
    clang-analyzer-osx.coreFoundation.CFNumber
    clang-analyzer-osx.coreFoundation.CFRetainRelease
    clang-analyzer-osx.coreFoundation.containers.OutOfBounds
    clang-analyzer-osx.coreFoundation.containers.PointerSizedValues
    clang-analyzer-security.FloatLoopCounter
    clang-analyzer-security.insecureAPI.UncheckedReturn
    clang-analyzer-security.insecureAPI.bcmp
    clang-analyzer-security.insecureAPI.bcopy
    clang-analyzer-security.insecureAPI.bzero
    clang-analyzer-security.insecureAPI.getpw
    clang-analyzer-security.insecureAPI.gets
    clang-analyzer-security.insecureAPI.mkstemp
    clang-analyzer-security.insecureAPI.mktemp
    clang-analyzer-security.insecureAPI.rand
    clang-analyzer-security.insecureAPI.strcpy
    clang-analyzer-security.insecureAPI.vfork
    clang-analyzer-unix.API
    clang-analyzer-unix.Malloc
    clang-analyzer-unix.MallocSizeof
    clang-analyzer-unix.MismatchedDeallocator
    clang-analyzer-unix.Vfork
    clang-analyzer-unix.cstring.BadSizeArg
    clang-analyzer-unix.cstring.NullArg
    clang-analyzer-valist.CopyToSelf
    clang-analyzer-valist.Uninitialized
    clang-analyzer-valist.Unterminated
    google-build-explicit-make-pair
    google-build-namespaces
    google-build-using-namespace
    google-default-arguments
    google-explicit-constructor
    google-global-names-in-headers
    google-objc-avoid-throwing-exception
    google-objc-function-naming
    google-objc-global-variable-declaration
    google-readability-braces-around-statements
    google-readability-casting
    google-readability-function-size
    google-readability-namespace-comments
    google-readability-todo
    google-runtime-int
    google-runtime-operator
    google-runtime-references
    modernize-avoid-bind
    modernize-concat-nested-namespaces
    modernize-deprecated-headers
    modernize-deprecated-ios-base-aliases
    modernize-loop-convert
    modernize-make-shared
    modernize-make-unique
    modernize-pass-by-value
    modernize-raw-string-literal
    modernize-redundant-void-arg
    modernize-replace-auto-ptr
    modernize-replace-random-shuffle
    modernize-return-braced-init-list
    modernize-shrink-to-fit
    modernize-unary-static-assert
    modernize-use-bool-literals
    modernize-use-default-member-init
    modernize-use-emplace
    modernize-use-equals-default
    modernize-use-equals-delete
    modernize-use-noexcept
    modernize-use-nullptr
    modernize-use-override
    modernize-use-transparent-functors
    modernize-use-uncaught-exceptions
    modernize-use-using
    performance-faster-string-find
    performance-for-range-copy
    performance-implicit-conversion-in-loop
    performance-inefficient-algorithm
    performance-inefficient-string-concatenation
    performance-inefficient-vector-operation
    performance-move-const-arg
    performance-move-constructor-init
    performance-noexcept-move-constructor
    performance-type-promotion-in-math-fn
    performance-unnecessary-copy-initialization
    performance-unnecessary-value-param
    portability-simd-intrinsics
    readability-avoid-const-params-in-decls
    readability-braces-around-statements
    readability-const-return-type
    readability-container-size-empty
    readability-delete-null-pointer
    readability-deleted-default
    readability-else-after-return
    readability-function-size
    readability-identifier-naming
    readability-implicit-bool-conversion
    readability-inconsistent-declaration-parameter-name
    readability-isolate-declaration
    readability-misleading-indentation
    readability-misplaced-array-index
    readability-named-parameter
    readability-non-const-parameter
    readability-redundant-control-flow
    readability-redundant-declaration
    readability-redundant-function-ptr-dereference
    readability-redundant-member-init
    readability-redundant-preprocessor
    readability-redundant-smartptr-get
    readability-redundant-string-cstr
    readability-redundant-string-init
    readability-simplify-boolean-expr
    readability-simplify-subscript-expr
    readability-static-accessed-through-instance
    readability-static-definition-in-anonymous-namespace
    readability-string-compare
    readability-uniqueptr-delete-release
    readability-uppercase-literal-suffix


 Checking: /autograder/bustub/build/googletest-src/googlemock/src/gmock_main.cc
 Checking: /autograder/bustub/build/googletest-src/googlemock/src/gmock-all.cc
 Checking: /autograder/bustub/build/googletest-src/googletest/src/gtest_main.cc
 Checking: /autograder/bustub/build/googletest-src/googletest/src/gtest-all.cc
 Checking: /autograder/bustub/src/buffer/buffer_pool_manager_instance.cpp
 Checking: /autograder/bustub/src/buffer/clock_replacer.cpp
 Checking: /autograder/bustub/src/buffer/lru_replacer.cpp
 Checking: /autograder/bustub/src/buffer/parallel_buffer_pool_manager.cpp
 Checking: /autograder/bustub/src/catalog/column.cpp
 Checking: /autograder/bustub/src/catalog/schema.cpp
 Checking: /autograder/bustub/src/catalog/table_generator.cpp
 Checking: /autograder/bustub/src/common/config.cpp
 Checking: /autograder/bustub/src/common/util/string_util.cpp
 Checking: /autograder/bustub/src/concurrency/lock_manager.cpp
 Checking: /autograder/bustub/src/concurrency/transaction_manager.cpp
 Checking: /autograder/bustub/src/container/hash/extendible_hash_table.cpp
 Checking: /autograder/bustub/src/container/hash/linear_probe_hash_table.cpp
 Checking: /autograder/bustub/src/execution/aggregation_executor.cpp
 Checking: /autograder/bustub/src/execution/delete_executor.cpp
 Checking: /autograder/bustub/src/execution/distinct_executor.cpp
 Checking: /autograder/bustub/src/execution/executor_factory.cpp
 Checking: /autograder/bustub/src/execution/hash_join_executor.cpp
 Checking: /autograder/bustub/src/execution/index_scan_executor.cpp
 Checking: /autograder/bustub/src/execution/insert_executor.cpp
 Checking: /autograder/bustub/src/execution/limit_executor.cpp
 Checking: /autograder/bustub/src/execution/mock_scan_executor.cpp
 Checking: /autograder/bustub/src/execution/nested_index_join_executor.cpp
 Checking: /autograder/bustub/src/execution/nested_loop_join_executor.cpp
 Checking: /autograder/bustub/src/execution/seq_scan_executor.cpp
 Checking: /autograder/bustub/src/execution/update_executor.cpp
 Checking: /autograder/bustub/src/recovery/checkpoint_manager.cpp
 Checking: /autograder/bustub/src/recovery/log_manager.cpp
 Checking: /autograder/bustub/src/recovery/log_recovery.cpp
 Checking: /autograder/bustub/src/storage/disk/disk_manager.cpp
 Checking: /autograder/bustub/src/storage/disk/disk_manager_memory.cpp
 Checking: /autograder/bustub/src/storage/index/b_plus_tree.cpp
 Checking: /autograder/bustub/src/storage/index/b_plus_tree_index.cpp
 Checking: /autograder/bustub/src/storage/index/extendible_hash_table_index.cpp
 Checking: /autograder/bustub/src/storage/index/index_iterator.cpp
 Checking: /autograder/bustub/src/storage/index/linear_probe_hash_table_index.cpp
 Checking: /autograder/bustub/src/storage/page/b_plus_tree_internal_page.cpp
 Checking: /autograder/bustub/src/storage/page/b_plus_tree_leaf_page.cpp
 Checking: /autograder/bustub/src/storage/page/b_plus_tree_page.cpp
 Checking: /autograder/bustub/src/storage/page/hash_table_block_page.cpp
 Checking: /autograder/bustub/src/storage/page/hash_table_bucket_page.cpp
 Checking: /autograder/bustub/src/storage/page/hash_table_directory_page.cpp
 Checking: /autograder/bustub/src/storage/page/hash_table_header_page.cpp
 Checking: /autograder/bustub/src/storage/page/header_page.cpp
 Checking: /autograder/bustub/src/storage/page/table_page.cpp
 Checking: /autograder/bustub/src/storage/table/table_heap.cpp
 Checking: /autograder/bustub/src/storage/table/table_iterator.cpp
 Checking: /autograder/bustub/src/storage/table/tuple.cpp
 Checking: /autograder/bustub/src/type/bigint_type.cpp
 Checking: /autograder/bustub/src/type/boolean_type.cpp
 Checking: /autograder/bustub/src/type/decimal_type.cpp
 Checking: /autograder/bustub/src/type/integer_parent_type.cpp
 Checking: /autograder/bustub/src/type/integer_type.cpp
 Checking: /autograder/bustub/src/type/smallint_type.cpp
 Checking: /autograder/bustub/src/type/timestamp_type.cpp
 Checking: /autograder/bustub/src/type/tinyint_type.cpp
 Checking: /autograder/bustub/src/type/type.cpp
 Checking: /autograder/bustub/src/type/value.cpp
 Checking: /autograder/bustub/src/type/varlen_type.cpp
 Checking: /autograder/bustub/third_party/murmur3/MurmurHash3.cpp
 Checking: /autograder/bustub/test/type/type_test.cpp
 Checking: /autograder/bustub/test/table/tuple_test.cpp
 Checking: /autograder/bustub/test/storage/tmp_tuple_page_test.cpp
 Checking: /autograder/bustub/test/storage/grading_b_plus_tree_memory_test.cpp
 Checking: /autograder/bustub/test/storage/grading_b_plus_tree_checkpoint_2_sequential_test.cpp
 Checking: /autograder/bustub/test/storage/grading_b_plus_tree_checkpoint_1_test.cpp
 Checking: /autograder/bustub/test/storage/grading_b_plus_tree_checkpoint_2_concurrent_test.cpp
 Checking: /autograder/bustub/test/storage/grading_b_plus_tree_bench_test.cpp
 Checking: /autograder/bustub/test/storage/b_plus_tree_insert_test.cpp
 Checking: /autograder/bustub/test/storage/grading_tmp_tuple_page_test.cpp
 Checking: /autograder/bustub/test/storage/b_plus_tree_concurrent_test.cpp
 Checking: /autograder/bustub/test/recovery/recovery_test.cpp
 Checking: /autograder/bustub/test/primer/starter_test.cpp
 Checking: /autograder/bustub/test/primer/grading_starter_test.cpp
 Checking: /autograder/bustub/test/execution/grading_update_executor_test.cpp
 Checking: /autograder/bustub/test/execution/grading_sequential_scan_executor_test.cpp
 Checking: /autograder/bustub/test/execution/grading_nested_loop_join_executor_test.cpp
/autograder/bustub/src/include/primer/p0_starter.h:294:25: error: invalid case style for variable 'tempAB' [readability-identifier-naming,-warnings-as-errors]
    const RowMatrix<T> *tempAB = temp;
                        ^~~~~~
                        temp_ab
/autograder/bustub/src/include/primer/p0_starter.h:294:25: error: no viable conversion from 'std::unique_ptr<bustub::RowMatrix<int>, std::default_delete<bustub::RowMatrix<int> > >' to 'const RowMatrix<int> *' [clang-diagnostic-error]
/autograder/bustub/test/primer/grading_starter_test.cpp:219:43: note: in instantiation of member function 'bustub::RowMatrixOperations<int>::GEMM' requested here
  auto result = RowMatrixOperations<int>::GEMM(matrix0.get(), matrix1.get(), matrix2.get());
                                          ^

 Checking: /autograder/bustub/test/recovery/grading_recovery_test.cpp
 Checking: /autograder/bustub/test/concurrency/grading_lock_manager_twopl_test.cpp
 Checking: /autograder/bustub/test/concurrency/grading_lock_manager_prevention_test.cpp
 Checking: /autograder/bustub/test/buffer/parallel_buffer_pool_manager_test.cpp
/autograder/bustub/src/include/primer/p0_starter.h:294:25: error: invalid case style for variable 'tempAB' [readability-identifier-naming,-warnings-as-errors]
    const RowMatrix<T> *tempAB = temp;
                        ^~~~~~
                        temp_ab

 Checking: /autograder/bustub/test/buffer/grading_parallel_buffer_pool_manager_test.cpp
 Checking: /autograder/bustub/test/buffer/grading_lru_replacer_test.cpp
 Checking: /autograder/bustub/test/execution/grading_executor_integrated_test.cpp
 Checking: /autograder/bustub/test/execution/grading_limit_executor_test.cpp
 Checking: /autograder/bustub/test/concurrency/grading_lock_manager_upgrade_test.cpp
 Checking: /autograder/bustub/test/concurrency/transaction_test.cpp
 Checking: /autograder/bustub/test/execution/grading_executor_benchmark_test.cpp
 Checking: /autograder/bustub/test/storage/disk_manager_test.cpp
 Checking: /autograder/bustub/test/buffer/buffer_pool_manager_instance_test.cpp
 Checking: /autograder/bustub/test/storage/b_plus_tree_print_test.cpp
 Checking: /autograder/bustub/test/buffer/clock_replacer_test.cpp
 Checking: /autograder/bustub/test/execution/grading_distinct_executor_test.cpp
 Checking: /autograder/bustub/test/buffer/grading_buffer_pool_manager_instance_test.cpp
 Checking: /autograder/bustub/test/buffer/lru_replacer_test.cpp
 Checking: /autograder/bustub/test/storage/grading_b_plus_tree_test.cpp
 Checking: /autograder/bustub/test/buffer/grading_leaderboard_test.cpp
 Checking: /autograder/bustub/test/container/grading_hash_table_verification_test.cpp
 Checking: /autograder/bustub/test/concurrency/grading_rollback_test.cpp
 Checking: /autograder/bustub/test/concurrency/grading_transaction_test.cpp
 Checking: /autograder/bustub/test/container/hash_table_page_test.cpp
 Checking: /autograder/bustub/test/concurrency/lock_manager_test.cpp
 Checking: /autograder/bustub/test/storage/b_plus_tree_delete_test.cpp
 Checking: /autograder/bustub/test/container/grading_hash_table_concurrent_test.cpp
 Checking: /autograder/bustub/test/concurrency/grading_lock_manager_basic_test.cpp
 Checking: /autograder/bustub/test/container/grading_hash_table_page_test.cpp
 Checking: /autograder/bustub/test/container/grading_hash_table_leaderboard_test.cpp
 Checking: /autograder/bustub/test/common/rwlatch_test.cpp
 Checking: /autograder/bustub/test/container/grading_hash_table_scale_test.cpp
 Checking: /autograder/bustub/test/container/grading_hash_table_test.cpp
 Checking: /autograder/bustub/test/container/hash_table_test.cpp
 Checking: /autograder/bustub/test/execution/grading_aggregation_executor_test.cpp
 Checking: /autograder/bustub/test/catalog/catalog_test.cpp
 Checking: /autograder/bustub/test/execution/grading_insert_executor_test.cpp
 Checking: /autograder/bustub/test/execution/grading_delete_executor_test.cpp
 Checking: /autograder/bustub/test/execution/executor_test.cpp
 Checking: /autograder/bustub/test/execution/grading_hash_join_executor_test.cppThe files that failed were:
[u'/autograder/bustub/test/primer/grading_starter_test.cpp',
 u'/autograder/bustub/test/primer/starter_test.cpp']
Note that a failing .h file will fail all the .cpp files that include it.


CMakeFiles/check-clang-tidy.dir/build.make:57: recipe for target 'CMakeFiles/check-clang-tidy' failed
make[3]: *** [CMakeFiles/check-clang-tidy] Error 1
CMakeFiles/Makefile2:164: recipe for target 'CMakeFiles/check-clang-tidy.dir/all' failed
make[2]: *** [CMakeFiles/check-clang-tidy.dir/all] Error 2
CMakeFiles/Makefile2:171: recipe for target 'CMakeFiles/check-clang-tidy.dir/rule' failed
make[1]: *** [CMakeFiles/check-clang-tidy.dir/rule] Error 2
Makefile:214: recipe for target 'check-clang-tidy' failed
make: *** [check-clang-tidy] Error 2
"
Called process exited with 2
b"[  1%] Built target thirdparty_murmur3
[  2%] Built target gtest
[  3%] Built target gmock
[  4%] Built target gmock_main
[ 37%] Built target bustub_shared
Scanning dependencies of target grading_hash_join_executor_test
[ 38%] Building CXX object test/CMakeFiles/grading_hash_join_executor_test.dir/execution/grading_hash_join_executor_test.cpp.o
[ 38%] Linking CXX executable grading_hash_join_executor_test
[ 38%] Built target grading_hash_join_executor_test
Scanning dependencies of target type_test
[ 39%] Building CXX object test/CMakeFiles/type_test.dir/type/type_test.cpp.o
[ 40%] Linking CXX executable type_test
[ 40%] Built target type_test
Scanning dependencies of target tuple_test
[ 41%] Building CXX object test/CMakeFiles/tuple_test.dir/table/tuple_test.cpp.o
[ 41%] Linking CXX executable tuple_test
[ 41%] Built target tuple_test
Scanning dependencies of target tmp_tuple_page_test
[ 42%] Building CXX object test/CMakeFiles/tmp_tuple_page_test.dir/storage/tmp_tuple_page_test.cpp.o
[ 42%] Linking CXX executable tmp_tuple_page_test
[ 42%] Built target tmp_tuple_page_test
Scanning dependencies of target grading_b_plus_tree_memory_test
[ 42%] Building CXX object test/CMakeFiles/grading_b_plus_tree_memory_test.dir/storage/grading_b_plus_tree_memory_test.cpp.o
[ 43%] Linking CXX executable grading_b_plus_tree_memory_test
[ 43%] Built target grading_b_plus_tree_memory_test
Scanning dependencies of target grading_b_plus_tree_checkpoint_2_sequential_test
[ 44%] Building CXX object test/CMakeFiles/grading_b_plus_tree_checkpoint_2_sequential_test.dir/storage/grading_b_plus_tree_checkpoint_2_sequential_test.cpp.o
[ 45%] Linking CXX executable grading_b_plus_tree_checkpoint_2_sequential_test
[ 45%] Built target grading_b_plus_tree_checkpoint_2_sequential_test
Scanning dependencies of target grading_b_plus_tree_checkpoint_1_test
[ 46%] Building CXX object test/CMakeFiles/grading_b_plus_tree_checkpoint_1_test.dir/storage/grading_b_plus_tree_checkpoint_1_test.cpp.o
[ 46%] Linking CXX executable grading_b_plus_tree_checkpoint_1_test
[ 46%] Built target grading_b_plus_tree_checkpoint_1_test
Scanning dependencies of target grading_b_plus_tree_checkpoint_2_concurrent_test
[ 47%] Building CXX object test/CMakeFiles/grading_b_plus_tree_checkpoint_2_concurrent_test.dir/storage/grading_b_plus_tree_checkpoint_2_concurrent_test.cpp.o
[ 47%] Linking CXX executable grading_b_plus_tree_checkpoint_2_concurrent_test
[ 47%] Built target grading_b_plus_tree_checkpoint_2_concurrent_test
Scanning dependencies of target grading_b_plus_tree_bench_test
[ 48%] Building CXX object test/CMakeFiles/grading_b_plus_tree_bench_test.dir/storage/grading_b_plus_tree_bench_test.cpp.o
[ 48%] Linking CXX executable grading_b_plus_tree_bench_test
[ 48%] Built target grading_b_plus_tree_bench_test
Scanning dependencies of target b_plus_tree_insert_test
[ 48%] Building CXX object test/CMakeFiles/b_plus_tree_insert_test.dir/storage/b_plus_tree_insert_test.cpp.o
[ 49%] Linking CXX executable b_plus_tree_insert_test
[ 49%] Built target b_plus_tree_insert_test
Scanning dependencies of target grading_tmp_tuple_page_test
[ 49%] Building CXX object test/CMakeFiles/grading_tmp_tuple_page_test.dir/storage/grading_tmp_tuple_page_test.cpp.o
[ 50%] Linking CXX executable grading_tmp_tuple_page_test
[ 50%] Built target grading_tmp_tuple_page_test
Scanning dependencies of target b_plus_tree_concurrent_test
[ 50%] Building CXX object test/CMakeFiles/b_plus_tree_concurrent_test.dir/storage/b_plus_tree_concurrent_test.cpp.o
[ 51%] Linking CXX executable b_plus_tree_concurrent_test
[ 51%] Built target b_plus_tree_concurrent_test
Scanning dependencies of target recovery_test
[ 51%] Building CXX object test/CMakeFiles/recovery_test.dir/recovery/recovery_test.cpp.o
[ 52%] Linking CXX executable recovery_test
[ 52%] Built target recovery_test
Scanning dependencies of target starter_test
[ 53%] Building CXX object test/CMakeFiles/starter_test.dir/primer/starter_test.cpp.o
[ 53%] Linking CXX executable starter_test
[ 53%] Built target starter_test
Scanning dependencies of target grading_starter_test
[ 53%] Building CXX object test/CMakeFiles/grading_starter_test.dir/primer/grading_starter_test.cpp.o
In file included from /autograder/bustub/test/primer/grading_starter_test.cpp:19:0:
/autograder/bustub/src/include/primer/p0_starter.h: In instantiation of \xe2\x80\x98static std::unique_ptr<bustub::RowMatrix<T> > bustub::RowMatrixOperations<T>::GEMM(const bustub::RowMatrix<T>*, const bustub::RowMatrix<T>*, const bustub::RowMatrix<T>*) [with T = int]\xe2\x80\x99:
/autograder/bustub/test/primer/grading_starter_test.cpp:219:43:   required from here
/autograder/bustub/src/include/primer/p0_starter.h:294:25: error: cannot convert \xe2\x80\x98std::unique_ptr<bustub::RowMatrix<int>, std::default_delete<bustub::RowMatrix<int> > >\xe2\x80\x99 to \xe2\x80\x98const bustub::RowMatrix<int>*\xe2\x80\x99 in initialization
     const RowMatrix<T> *tempAB = temp;
                         ^~~~~~
test/CMakeFiles/grading_starter_test.dir/build.make:62: recipe for target 'test/CMakeFiles/grading_starter_test.dir/primer/grading_starter_test.cpp.o' failed
make[3]: *** [test/CMakeFiles/grading_starter_test.dir/primer/grading_starter_test.cpp.o] Error 1
CMakeFiles/Makefile2:1047: recipe for target 'test/CMakeFiles/grading_starter_test.dir/all' failed
make[2]: *** [test/CMakeFiles/grading_starter_test.dir/all] Error 2
CMakeFiles/Makefile2:1806: recipe for target 'test/CMakeFiles/build-tests.dir/rule' failed
make[1]: *** [test/CMakeFiles/build-tests.dir/rule] Error 2
Makefile:708: recipe for target 'build-tests' failed
make: *** [build-tests] Error 2
"
Called process exited with 2
Test Failed: False is not true : Build failed.