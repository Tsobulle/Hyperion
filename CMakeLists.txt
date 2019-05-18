cmake_minimum_required(VERSION 3.10)
project(Hyperion)

set(CMAKE_MODULE_PATH "${PROJECT_SOURCE_DIR}/cmake_modules" ${CMAKE_MODULE_PATH})
set(EXECUTABLE_OUTPUT_PATH ${CMAKE_BINARY_DIR})


set(Components cli utils)

# add subdirectories 
foreach(Component ${Components})
  set(${Component}_INCLUDE_DIR "${CMAKE_SOURCE_DIR}/${Component}/include/")
  add_subdirectory(${Component})
endforeach()

include(default_config)	# default flags and config for each project
include(cmake_utils) 	# contains basic functions
include(setup_mkl)	# setup mkl

