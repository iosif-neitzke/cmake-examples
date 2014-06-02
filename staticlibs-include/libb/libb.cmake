add_library(b ${CMAKE_CURRENT_LIST_DIR}/lib.cpp)
target_include_directories( b
   PUBLIC ${CMAKE_CURRENT_LIST_DIR})
