cmake_minimum_required(VERSION 3.12 FATAL_ERROR)

project(ctree_visitor)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(PLUGIN_NAME              ctree_visitor)
set(PLUGIN_SOURCES           driver.cpp main.cpp idasdk.h)
set(PLUGIN_RUN_ARGS          "-t")
include($ENV{IDASDK}/ida-cmake/addons.cmake)
