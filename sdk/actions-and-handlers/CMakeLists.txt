cmake_minimum_required(VERSION 3.12 FATAL_ERROR)

project(actions)

# Plugin 1
set(CMAKE_CXX_STANDARD 17)

include($ENV{IDASDK}/ida-cmake/common.cmake)

set(PLUGIN_NAME              actions)
set(PLUGIN_SOURCES           actions.cpp)
set(PLUGIN_RUN_ARGS          "-t -z10000") # Debug messages for the debugger
generate()
disable_ida_warnings(actions)
