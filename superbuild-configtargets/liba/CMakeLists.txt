cmake_minimum_required(VERSION 2.8.11)
include(CMakePackageConfigHelpers)

find_package(libb NO_MODULE REQUIRED)

add_library(a lib.cpp)

# add link dependency so cmake knows about the dependency 
target_link_libraries(a b)

target_include_directories(a 
   PUBLIC "$<INSTALL_INTERFACE:include>"
)

install(TARGETS a 
	    EXPORT libaTargets 
        ARCHIVE DESTINATION lib )

install(EXPORT libaTargets DESTINATION lib/cmake/liba)

install(FILES a.h DESTINATION include)

#create relocateable config file
configure_package_config_file (
   libaConfig.cmake.in libaConfig.cmake
   INSTALL_DESTINATION  ${CMAKE_INSTALL_PREFIX}/lib/cmake/liba)

install(FILES "${CMAKE_CURRENT_BINARY_DIR}/libaConfig.cmake"
        DESTINATION ${CMAKE_INSTALL_PREFIX}/lib/cmake/liba )


