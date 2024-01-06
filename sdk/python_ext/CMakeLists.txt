cmake_minimum_required(VERSION 3.12 FATAL_ERROR)

project(python_ext)

# Specify the C++ standard
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)

if(MSVC)
    # Disable optimization for MSVC
    set(CMAKE_CXX_FLAGS_RELWITHDEBINFO "/Od /Zi /DNDEBUG")
else()
    # Disable optimization for GCC and LLVM/Clang
    set(CMAKE_CXX_FLAGS_RELWITHDEBINFO "-O0 -g -DNDEBUG")
endif()

# Find the Python interpreter and development components
find_package(Python COMPONENTS Interpreter Development REQUIRED) #find_package(Python 3.11 COMPONENTS ...)

# Check if Python_LIBRARIES is set and valid
if(NOT Python_LIBRARIES)
    message(FATAL_ERROR "Python libraries not found.")
endif()

# On Windows, always link against python3.lib
# (count on IDAPython/idapyswitch to pick the right Python version)
include($ENV{IDASDK}/ida-cmake/common.cmake)

if (__NT__)
    # Link to Python.lib (it will forward to the proper Python3x.lib/.dll)
    string(REGEX REPLACE "python3([0-9]+)\\.lib" "python3.lib" PYTHON_LIB_DIR "${Python_LIBRARIES}")
endif()

include_directories(${Python_INCLUDE_DIRS})

# Refer to pybind11
add_subdirectory(../../3rd_party/pybind11 ${CMAKE_CURRENT_BINARY_DIR}/pybind11_build)

set(PLUGIN_NAME           python_ext)
set(PLUGIN_SOURCES        plugin.cpp extension.cpp extension.h idasdk.h)
set(PLUGIN_LINK_LIBRARIES pybind11::embed ${PYTHON_LIB_DIR})

generate()
