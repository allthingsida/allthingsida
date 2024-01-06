#include <algorithm>
#include <vector>
#include <string>
#include <functional>

#include "idasdk.h"

static void my_print(const char* message) 
{
    msg("%s", message);
}

class MyUtil
{
public:
    inline static int id = 0;
    int my_id = 0;
    std::string name_;

    MyUtil(std::string name = "no name") : name_(name)
    {
        my_id = ++id;
    }

    void println(const char* message) 
    {
        msg("%s\n", message);
    }

    std::string upper(std::string s) 
    {
        std::transform(s.begin(), s.end(), s.begin(), ::toupper);
        return s;
    }

    void dump()
    {
        msg("id: %d\n", my_id);
    }
};

//! EXTENSIONS BEGIN
namespace py = pybind11;
static std::vector<std::function<void(py::object&)>> EXTENSION_TABLE =
{
    [](auto& obj) 
    { 
        obj.attr("my_print") = py::cpp_function(&my_print); 
    },
    [](auto& obj) 
    {
        py::class_<MyUtil>(obj, "MyUtil")
            .def(py::init<const std::string&>(), py::arg("name") = "no name")
            .def_readwrite("name", &MyUtil::name_)
            .def_readonly("id", &MyUtil::my_id)
            .def("println", &MyUtil::println)
            .def("upper", &MyUtil::upper)
            .def("dump", &MyUtil::dump);
    }
};

void register_extensions()
{
    // Acquire the GIL before working with Python.
    py::gil_scoped_acquire acquire;
    py::module_ idaapi_module = py::module_::import(PY_MODULE_NAME);

    // Check if 'ext' exists in idaapi
    py::object ext;
    if (py::hasattr(idaapi_module, PY_EXT_NAME))
    {
        ext = idaapi_module.attr(PY_EXT_NAME);
    }
    else
    {
        // Use idaapi's special object_t class to create a new object
        ext = py::eval("idaapi.object_t()");
        idaapi_module.add_object(PY_EXT_NAME, ext);
    }

    // Alternatively, to import the builtins module (global scope), just pass in "builtins"
    py::module_ builtins = py::module_::import("builtins");

    // Bind all extensions
    for (auto& binding : EXTENSION_TABLE)
        binding(ext);
}
//! EXTENSIONS END
