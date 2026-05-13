# Group and resolve API names

from collections import defaultdict

idaapi.msg_clear()

# Find and group
for module in modules:
    parts = os.path.splitext(os.path.basename(module.name))
    dn_prefix_len = len(parts[0]) + 1 # '_'
    module.apis = defaultdict(list)
    
    module_start, module_end = module.base, module.base + module.size
    
    for oapi in obfs_apis.values():
        if (oapi.real_target != idaapi.BADADDR and
            module_start < oapi.real_target < module_end and
            module.base != main_module.base and
            (oapi.sp_delta == 0 or oapi.sp_delta == 8)):
            
            api_name = idaapi.get_name(oapi.real_target)
            api_name = api_name[dn_prefix_len:]
            module.apis[api_name].append(oapi)
            
            
