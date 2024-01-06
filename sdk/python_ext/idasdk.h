#pragma once

// Disable warnings on Windows
#ifdef __NT__
    #pragma warning(push)
    #pragma warning(disable: 4267 4146 4244)
#endif

#include <pybind11/pybind11.h>
#include <pybind11/embed.h>

#include <pro.h>
#include <ida.hpp>
#include <prodir.h>
#include <idp.hpp>
#include <loader.hpp>
#include <kernwin.hpp>

#ifdef __NT__
    #pragma warning(pop)
    #include <Windows.h>

    #ifdef _DEBUG
        #error "Cannot build in Debug mode. Build with RelWithDebInfo or Release."
    #endif
#else
    #warning "This plugin is only tested on Windows."
#endif

// Plugin suffix
#ifdef __EA64__
#  define PLG_SUFFIX "64"
#else
#  define PLG_SUFFIX ""
#endif

// Extensions namespace
#define PY_EXT_NAME "ext"

// Python parent module name
#define PY_MODULE_NAME "idaapi"

