// Python Extension Plugin
// By Elias Bachaalany / AllThingsIDA

#include "idasdk.h"
#include "extension.h"

class python_ext_plg_t : public plugmod_t, public event_listener_t
{
public:
    python_ext_plg_t() 
    {
        hook_event_listener(HT_UI, this);
    }

    ssize_t idaapi on_event(ssize_t code, va_list va) override
    {
        if (code == ui_initing_database)
        {
#ifdef __NT__
            // To prevent IDA from unloading this plugin and invalidating our Python references, we must keep ourselves in memory.
            LoadLibraryA("python_ext" PLG_SUFFIX);
#else
            // TODO: get the full path of the plugin, then test...
            dlopen("python_ext" PLG_SUFFIX, RTLD_NOLOAD | RTLD_LAZY);
#endif
            register_extensions();
            // We don't need to be notified no longer
            remove_event_listener(this);
        }
        return 0;
    }

    bool idaapi run(size_t /*arg*/) override 
    { 
        namespace py = pybind11;
        py::gil_scoped_acquire acquire;

        //
        // 1. Call the Python sum function
        //
        py::object sum = py::eval("sum([1, 2, 3, 4])");
        int sum_result = sum.cast<int>();

        msg("sum([1, 2, 3, 4])=%d\n", sum_result);

        //
        // 2. Call `os.getcwd()`
        //
        py::module_ os = py::module_::import("os");
        py::object getcwd = os.attr("getcwd");
        std::string cwd = getcwd().cast<std::string>();
        msg("os.getcwd()=%s\n", cwd.c_str());

        // 3. Call `idaapi.warning(m: str)`
        py::module_ idaapi_module = py::module_::import("idaapi");
        py::object py_warning = idaapi_module.attr("warning");
        py_warning("Hello from Python!\n");

        //
        // 4. Load my module
        // 
        
        // Get ALLTHINGSIDA environment variable:
        qstring allthingsida_env;
        if (!qgetenv("ALLTHINGSIDA", &allthingsida_env))
        {
            msg("ALLTHINGSIDA environment variable is not set!\n");
            return false;
        }

        allthingsida_env.append(SDIRCHAR "sdk" SDIRCHAR "python_ext");

        // Add your module's directory to sys.path
        py::module_ sys = py::module_::import("sys");
        py::list sys_path = sys.attr("path");
        sys_path.append(allthingsida_env.c_str());
        do
        {
            // Import mymodule
            py::module_ my_module = py::module_::import("mymodule");
            if (!my_module)
            {
                msg("Failed to import mymodule!\n");
                break;
            }

            //
            // Get class object and create an instance
            //
            py::object MyObjectClass = my_module.attr("MyObject");
            if (!MyObjectClass)
            {
                msg("Failed to import MyObject!\n");
                break;
            }

            py::object obj = MyObjectClass(1, 2); // Create an instance of MyObjectClass

            //
            // Call the dothis method
            //
            py::object result = obj.attr("dothis")("example string", 10, 20);

            std::string result_str = result.cast<std::string>();
            msg("dothis result: %s\n", result_str.c_str());

            //
            // Call the get_dict method
            //
            py::dict result_dict = obj.attr("get_dict")().cast<py::dict>();

            // Enumerate and print the dictionary
            for (auto item : result_dict)
            {
                std::string key = item.first.cast<std::string>();
                std::string value = item.second.cast<std::string>();
                msg("key=%s, value=%s\n", key.c_str(), value.c_str());
            }
        } while (false);

        // Remove the module path from sys.path
        sys_path.attr("remove")(allthingsida_env.c_str());

        return true; 
    }

    ~python_ext_plg_t() override 
    {
        unhook_event_listener(HT_UI, this);
    }
};

//--------------------------------------------------------------------------
plugin_t PLUGIN = 
{
    IDP_INTERFACE_VERSION,
    PLUGIN_MULTI | PLUGIN_FIX /* | PLUGIN_HIDE*/,// Plugin flags
    []()->plugmod_t* { return new python_ext_plg_t(); },
    nullptr,                   // Terminate function
    nullptr,                   // Run function
    "Python extension plugin", // Long comment about the plugin
    "",                       // Multiline help about the plugin
    "python_ext",             // The preferred short name of the plugin
    "Ctrl-4"                  // The preferred hotkey to run the plugin
};
