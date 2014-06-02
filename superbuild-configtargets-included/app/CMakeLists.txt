cmake_minimum_required(VERSION 2.8.11)

find_package(liba NO_MODULE REQUIRED)
find_package(libb NO_MODULE REQUIRED)
find_package(libc NO_MODULE REQUIRED)

add_executable(app main.cpp )
target_link_libraries(
     app 
     a 
     # b , this should be implicatly added because of "a" depends on "b"
     c )

install(TARGETS app 
        RUNTIME DESTINATION bin)
