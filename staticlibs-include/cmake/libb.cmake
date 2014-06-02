
set(SRC ${CMAKE_SOURCE_DIR}/libb/)

add_library(b ${SRC}/lib.cpp)
target_include_directories(b
   PUBLIC ${SRC}
)
target_link_libraries(b )

