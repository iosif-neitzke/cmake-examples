cmake_minimum_required(VERSION 2.8.11)

add_library(c lib.cpp)

target_include_directories(c
   PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})

install(TARGETS c ARCHIVE DESTINATION lib )
install(FILES c.h DESTINATION include)
