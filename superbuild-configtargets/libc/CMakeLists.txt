cmake_minimum_required(VERSION 2.8.11)
include(CMakePackageConfigHelpers)

add_library(c lib.cpp)

target_include_directories(c PUBLIC "$<INSTALL_INTERFACE:include>")

install(TARGETS c EXPORT libcTargets
        ARCHIVE DESTINATION lib )
install(FILES c.h DESTINATION include)
install(EXPORT libcTargets DESTINATION lib/cmake/libc)

#create relocateable config file
configure_package_config_file (
   libcConfig.cmake.in libcConfig.cmake
   INSTALL_DESTINATION  ${CMAKE_INSTALL_PREFIX}/lib/cmake/libc)

install(FILES "${CMAKE_CURRENT_BINARY_DIR}/libcConfig.cmake"
        DESTINATION ${CMAKE_INSTALL_PREFIX}/lib/cmake/libc )

