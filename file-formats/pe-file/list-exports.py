# PE export table dumper for IDA
# by Elias Bachaalany (c) AllThingsIDA

import idaapi
import idc

dos_tp = idaapi.Appcall.typedobj('IMAGE_DOS_HEADER;')
idd_tp = idaapi.Appcall.typedobj('IMAGE_DATA_DIRECTORY;')
inh_tp = idaapi.Appcall.typedobj('IMAGE_NT_HEADERS;')
ied_tp = idaapi.Appcall.typedobj('IMAGE_EXPORT_DIRECTORY;')

def main(base):
    ok, dos = dos_tp.retrieve(base)
    if not ok:
        return (False, 'Error DOS')
  
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
    
    print(f'IED: {ied_ea:x} NumberOfFunctions={ied.NumberOfFunctions} AddressOfFunctions: {funcs_ea:x}; Name: {dll_name}')
    
    for i in range(ied.NumberOfFunctions):
        func_rva = idaapi.get_dword(funcs_ea + i*4)
        if func_rva == 0:
            continue # skip unused

        func_ea = func_rva + base
        func_ord = obase + i
        
        name_idx = ords_tbl.get(i, -1)

        if ied_ea <= func_ea <= ied_end_ea:
            fwd_name = idc.get_strlit_contents(func_ea).decode('utf-8')
            print(f'Ord: #{func_ord} {names_tbl.get(name_idx, "")} --> {fwd_name}')               
            continue

        if name_idx == -1:
            print(f'{func_ea:x} Ord: #{func_ord}')
        else:
            print(f'{func_ea:x} Ord: #{func_ord} {names_tbl[name_idx]}')        

    return (True, None)

# ----------------------------
idaapi.msg_clear()
ok, err = main(idaapi.get_imagebase())
if not ok:
    print(f'error: {err}')