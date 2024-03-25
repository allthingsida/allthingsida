# Util Hotkeys

This plugin sets up shortcuts from "Ctrl-Alt-Shift-A" through "Ctrl-Alt-Shift-Z" in IDA Pro, linking them to placeholder functions in the `idaapi` module. Each shortcut triggers a specific function, like `idaapi.utilhotkey_A` for "A", up to `idaapi.utilhotkey_Z` for "Z".

To use your own function with a shortcut, simply replace the placeholder function with your own. Here's an example on how to customize the action for "Ctrl-Alt-Shift-A":

```python
import idaapi

def my_custom_action():
    print("My custom action for Ctrl-Alt-Shift-A")

idaapi.utilhotkey_A = my_custom_action
```
