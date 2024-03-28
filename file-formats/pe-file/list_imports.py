# PE import table dumper for IDA
# AllThingsIDA (c) Elias Bachaalany

import idaapi, idc, idautils

from common import *

def dump_imports(base: int):
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

    global iid
    iid_ea  = base + imp_idd.VirtualAddress
    ok, iid = iid_tp.retrieve(iid_ea)
    if not ok:
        return (False, 'Error IDD')

    while True:
        ok, iid = iid_tp.retrieve(iid_ea)

        if not ok or iid.Name == 0:
            break

        name = idc.get_strlit_contents(iid.Name + base).decode('utf-8')

        try:
            iat_ea = iid.OriginalFirstThunk + base
        except:
            iat_ea = get_ptr(iid.__at__, deref=True) + base

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

            iat_ea += ptr_size

        iid_ea += iid_tp.size


def main():
    idaapi.msg_clear()
    print(msg := 'Dumping imports...')
    print('~' * len(msg))
    for m in idautils.Modules():
        print(f'BASE: {m.base:x} Name: {m.name}')
        dump_imports(m.base)
        print('-' * 80)

if __name__ == '__main__':
    main()