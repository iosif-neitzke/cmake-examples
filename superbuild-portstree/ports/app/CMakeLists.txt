cmake_minimum_required(VERSION 2.8.11)
include(ExternalProject)

ExternalProject_Add(
	   app
	   CMAKE_ARGS ${CMAKE_ARGS}
	   SOURCE_DIR ${CMAKE_SOURCE_DIR}/../src/app
)

