
set(SRC ${CMAKE_SOURCE_DIR}/liba/)

add_library(a ${SRC}/lib.cpp)
target_include_directories(a 
   PUBLIC ${SRC}
)
target_link_libraries(a PRIVATE b)

