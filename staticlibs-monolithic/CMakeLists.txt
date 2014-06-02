cmake_minimum_required(VERSION 2.8.11)

add_library(a liba/lib.cpp)
target_include_directories(a PUBLIC liba)
target_link_libraries(a PRIVATE b)

add_library(b libb/lib.cpp)
target_include_directories(b PUBLIC libb)

add_library(c libc/lib.cpp)
target_include_directories(c PUBLIC libc)

add_executable(finally main.cpp )
target_link_libraries(finally PRIVATE a c )
