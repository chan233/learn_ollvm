PROJECT(main)

# g++ 参数
SET (CMAKE_C_COMPILER             "/home/dehua/Desktop/llvm/llvm-project/build-release/bin/clang") # 填写绝对路径

SET (CMAKE_CXX_COMPILER             "/home/dehua/Desktop/llvm/llvm-project/build-release/bin/clang++") # 填写绝对路径
# SET (CMAKE_CXX_FLAGS                "-Xclang -load -Xclang /home/dehua/Desktop/llvm/learn_ollvm/build/stringobf/libLLVMMStringobf.so -emit-llvm")

set(
        SOURCES
        main.c
)
add_executable(main ${SOURCES})