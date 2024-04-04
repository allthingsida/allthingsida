"""
Utility Hotkeys plugin for IDA Pro

Used for quickly using pre-registered hotkeys for various utilities.

by Elias Bachaalany (c) AllThingsIDA
"""
import idaapi

UTIL_HOTKEYS = [chr(i) for i in range(ord('A'), ord('Z') + 1)] + \
               [chr(i) for i in range(ord('0'), ord('9') + 1)]

UTILS_HOTKEYS_MAPPING = {
    '/': 'slash',
    '\\': 'backslash',
    ';': 'semicolon',
    ',': 'comma',
    '.': 'dot',
    '-': 'minus',
    '=': 'equal',
    "'": 'quote',
    '[': 'lbracket',
    ']': 'rbracket',
    '`': 'backquote',
    "Backspace": 'backspace',
    '*': 'star',
}

UTIL_HOTKEYS.extend(UTILS_HOTKEYS_MAPPING.keys())
UTIL_HOTKEYS.extend([f"F{i}" for i in range(1, 13)])
UTIL_HOTKEYS.extend([
    'Up', 'Down', 'Left', 'Right', 
    'Enter', 'End', 'Space', 
    'Insert', 'Home', 'Delete', 
])

class UtilHotkeys_plugmod_t(idaapi.plugmod_t):
    def __init__(self):
        idaapi.plugmod_t.__init__(self)
        print('--- UtilHotkeys --- started ---')
        msgs = []
        for key in UTIL_HOTKEYS:
            hotkey = f"Ctrl+Alt+Shift-{key}"
            func_name = f"utilhotkey_{UTILS_HOTKEYS_MAPPING.get(key, key.lower())}"
            idaapi.add_hotkey(hotkey, lambda fn=func_name: eval(f"idaapi.{fn}()"))
            setattr(idaapi, func_name, lambda key=key: print(f'placeholder for {key}'))
            msgs.append(f"{hotkey} --> idaapi.{func_name}")
        
        print('\n'.join(msgs))
        print('--- UtilHotkeys --- hotkeys registered ---')

    def run(self, _):
        return 0

class UtilHotkeys_plugin_t(idaapi.plugin_t):
    flags = idaapi.PLUGIN_FIX | idaapi.PLUGIN_MULTI
    comment = "Utility hotkeys registration"
    help = "Press Ctrl-Alt-Shift-[A-Z] to trigger a placeholder function"
    wanted_name = "Utility Hotkeys"
    wanted_hotkey = ""

    def init(self):
        return UtilHotkeys_plugmod_t()

def PLUGIN_ENTRY():
    return UtilHotkeys_plugin_t()
