# PE file common functions
# AllThingsIDA (c) Elias Bachaalany

import idaapi, idautils

is_64bits = idaapi.inf_is_64bit()
ptr_size = 8 if is_64bits else 4

try:
    idaapi.add_til('mssdk64_win10' if ptr_size == 8 else 'mssdk_win10', idaapi.ADDTIL_SILENT)
    dos_tp = idaapi.Appcall.typedobj('IMAGE_DOS_HEADER;')
    inh_tp = idaapi.Appcall.typedobj('IMAGE_NT_HEADERS;')
    idd_tp = idaapi.Appcall.typedobj('IMAGE_DATA_DIRECTORY;')
    ied_tp = idaapi.Appcall.typedobj('IMAGE_EXPORT_DIRECTORY;')
    iid_tp = idaapi.Appcall.typedobj('IMAGE_IMPORT_DESCRIPTOR;')
    itd_tp = idaapi.Appcall.typedobj('IMAGE_TLS_DIRECTORY;')

    print("Successfully loaded the required TILs and types.")
except Exception as e:
    msg = f"Failed to load the required TIL: {e!s}"
    print(msg)
    raise e


def get_ptr(valobj, deref=False):
    if isinstance(valobj, idaapi.PyIdc_cvt_int64__):
        val = valobj.value
    else:
        val = valobj

    if deref:
        return idaapi.get_qword(val) if is_64bits else idaapi.get_dword(val)
    
    return val


def get_imgbase_by_name(name):
    name = name.lower()
    modules = [m for m in idautils.Modules() if m.name.lower().find(name) != -1]
    return 0 if not modules else modules[0].base
