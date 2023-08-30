idaapi.msg_clear()
for i, oapi in enumerate(obfs_apis.values(), start=1):
    if oapi.real_target != idaapi.BADADDR:
        idaapi.msg(f'#{i!s} ')
        display_trace(oapi)
