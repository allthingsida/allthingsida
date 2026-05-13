# Show the trace of an obfuscated API call

idaapi.msg_clear()

oapi = obfs_apis[0x7FF763FC1434]

def display_trace(oapi):
    print(f'{oapi.caller:x} --> ret: {oapi.return_address:x} --> {idaapi.get_name(oapi.real_target)}; sp_delta={oapi.sp_delta}; trace#{len(oapi.trace)}')
    
    i = 0
    for ea in oapi.trace:
        inst = idautils.DecodeInstruction(ea)
        if not inst: continue
        if inst.itype == idaapi.NN_jmp: continue
        i += 1
        d = idc.generate_disasm_line(ea, 0)
        print(f'#{i}  {ea:x} {d}')
        
display_trace(oapi)
