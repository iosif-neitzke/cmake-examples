cmake_minimum_required(VERSION 2.8.11)

find_package(libb NO_MODULE REQUIRED)

add_library(a lib.cpp)

# add link dependency so cmake knows about the dependency 
target_link_libraries(a b)

target_include_directories(a 
   PUBLIC "$<INSTALL_INTERFACE:include>")

install(TARGETS a EXPORT libaConfig 
   ARCHIVE DESTINATION lib )

install(EXPORT libaConfig 
   DESTINATION lib/cmake/liba)

install(FILES a.h DESTINATION include)