import keystone

# We don't patch here. We just simulate a patch

idaapi.msg_clear()

iat_ea = IAT_BASE

for module in modules:
    if not module.apis:
        continue

    print(module.name)
    
    for api_name, oapis in module.apis.items():
        print(f'{iat_ea:x} {api_name}')
        for oapi in oapis:
            if oapi.sp_delta == 8:
                print(f' call cs:[{iat_ea:x}] ; {api_name}   caller: {oapi.caller:x} {oapi.real_target:x} --> {iat_ea:x}')        
        iat_ea += 8
