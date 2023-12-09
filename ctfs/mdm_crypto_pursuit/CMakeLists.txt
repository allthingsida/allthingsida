# Set the minimum version of CMake that's required 
cmake_minimum_required(VERSION 3.10)

# Set the project name and version
project(MyOpenSSLProject VERSION 1.0)

# Specify the C standard
set(CMAKE_C_STANDARD 11)
set(CMAKE_C_STANDARD_REQUIRED True)

# Find the OpenSSL library
find_package(OpenSSL REQUIRED)

# Add the executable
add_executable(ctfsrc ctfsrc.cpp)

# Link the executable to the OpenSSL libraries
target_link_libraries(ctfsrc OpenSSL::SSL OpenSSL::Crypto)

# If OpenSSL was found, add the include directories to the project
if(OpenSSL_FOUND)
    target_include_directories(ctfsrc PUBLIC ${OPENSSL_INCLUDE_DIR})
endif()

