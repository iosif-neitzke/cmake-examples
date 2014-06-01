cmake_minimum_required(VERSION 2.8.11)

include("${CMAKE_INSTALL_PREFIX}/lib/alib-targets.cmake")
include("${CMAKE_INSTALL_PREFIX}/lib/libbTargets.cmake")
include("${CMAKE_INSTALL_PREFIX}/lib/clib-targets.cmake")

add_executable(app main.cpp )
target_link_libraries(
     app 
     a 
     # b , this should be implicatly added because of "a" depends on "b"
     c )

install(TARGETS app 
        RUNTIME DESTINATION bin)
