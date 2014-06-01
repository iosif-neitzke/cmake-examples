cmake_minimum_required(VERSION 2.8.11)

add_library(c lib.cpp)

target_include_directories(c PUBLIC "$<INSTALL_INTERFACE:include>")

install(TARGETS c EXPORT clib-targets
        ARCHIVE DESTINATION lib )
install(FILES c.h DESTINATION include)
install(EXPORT clib-targets DESTINATION lib)
