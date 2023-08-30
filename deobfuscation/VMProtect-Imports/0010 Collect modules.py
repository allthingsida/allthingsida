def collect_modules(target_module_name):
    """Collect the modules and find the target module."""
    modules = [m for m in idautils.Modules()]
    
    target_module_name = target_module_name.lower()
    
    for m in modules:
        if target_module_name in m.name.lower():
            s = idaapi.get_next_seg(m.base)
            m.text_start, m.text_end = s.start_ea, s.end_ea
            
            return (modules, main_module := m)
            
    return            
    
# --------------------------------    
idaapi.msg_clear()
ret = collect_modules('testprog')
if not ret:
    print("Failed to find target module!")
else:
    modules, main_module = ret
    print(f"Found target module; .text={main_module.text_start:x}-{main_module.text_end:x}")
    
