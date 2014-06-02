add_library(a lib.cpp)
target_include_directories(a 
   PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}
)
target_link_libraries(a PRIVATE b)

