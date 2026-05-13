idaapi.msg_clear()

for oapi in obfs_apis.values():
    print(f'Caller {oapi.caller:x} --target--> {oapi.target:x}')

print(f'Total {len(obfs_apis)}')