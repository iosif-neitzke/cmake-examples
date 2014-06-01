cmake_minimum_required(VERSION 2.8.11)

add_executable(app main.cpp )


set(CMAKE_FIND_ROOT_PATH ${CMAKE_INSTALL_PREFIX} )

find_library(LIBA a HINTS ONLY_CMAKE_FIND_ROOT_PATH )
find_library(LIBB b HINTS ONLY_CMAKE_FIND_ROOT_PATH )
find_library(LIBC c HINTS ONLY_CMAKE_FIND_ROOT_PATH )

message(STATUS " lib a = ${LIBA}")
message(STATUS " lib b = ${LIBB}")
message(STATUS " lib c = ${LIBC}")

if ( NOT (LIBA AND LIBB AND LIBC) )
    message (FATALERROR "lib not found")
endif()

target_link_libraries(app PRIVATE ${LIBA} ${LIBB} ${LIBC} )

target_include_directories( app
    PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}
    PRIVATE ${CMAKE_INSTALL_PREFIX}/include 
)

install(TARGETS app RUNTIME DESTINATION bin)
