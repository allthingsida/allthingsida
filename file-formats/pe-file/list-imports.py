# PE import table dumper for IDA
# AllThingsIDA (c) Elias Bachaalany

import idaapi, idc

def main(base: int):
    dos_tp = idaapi.Appcall.typedobj('IMAGE_DOS_HEADER;')
    idd_tp = idaapi.Appcall.typedobj('IMAGE_DATA_DIRECTORY;')
    inh_tp = idaapi.Appcall.typedobj('IMAGE_NT_HEADERS;')
    iid_tp = idaapi.Appcall.typedobj('IMAGE_IMPORT_DESCRIPTOR;')

    ok, dos = dos_tp.retrieve(base)
    if not ok:
        return False

    inh_ea = base + dos.e_lfanew
    ok, inh = inh_tp.retrieve(inh_ea)
    if not ok:
        return False

    imp_idd = inh.OptionalHeader.DataDirectory['1']    
    if imp_idd.VirtualAddress == 0 or imp_idd.Size == 0:
        return (False, 'No imports')
    
    iid_ea     = base + imp_idd.VirtualAddress
    ok, iid = iid_tp.retrieve(iid_ea)
    if not ok:
        return (False, 'Error IDD')
    
    while True:
        ok, iid = iid_tp.retrieve(iid_ea)
        
        if not ok or iid.Name == 0:
            break

        name = idc.get_strlit_contents(iid.Name + base).decode('utf-8')
        print(f'DESC: {iid_ea:x} Name: {name}')
        
        iat_ea = iid.OriginalFirstThunk + base
        while True:
            td = idaapi.get_qword(iat_ea)
            if td == 0:
                break 
            
            if td & (1 << 63):
                print(f'  [{iat_ea:x}] ord: {td&0xffff:x}')
            else:
                ibn_ea = td + base
                hint = idaapi.get_word(ibn_ea)
                name = idc.get_strlit_contents(ibn_ea + 2).decode('utf-8')
                print(f'  [{iat_ea:x}] -> {name} ({hint})')

            iat_ea += 8
                
        iid_ea += iid_tp.size


idaapi.msg_clear()
main(idaapi.get_imagebase())        