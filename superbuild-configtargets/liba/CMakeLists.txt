cmake_minimum_required(VERSION 2.8.11)

include("${CMAKE_INSTALL_PREFIX}/lib/libbTargets.cmake")
#find_package(libb NO_MODULE REQUIRED)

add_library(a lib.cpp)

# add link dependency so cmake knows about the dependency 
# and includes 'b' interface files, it should also percolate up to 
# the app folder
#
# The include directory could be manually added with
# $<TARGET_PROPERTY:b,INTERFACE_INCLUDE_DIRECTORIES>  
#
target_link_libraries(a b)

target_include_directories(a 
   PUBLIC "$<INSTALL_INTERFACE:include>"
)

install(TARGETS a EXPORT alib-targets 
        ARCHIVE DESTINATION lib )

install(FILES a.h DESTINATION include)
install(EXPORT alib-targets DESTINATION lib)
