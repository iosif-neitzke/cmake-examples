cmake_minimum_required(VERSION 2.8.11)

include(cmake/liba.cmake)
include(cmake/libb.cmake)
include(cmake/libc.cmake)

add_executable(finally main.cpp )
target_link_libraries(finally PRIVATE a c)

