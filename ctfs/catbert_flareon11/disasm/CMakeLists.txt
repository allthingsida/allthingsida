# CMake minimum version
cmake_minimum_required(VERSION 3.20)

project(src VERSION 1.0)

set(DISABLED_SOURCES utils_impl.cpp)

set_source_files_properties(${DISABLED_SOURCES} PROPERTIES HEADER_FILE_ONLY TRUE)
add_executable(vm main.cpp vm.cpp all_test.cpp ${DISABLED_SOURCES})
