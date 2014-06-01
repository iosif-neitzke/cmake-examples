cmake_minimum_required(VERSION 2.8.11)
add_library(b lib.cpp)

target_include_directories(b 
   PUBLIC "$<INSTALL_INTERFACE:include>")

install(TARGETS b EXPORT blib-targets 
        ARCHIVE DESTINATION lib )
install(FILES b.h DESTINATION include)
install(EXPORT blib-targets DESTINATION lib)
