cmake_minimum_required(VERSION 2.8.11)
include(CMakePackageConfigHelpers)

add_library(b lib.cpp)

target_include_directories(b 
   PUBLIC "$<INSTALL_INTERFACE:include>")

install(TARGETS b EXPORT libbConfig 
   ARCHIVE DESTINATION lib )

install(EXPORT libbConfig 
   DESTINATION lib/cmake/libb/)

install(FILES b.h DESTINATION include)


