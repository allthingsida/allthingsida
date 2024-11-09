cmake_minimum_required(VERSION 3.20)

# Set the project name
project(catmeme_src)

# Specify the C++ standard
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# Add the executable
add_executable(bc2 bc2.cpp)
add_executable(bc3 bc3.cpp)
add_executable(bc3_gen bc3-gen.cpp)
add_executable(bc4_print bc4-print.cpp)

set(DISABLED_SOURCES utils_impl.cpp)

set_source_files_properties(${DISABLED_SOURCES} PROPERTIES HEADER_FILE_ONLY TRUE)
add_executable(vm main.cpp vm.cpp all_test.cpp ${DISABLED_SOURCES})
