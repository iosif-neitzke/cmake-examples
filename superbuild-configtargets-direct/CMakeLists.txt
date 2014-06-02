cmake_minimum_required(VERSION 2.8.11)

include(ExternalProject)

set(DEVROOT ${CMAKE_BINARY_DIR}/devroot)
set(CMAKE_ARGS -DCMAKE_INSTALL_PREFIX=${DEVROOT})

ExternalProject_Add(
   app 
   CMAKE_ARGS ${CMAKE_ARGS}
   SOURCE_DIR ${CMAKE_SOURCE_DIR}/app
)

ExternalProject_Add(
   a 
   CMAKE_ARGS ${CMAKE_ARGS}
   SOURCE_DIR ${CMAKE_SOURCE_DIR}/liba
)

ExternalProject_Add(
   b 
   CMAKE_ARGS ${CMAKE_ARGS}
   SOURCE_DIR ${CMAKE_SOURCE_DIR}/libb
)

ExternalProject_Add(
   c 
   CMAKE_ARGS ${CMAKE_ARGS}
   SOURCE_DIR ${CMAKE_SOURCE_DIR}/libc
)

add_dependencies(app a c)
add_dependencies(a b)
