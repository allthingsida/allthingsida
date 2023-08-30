idaapi.msg_clear()
for oapi in obfs_apis.values():
    if oapi.real_target != idaapi.BADADDR:
        print(f'Caller {oapi.caller:x} --real target--> {oapi.real_target:x}')