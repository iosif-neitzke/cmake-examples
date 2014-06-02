cmake_minimum_required(VERSION 2.8.11)
include(CMakePackageConfigHelpers)

add_library(b lib.cpp)

target_include_directories(b 
   PUBLIC "$<INSTALL_INTERFACE:include>")

install(TARGETS b 
	    EXPORT libbTargets 
        ARCHIVE DESTINATION lib )
install(EXPORT libbTargets DESTINATION lib/cmake/libb/)

install(FILES b.h DESTINATION include)

#create a relocatable config file
configure_package_config_file (
   libbConfig.cmake.in libbConfig.cmake
   INSTALL_DESTINATION  ${CMAKE_INSTALL_PREFIX}/lib/cmake/libb/ )

install(FILES "${CMAKE_CURRENT_BINARY_DIR}/libbConfig.cmake"
        DESTINATION ${CMAKE_INSTALL_PREFIX}/lib/cmake/libb/ )


