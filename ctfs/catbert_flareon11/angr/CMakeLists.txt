cmake_minimum_required(VERSION 3.8)
project(HelloAsm C ASM_MASM)

# Enable MASM (Microsoft Macro Assembler) for assembly files
enable_language(ASM_MASM)

# Add the executable and specify source files
add_executable(via_angr driver.c vm.asm)

# Apply settings only for Release build
if(CMAKE_BUILD_TYPE STREQUAL "Release")
    # Disable default libraries (including CRT)
    target_link_options(via_angr PRIVATE /NODEFAULTLIB /DYNAMICBASE:NO)
    # Disable runtime checks
    target_compile_options(via_angr PRIVATE /RTC-)
    # Set the entry point to 'main'
    target_link_options(via_angr PRIVATE /ENTRY:main)
endif()

