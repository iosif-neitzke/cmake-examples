cmake_minimum_required(VERSION 2.8.11)

add_library(a lib.cpp)

target_include_directories(a 
   PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}
   PRIVATE ${CMAKE_INSTALL_PREFIX}/include )

target_link_libraries(a PRIVATE b)

install(TARGETS a ARCHIVE DESTINATION lib )
install(FILES a.h DESTINATION include)

