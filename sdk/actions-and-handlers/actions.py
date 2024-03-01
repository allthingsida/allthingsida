import idaapi

ACTION_NAME = "pyactions:action1"

try:
    VERSION += 1
    idaapi.unregister_action(ACTION_NAME)
except:
    VERSION = 1

class ActionHandler1(idaapi.action_handler_t):
    def activate(self, ctx):
        print("ActionHandler1 activated")
        return 1


    def update(self, ctx):
        return idaapi.AST_ENABLE_ALWAYS

print("VERSION: ", VERSION)

if idaapi.register_action(
        idaapi.action_desc_t(
            ACTION_NAME,
            "my action1",
            ActionHandler1(),
            "Ctrl+Alt+R")):

    print("Action registered successfully")
else:
    print("Failed to register action")
