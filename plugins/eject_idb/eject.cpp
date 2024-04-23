// Eject IDB by Elias Bachaalany(c) AllThingsIDA

#include <ida.hpp>
#include <idp.hpp>
#include <loader.hpp>
#include <kernwin.hpp>
#include "windowthreadhotkey.h"

extern "C" void do_eject()
{
    qstring p = get_path(PATH_TYPE_IDB);
    auto idx = p.rfind('.');
    if (idx != qstring::npos)
    {
        qstring new_name = p.substr(0, idx) + ".ejected" + p.substr(idx);
        save_database(new_name.c_str(), DBFL_BAK);
    }
}

//--------------------------------------------------------------------------
struct plugin_ctx_t : public plugmod_t
{
    CWindowThreadHotkey w;
    plugin_ctx_t() 
    {
        w.start();
        msg("eject_idb installed. Press Ctrl+Alt+E to eject the IDB when IDA UI enters an infinite loop!\n");
    }

    void hang_with_event()
    {
        // Create an unsignaled, manual-reset event
        HANDLE hEvent = CreateEvent(
            NULL,   // default security attributes
            TRUE,   // manual-reset event
            FALSE,  // initial state is nonsignaled
            NULL    // object name (optional)
        );

        if (hEvent == NULL)
        {
            // Handle error
            msg("CreateEvent failed with error: %d\n", GetLastError());
            return;
        }

        // Wait for the event to be signaled
        WaitForSingleObject(hEvent, INFINITE);
        // Close the event handle
        CloseHandle(hEvent);
    }

    bool hang_with_loop(bool poll=false)
    {
        warning("Will enter an infinite loop, press any key to stop it");
        while (true)
        {
            if (poll)
                user_cancelled();
            qsleep(1000);
        }
        warning("somehow we left the loop!");
        return true;
	}

    bool idaapi run(size_t) override
    {
        hang_with_loop(true);
        return true;
    }

    ~plugin_ctx_t() override
    {
		w.stop();
	}
};

//--------------------------------------------------------------------------
plugin_t PLUGIN =
{
    IDP_INTERFACE_VERSION,
    PLUGIN_FIX | PLUGIN_MULTI,
    []()->plugmod_t* {return new plugin_ctx_t; }, // initialize
    nullptr,
    nullptr,
    nullptr,              // long comment about the plugin
    nullptr,              // multiline help about the plugin
    "Eject: simuluate UI infinite loop",  // the preferred short name of the plugin
    nullptr,              // the preferred hotkey to run the plugin
};
