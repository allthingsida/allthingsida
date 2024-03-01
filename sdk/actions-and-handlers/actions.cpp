// Python Extension Plugin
// By Elias Bachaalany / AllThingsIDA

#include <ida.hpp>
#include <idp.hpp>
#include <loader.hpp>
#include <kernwin.hpp>

#define ACTION_NAME "actionsample:Action1"

struct action1_ah_t : public action_handler_t
{
    int idaapi activate(action_activation_ctx_t* ctx) override
    {
        msg("action invoked! %a\n", ctx->cur_ea);
        if (ctx->cur_ea != BADADDR)
        {
            set_cmt(ctx->cur_ea, "Hello, world!", false);
            msg("set...\n");
        }
        return 1;
    }

    action_state_t idaapi update(action_update_ctx_t* ctx) override
    {
        //return AST_ENABLE_ALWAYS;
        return ctx->widget_type == BWN_DISASM
            ? AST_ENABLE_FOR_WIDGET
            : AST_DISABLE_FOR_WIDGET;
    }
};

//--------------------------------------------------------------------------
struct plugin_ctx_t : public plugmod_t
{
    action1_ah_t action1_ah;
    plugin_ctx_t()
    {
        register_action(ACTION_DESC_LITERAL_PLUGMOD(
            ACTION_NAME,
            "My test action",
            &action1_ah,
            this,
            "Ctrl-Alt-E",
            nullptr,
            -1));
        //attach_action_to_menu(
        //    "Edit/Other/Toggle Border", // relative to the Edit menu
        //    ACTION_NAME,
        //    SETMENU_APP);
    }

    bool idaapi run(size_t) override
    {
        msg("Hello, world! xxx(cpp)\n");
        return true;
    }

    ~plugin_ctx_t() override
    {
        unregister_action(ACTION_NAME);
        //detach_action_from_menu("Edit/Other/", ACTION_NAME);
    }
};

//--------------------------------------------------------------------------
plugin_t PLUGIN =
{
    IDP_INTERFACE_VERSION,
    PLUGIN_MULTI,
    []()->plugmod_t* {return new plugin_ctx_t; }, // initialize
    nullptr,
    nullptr,
    nullptr,              // long comment about the plugin
    nullptr,              // multiline help about the plugin
    "Hello, world",       // the preferred short name of the plugin
    nullptr,              // the preferred hotkey to run the plugin
};
