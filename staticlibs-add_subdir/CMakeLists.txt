cmake_minimum_required(VERSION 2.8.11)

add_subdirectory(liba)
add_subdirectory(libb)
add_subdirectory(libc)

add_executable(finally main.cpp )
target_link_libraries(finally PRIVATE a )

