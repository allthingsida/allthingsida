import idaapi

UTIL_HOTKEYS = range(ord('A'), ord('Z') + 1)

class UtilHotkeys_plugmod_t(idaapi.plugmod_t):
    def __init__(self):
        idaapi.plugmod_t.__init__(self)
        print('--- UtilHotkeys --- started ---')
        msgs = []
        for key in UTIL_HOTKEYS:
            func_name = f"utilhotkey_{chr(key).lower()}"
            hotkey = f"Ctrl+Alt+Shift-{chr(key)}"
            msgs.append(f"{hotkey} --> idaapi.{func_name}")
            idaapi.add_hotkey(hotkey, lambda fn=func_name: eval(f"idaapi.{fn}()"))
            setattr(idaapi, func_name, lambda key=key: print(f'placeholder for {chr(key)}'))
        
        print('\n'.join(msgs))
        print('--- UtilHotkeys --- hotkeys registered ---')

    def run(self, _):
        return 0

class hello_plugin_t(idaapi.plugin_t):
    flags = idaapi.PLUGIN_FIX | idaapi.PLUGIN_MULTI
    comment = "Utility hotkeys registration"
    help = "Press Ctrl-Alt-Shift-[A-Z] to trigger a placeholder function"
    wanted_name = "Utility Hotkeys"
    wanted_hotkey = ""

    def init(self):
        return UtilHotkeys_plugmod_t()

def PLUGIN_ENTRY():
    return hello_plugin_t()
