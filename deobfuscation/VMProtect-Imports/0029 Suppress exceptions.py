# Disable all exceptions

e = idaapi.retrieve_exceptions()
for ex in e:
    ex.flags = idaapi.EXC_SILENT
idaapi.store_exceptions()