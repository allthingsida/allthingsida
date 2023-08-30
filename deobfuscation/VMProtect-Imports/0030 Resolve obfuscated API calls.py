def resolve_obfs_api(oapi, max_steps=200):
    print(f'resolving {oapi.caller:x}')
    
    saved_sp = idautils.cpu.rsp
    saved_ip = idautils.cpu.rip
    
    img_start, img_end = main_module.base, main_module.base + main_module.size
    
    oapi.trace.clear()
    oapi.real_target = idaapi.BADADDR
    
    idautils.cpu.rip = oapi.caller
    while True:
        if max_steps != -1:
            max_steps -= 1
            if max_steps == 0:
                print(f'{oapi.caller:x} reached max steps!')
                break
        
        idaapi.step_into()
        idaapi.wait_for_next_event(idaapi.WFNE_SUSP, -1)
        
        ev = idaapi.get_debug_event()
        if ev.eid() != idaapi.STEP:
            print(f'{oapi.caller:x} invalid event at {ev.ea:x}!')
            break
            
        ea = ev.ea
        
        if img_start < ea < img_end:
            oapi.trace.append(ea)
            continue        
        oapi.real_target = idautils.cpu.rip
        oapi.sp_delta = saved_sp - idautils.cpu.rsp
        oapi.return_address = idaapi.get_qword(idautils.cpu.rsp)
        break
        
    idautils.cpu.rsp = saved_sp
    idautils.cpu.rip = saved_ip
    return oapi.real_target != idaapi.BADADDR
   
    
def resolve_obfs_apis(obfs_apis):
    failed = []
    for i, oapi in enumerate(obfs_apis.values(), start=1):
        if not resolve_obfs_api(oapi):
            failed.append(oapi)
        else:
            print(f'#{i} {oapi.caller:x} --> {oapi.target:x} --> {oapi.real_target:x}')
    
    
# --------------------------------
idaapi.msg_clear()
idaapi.load_debugger('bochs', False)

if idaapi.get_process_state() != idaapi.DSTATE_SUSP:
    print('Please suspend first!')
else:
    print('Resolving...')
    resolve_obfs_apis(obfs_apis)