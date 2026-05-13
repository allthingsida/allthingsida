idaapi.msg_clear()

# We compute the number of IAT pointers we need
# Later, we manually created a 64 bits segment to store the IAT pointers

iat_ptrs = 0
for module in modules:
    if not module.apis:
        continue
    print(module.name)
    
    for api_name, oapis in module.apis.items():
        print(f'  {api_name}')
        iat_ptrs += 1

print(f'we need {iat_ptrs} pointer(s)')