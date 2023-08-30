idaapi.msg_clear()

# This is the address of the segment start (we created manually) to
# store the IAT pointers

IAT_BASE = 0x7FF764D02000

iat_ea = IAT_BASE

for module in modules:
    if not module.apis:
        continue
    print(module.name)
    
    for api_name, oapis in module.apis.items():
        print(f'{iat_ea:x} {api_name}')
        idaapi.set_name(iat_ea, api_name, idaapi.SN_FORCE)
        iat_ea += 8
