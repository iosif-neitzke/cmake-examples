cmake_minimum_required(VERSION 2.8.11)
include(CMakePackageConfigHelpers)

add_library(c lib.cpp)

target_include_directories(c 
   PUBLIC "$<INSTALL_INTERFACE:include>")

install(TARGETS c EXPORT libcConfig 
   ARCHIVE DESTINATION lib )

install(EXPORT libcConfig DESTINATION lib/cmake/libc)

install(FILES c.h DESTINATION include)
