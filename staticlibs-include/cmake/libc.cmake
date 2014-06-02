
set(SRC ${CMAKE_SOURCE_DIR}/libc/)

add_library(c ${SRC}/lib.cpp)
target_include_directories(c
   PUBLIC ${SRC}
)


