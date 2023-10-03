# PEB/_LDR_DATA_TABLE_ENTRY module enumeration in "Initialization Order"
#
# by Elias Bachaalany (c) AllThingsIDA
#

import idaapi

RtlGetCurrentPeb = idaapi.Appcall.proto("ntdll_RtlGetCurrentPeb", "_PEB *RtlGetCurrentPeb();")

peb_tp           = idaapi.Appcall.typedobj('_PEB;')
peb_ldr_data_tp  = idaapi.Appcall.typedobj('_PEB_LDR_DATA;')
tbl_entry_tp     = idaapi.Appcall.typedobj('_LDR_DATA_TABLE_ENTRY;')

def main(peb_ea=0):
    is_64bits = idaapi.inf_is_64bit()
    get_ptr  = lambda ea: idaapi.get_qword(ea) if is_64bits else idaapi.get_dword(ea)
    ptr_size = 8 if is_64bits else 4

    if peb_ea == 0:
        peb_ea = RtlGetCurrentPeb().__at__

    ok, peb = peb_tp.retrieve(peb_ea)

    list_start = peb.Ldr.InInitializationOrderModuleList.__at__

    print(f"PEB                                     @ {peb.__at__:x}")
    print(f"PEB.Ldr                                 @ {peb.Ldr.__at__:x}")
    print(f"PEB.Ldr.InInitializationOrderModuleList @ {list_start:x}")

    print('------')

    entry_ea = peb.Ldr.InInitializationOrderModuleList.Flink.__at__
    i = 1
    while True:
        ok, entry = tbl_entry_tp.retrieve(entry_ea - (0x20 if is_64bits else 0x10))
        name_ea = get_ptr(entry.FullDllName.__at__ + ptr_size) # UNICODE_STRING.Buffer
        dll_name = idaapi.get_strlit_contents(name_ea, -1, idaapi.STRTYPE_C_16).decode()
        base = entry.DllBase.value if is_64bits else entry.DllBase

        print(f'ENTRY {entry.__at__:x} #{i}: BASE: {base:x} {dll_name}')
        entry_ea = get_ptr(entry.InInitializationOrderLinks.__at__)
        if entry_ea == list_start:
            break
        i += 1

idaapi.msg_clear()
main()

