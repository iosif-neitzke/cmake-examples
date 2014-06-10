cmake_minimum_required(VERSION 2.8.11)

set(DEVROOT ${CMAKE_BINARY_DIR}/devroot)
set(CMAKE_ARGS -DCMAKE_INSTALL_PREFIX=${DEVROOT})

add_subdirectory(app)
add_subdirectory(liba)
add_subdirectory(libb)
add_subdirectory(libc)

add_dependencies(app a c)
add_dependencies(a b)
