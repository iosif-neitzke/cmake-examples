cmake_minimum_required(VERSION 2.8.11)
include(CMakePackageConfigHelpers)

add_library(b lib.cpp)

target_include_directories(b 
   PUBLIC "$<INSTALL_INTERFACE:include>")

install(TARGETS b EXPORT libbTargets 
        ARCHIVE DESTINATION lib )
install(FILES b.h DESTINATION include)

set(INCLUDE_PATH include)
configure_package_config_file (libbConfig.cmake.in libbConfig.cmake
   INSTALL_DESTINATION  ${CMAKE_INSTALL_PREFIX}/lib/cmake/libb/
   PATH_VARS  INCLUDE_PATH)

install(EXPORT libbTargets DESTINATION lib)

install ( FILES "${CMAKE_CURRENT_BINARY_DIR}/libbConfig.cmake"
          DESTINATION ${CMAKE_INSTALL_PREFIX}/lib/cmake/libb )

