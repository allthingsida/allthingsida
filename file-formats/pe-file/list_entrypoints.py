# PE entry points finder (OEP and TLS Callbacks)
# AllThingsIDA (c) Elias Bachaalany

import idautils, idaapi

from common import *

def get_module_entrypoints(name='', base=0, debug=False):
    entries = [0]
    if name:
        base = get_imgbase_by_name(name)

    if not base:
        return entries
        
    ok, idh = dos_tp.retrieve(base)
    if not ok:
        return entries
    
    # Read the IMAGE_NT_HEADERS
    ok, inh = inh_tp.retrieve(base + idh.e_lfanew)
    if not ok:
        return entries
    
    # Read the IMAGE_TLS_DIRECTORY   
    tls_idd = inh.OptionalHeader.DataDirectory['9']
    if tls_idd.VirtualAddress == 0 or tls_idd.Size == 0:
        tls_start_ea = idaapi.BADADDR
        tls_end_ea = idaapi.BADADDR
    else:
        tls_start_ea = base + tls_idd.VirtualAddress
        tls_end_ea = tls_start_ea + tls_idd.Size
    
    entries[0] = base + inh.OptionalHeader.AddressOfEntryPoint
    if debug:
        print(f"base={base:#x} e_lfanew={idh.e_lfanew:#x} AddressOfEntryPoint={inh.OptionalHeader.AddressOfEntryPoint:#x}")

    if tls_start_ea != idaapi.BADADDR:
        if debug:
            print(f"tls_start_ea={tls_start_ea:#x} tls_end_ea={tls_end_ea:#x}; size={tls_idd.Size:#x}")
        ok, itd = itd_tp.retrieve(tls_start_ea)
        if ok:
            callbacks_ea = get_ptr(itd.AddressOfCallBacks)
            if debug:
                print(f"!AddressOfCallBacks @ {callbacks_ea:#x}")

            # Read the TLS callbacks
            while True:
                cb_ea = get_ptr(callbacks_ea, deref=True)
                if cb_ea == 0:
                    break
                entries.append(cb_ea)
                callbacks_ea += ptr_size

    return entries

def test1():
    entry_ea, *tls_eas  = get_module_entrypoints('TlsApp', debug=True)
    if entry_ea:
        print(f"OEP={entry_ea:#x}")

    for ea in tls_eas:
        print(f"TLS callback={ea:#x}")

def dump_all():
    for m in idautils.Modules():
        entry_ea, *tls_eas = get_module_entrypoints(base=m.base)
        if entry_ea:
            print(f"{m.base:x}: {m.name} OEP={entry_ea:#x}")

        for idx, ea in enumerate(tls_eas, 1):
            print(f"  TLS callback #{idx}={ea:#x}")

if __name__ == '__main__':
    dump_all()
    #test1()