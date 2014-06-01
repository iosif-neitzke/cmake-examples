cmake_minimum_required(VERSION 2.8.11)

include(liba/liba.cmake)
include(libb/libb.cmake)
include(libc/libc.cmake)

add_executable(finally main.cpp )
target_link_libraries(finally PRIVATE a )

