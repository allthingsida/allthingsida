def find_obfuscated_api_calls():
    """Find potential obfuscated API calls."""
    obfs_apis = {}
    ea = main_module.text_start
    end_ea = main_module.text_end
    image_end = main_module.base + main_module.size
    
    while ea < end_ea:
        ea = idaapi.find_byte(
                ea,
                end_ea - ea,
                0xE8,
                idaapi.BIN_SEARCH_FORWARD)
        if ea == idaapi.BADADDR:
            break
        inst = idautils.DecodeInstruction(ea)
        target = inst[0].addr
        if (end_ea < target < image_end) and \
           (s := idaapi.getseg(target)) and \
           (s.perm & idaapi.SEGPERM_EXEC):
            oapi = obfs_api_t()
            oapi.caller = ea
            oapi.target = target
            obfs_apis[oapi.caller] = oapi
            
        ea += 1
        
    return obfs_apis
    

# --------------------------------
idaapi.msg_clear()

obfs_apis = find_obfuscated_api_calls()
if not obfs_apis:
    print('Failed to find potential obfuscated API calls')
else:
    print(f'Found {len(obfs_apis)} API call(s)')
