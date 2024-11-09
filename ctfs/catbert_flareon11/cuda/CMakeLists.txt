cmake_minimum_required(VERSION 3.18)
project(BruteForceAdler32_2 CUDA)

# Specify the target CUDA version if necessary
set(CMAKE_CUDA_STANDARD 11)

# Add the main source file
add_executable(brute_force_adler32_2 brute_force_adler32_2.cu)

# Set the compute capability to target your GPU
# Adjust to the compute capability of your GPU (e.g., 75 for Turing GPUs, 86 for Ampere)
set_target_properties(brute_force_adler32_2 PROPERTIES CUDA_ARCHITECTURES 75)

# CUDA compiler flags (optional)
set(CMAKE_CUDA_FLAGS "${CMAKE_CUDA_FLAGS} -Xcompiler /wd4819")

# Set the output directory
set_target_properties(brute_force_adler32_2 PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)
