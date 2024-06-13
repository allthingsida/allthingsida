# PE relocation dumper for IDA
# AllThingsIDA (c) Elias Bachaalany

# Reference: https://learn.microsoft.com/en-us/windows/win32/debug/pe-format#the-reloc-section-image-only

import idaapi, idc, idautils

import common
from common import *

# ---------------------------------------------------------------------------
def list_relocs_with_ida():
    idaapi.msg_clear()

    ea = idaapi.get_first_fixup_ea()
    while ea != idaapi.BADADDR:
        fd = idaapi.fixup_data_t()
        if idaapi.get_fixup(fd, ea):
            print(f"Fixup at {ea:#x}: type={fd.get_type()}, flags={fd.get_flags()}")
        ea = idaapi.get_next_fixup_ea(ea)

def dump_pe_relocs(base):
    ok, dos = dos_tp.retrieve(base)
    if not ok:
        return (False, 'Error DOS')
  
    inh_ea = base + dos.e_lfanew
    ok, inh = inh_tp.retrieve(inh_ea)
    if not ok:
        return (False, 'Error INH')
    
    reloc_idd = inh.OptionalHeader.DataDirectory['5'] # IMAGE_DIRECTORY_ENTRY_BASERELOC
    if reloc_idd.VirtualAddress == 0 or reloc_idd.Size == 0:
        return (False, 'No relocations')
    
    reloc_ea     = base + reloc_idd.VirtualAddress
    reloc_end_ea = reloc_ea + reloc_idd.Size
    
    iblock = 1
    while reloc_ea < reloc_end_ea:
        ok, ibr = ibr_tp.retrieve(reloc_ea)
        if not ok:
            return (False, 'Error retrieving image base relocation block')
        
        nb_entries = (ibr.SizeOfBlock - ibr_tp.size) // 2
        print(f'#{iblock:04d} Reloc Block: {reloc_ea:x} Size: {ibr.SizeOfBlock} ({nb_entries} entries); Base RVA: {ibr.VirtualAddress:x}'
              f' (VA {base + ibr.VirtualAddress:x})')
        
        ea = reloc_ea + ibr_tp.size
        for i in range(nb_entries):
            entry = idaapi.get_word(ea)
            type = entry >> 12
            offset = entry & 0xFFF
            # IMAGE_REL_BASED_ABSOLUTE (padding)
            if type != 0:
                print(f'   #{i+1:04d} entry_ea: {ea:x} Type: {reltype_to_str(type)} ({type}) Offset: {offset} --> Fixup EA {base + ibr.VirtualAddress + offset:x}')
            ea += 2
        
        reloc_ea += ibr.SizeOfBlock
        iblock += 1

    return (True, None)

# ---------------------------------------------------------------------------
def dump_all_relocs_from_memory():
    if idaapi.get_process_state() != idaapi.DSTATE_SUSP:
        print('Please suspend the process first')
        return
    
    idaapi.msg_clear()
    print(msg := 'Dumping modules relocations...')
    print('~' * len(msg))
    for m in idautils.Modules():
        print(f'!BASE: {m.base:x} Name: {m.name}')
        dump_pe_relocs(m.base)
        print('-' * 80)

# ---------------------------------------------------------------------------
def main():
    idaapi.msg_clear()
    dump_pe_relocs(idaapi.get_imagebase())

if __name__ == '__main__':
    main()
