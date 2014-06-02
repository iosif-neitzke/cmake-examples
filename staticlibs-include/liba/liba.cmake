add_library(a ${CMAKE_CURRENT_LIST_DIR}/lib.cpp)
target_include_directories(a 
   PUBLIC ${CMAKE_CURRENT_LIST_DIR}
)
target_link_libraries(a PRIVATE b)

