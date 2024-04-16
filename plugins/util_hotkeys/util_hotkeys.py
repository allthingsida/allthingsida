"""
Utility Hotkeys plugin for IDA Pro

Used for quickly using pre-registered hotkeys for various utilities.

by Elias Bachaalany (c) AllThingsIDA
"""
import idaapi

# TODO: maybe refactor into `idaapi.ext.` namespace

# ------------------------------------------------------------
# Define all keys

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

# ------------------------------------------------------------
# Plugin

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

# ------------------------------------------------------------
# Utils

def _get_func_compontents(func):
    return func.__doc__.split(':', 1)

def _helpme(funcs:tuple):
    print(banner := "Util Hotkeys:")
    print("=" * len(banner))
    for func in funcs:
        key, desc = _get_func_compontents(func)
        print(f"  {key} - {desc}")

def _install_hotkeys(
        funcs: tuple, 
        debug:bool=False, 
        install_help: bool=False,
        install_clear: bool=False):
    """/: Help me"""    
    if debug:
        print(banner := "Util Hotkeys:")
        print("=" * len(banner))

    seen = set()
    for func in funcs:
        key, desc = _get_func_compontents(func)
        if key in seen:
            print(f"CONFLICT: duplicate key: {key}")
            break
        seen.add(key)
        setattr(idaapi, f"utilhotkey_{key.lower()}", func)
        if debug:
            print(f"Installed util hotkey {key}: {desc}")

    if install_help:
        setattr(
            idaapi, 
            f"utilhotkey_slash", 
            lambda funcs=funcs: _helpme(funcs))
        if debug:
            print("* Installed help hotkey")
        
    if install_clear:
        setattr(
            idaapi, 
            f"utilhotkey_x", 
            lambda: idaapi.msg_clear())
        if debug:
            print("* Installed clear hotkey")

    if debug:
        print("Hotkeys installed")

def _utilhotkeys_func(l):
    def decorator(f):
        l.append(f)
        return f
    return decorator

idaapi.utilhotkeys_install = _install_hotkeys
idaapi.utilhotkeys_helpme = _helpme
idaapi.utilhotkeys_func = _utilhotkeys_func
