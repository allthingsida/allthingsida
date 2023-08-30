import keystone

ks = keystone.Ks(keystone.KS_ARCH_X86, keystone.KS_MODE_64)

idaapi.msg_clear()

iat_ea = IAT_BASE

for module in modules:
    if not module.apis:
        continue

    for api_name, oapis in module.apis.items():
        for oapi in oapis:
            if oapi.sp_delta == 8:
                patch_dst = oapi.caller
            elif oapi.sp_delta == 0:
                patch_dst = oapi.caller - 1
            else:
                continue
            asm_code = f'call [0x{iat_ea:x}]'    

            b, ok = ks.asm(asm_code, patch_dst)
            if not ok:
                print(f'{patch_dst:x}: {asm_code} !!! FAILED')
                continue
            if len(b) != 6:
                print(f'{patch_dst:x}: {asm_code} !!! NOT GOOD')
                continue
            
            code = bytes(b)
            idaapi.patch_bytes(patch_dst, code)
            print(f'{patch_dst:x}: {asm_code}')
            
                
        iat_ea += 8
