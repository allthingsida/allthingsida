idaapi.msg_clear()

for module in modules:
    if not module.apis:
        continue
    print(module.name)
    
    for api_name, oapis in module.apis.items():
        print(f'  {api_name}')
        
        for oapi in oapis:
            print(f'    caller: {oapi.caller:x} sp_delta={oapi.sp_delta:x} return_address: {oapi.return_address:x}')