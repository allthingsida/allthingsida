"""
Export Address Table hook detection script

To use just suspend the process and run the script or open a user-mode crash dump and run the script

This script accompanies this video: https://youtu.be/lVW91ps8yCg

by Elias Bachaalany (c) AllThingsIDA
"""

import idaapi, idc, idautils

from common import *

def print_hooks(mod):
    base = mod.base
    ok, dos = dos_tp.retrieve(base)
    if not ok:
        return (False, 'Error DOS')

    mod_end = base + mod.size
  
    inh_ea = base + dos.e_lfanew
    ok, inh = inh_tp.retrieve(inh_ea)
    if not ok:
        return (False, 'Error INH')
    
    exp_idd = inh.OptionalHeader.DataDirectory['0']    
    if exp_idd.VirtualAddress == 0 or exp_idd.Size == 0:
        return (False, 'No exports')
    
    ied_ea     = base + exp_idd.VirtualAddress
    ied_end_ea = ied_ea + exp_idd.Size
    
    ok, ied = ied_tp.retrieve(ied_ea)
    if not ok:
        return (False, 'Error IED')
    
    funcs_ea = base + ied.AddressOfFunctions
    ords_ea  = base + ied.AddressOfNameOrdinals
    obase    = ied.Base
    
    # Compute names to ordinal mapping
    names_tbl = {}
    ords_tbl = {}
    if ied.NumberOfNames != 0:
        names_ea = base + ied.AddressOfNames
        for i in range(ied.NumberOfNames):
            name_ea  = base + idaapi.get_dword(names_ea + i*4)
            name_ord = idaapi.get_word(ords_ea + i*2)
            
            names_tbl[i]       = idc.get_strlit_contents(name_ea).decode('utf-8')
            ords_tbl[name_ord] = i
            
    dll_name = idc.get_strlit_contents(ied.Name + base).decode('utf-8')

    dll_str = f'Base: {base:x} IED: {ied_ea:x} NumberOfFunctions={ied.NumberOfFunctions} AddressOfFunctions: {funcs_ea:x}; Name: {dll_name}'

    nb_hooks = 0    
    for i in range(ied.NumberOfFunctions):
        func_rva = idaapi.get_dword(funcs_ea + i*4)
        if func_rva == 0:
            continue # skip unused

        func_ea = func_rva + base
        func_ord = obase + i
        
        name_idx = ords_tbl.get(i, -1)

        # Skip forwarded
        if ied_ea <= func_ea <= ied_end_ea:
            continue

        # Skip normal entries (implementation is within the module range)
        if base <= func_ea < mod_end:
            continue
        else:
            nb_hooks += 1

        if dll_str:
            print(dll_str)
            dll_str = ''
        
        if name_idx == -1:
            print(f'  {func_ea:x} Ord: #{func_ord} (idx={i})')
        else:
            print(f'  {func_ea:x} Ord: #{func_ord} {names_tbl[name_idx]} (idx={i})')        

    return (True, nb_hooks)

# ----------------------------
def main():
    if idaapi.get_process_state() != idaapi.DSTATE_SUSP:
        print('Please suspend the process first')
        return
    
    idaapi.msg_clear()
    found_count = 0
    for mod in idautils.Modules():
        ok, nb_hooks = print_hooks(mod)
        if ok and nb_hooks:
            print(f'-------{nb_hooks} hooks found--------')
            found_count += nb_hooks

    print(f'Total hooks found: {found_count}')

if __name__ == '__main__':
    main()