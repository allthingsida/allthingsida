# Piglet VM specs semantics (asm) by Elias Bachaalany
specs = {
    1: {
        'name': 'opc_push_imm16',
        'pname': 'pushi',
        'friendly_name': 'push_imm16',
        'args_size': 2,
        'arguments': ['imm16'],
        'description': 'push imm16',
        'assembly': [
            'mov rax, imm16',
            'push rax'
        ]
    },
    2: {
        'name': 'opc_push_mem_imm16',
        'pname': 'loadi',
        'friendly_name': 'push_mem_imm16',
        'args_size': 2,
        'arguments': ['imm16'],
        'description': 'push the contents of memory[imm16]',
        'assembly': [
            'mov rax, imm16  ; addr',
            'shl rax, 3',
            'mov rax, qword [memory + rax]',
            'push rax'
        ]
    },
    3: {
        'name': 'opc_push_add_mem_imm16',
        'pname': 'loadaddi',
        'friendly_name': 'push_add_mem_imm16',
        'args_size': 2,
        'arguments': ['imm16'],
        'description': 'adds the contents of memory[imm16] to the top of the stack (pops the stack, adds, pushes the result)',
        'assembly': [
            'mov rax, imm16  ; addr',
            'shl rax, 3',
            'mov rax, qword [memory + rax]',
            'pop rbx  ; tos()',
            'add rax, rbx',
            'push rax'
        ]
    },
    4: {
        'name': 'opc_pop_mem_imm16',
        'pname': 'storei',
        'friendly_name': 'pop_mem_imm16',
        'args_size': 2,
        'arguments': ['imm16'],
        'description': 'pops the stack and stores the value in memory[imm16]',
        'assembly': [
            'pop rbx  ; stack value',
            'mov rax, imm16  ; addr',
            'shl rax, 3',
            'mov qword [memory + rax], rbx  ; store stack value & pop'
        ]
    },
    5: {
        'name': 'opc_push_mem',
        'pname': 'load',
        'friendly_name': 'push_mem',
        'args_size': 0,
        'arguments': [],
        'description': 'push the contents of memory[pop()]',
        'assembly': [
            'pop rax  ; addr',
            'shl rax, 3',
            'mov rax, qword [memory + rax]',
            'push rax'
        ]
    },
    6: {
        'name': 'opc_pop_mem',
        'pname': 'store',
        'friendly_name': 'pop_mem',
        'args_size': 0,
        'arguments': [],
        'description': 'pops a value, pop an address, store the value in memory[addr]',
        'assembly': [
            'pop rax  ; value',
            'pop rbx  ; addr16',
            'and rbx, 0xFFFF',
            'shl rbx, 3',
            'mov qword [memory + rbx], rax'
        ]
    },
    7: {
        'name': 'opc_push_copy',
        'pname': 'dup',
        'friendly_name': 'push_copy',
        'args_size': 0,
        'arguments': [],
        'description': 'push a copy of the top of the stack',
        'assembly': [
            'pop rax',
            'push rax  ; copy',
            'push rax  ; copy'
        ]
    },
    8: {
        'name': 'opc_pop_void',
        'pname': 'discard',
        'friendly_name': 'pop_void',
        'args_size': 0,
        'arguments': [],
        'description': 'pop the stack and discard the value',
        'assembly': [
            'pop rax'
        ]
    },
    9: {
        'name': 'opc_add',
        'friendly_name': 'add',
        'args_size': 0,
        'arguments': [],
        'description': 'pop two values, add them, push the result',
        'assembly': [
            'pop rbx',
            'pop rax',
            'add rax, rbx',
            'push rax'
        ]
    },
    10: {
        'name': 'opc_add_imm16_stack',
        'pname': 'addi',
        'friendly_name': 'add_imm16_stack',
        'args_size': 2,
        'arguments': ['imm16'],
        'description': 'pop a value, add imm16, push the result',
        'assembly': [
            'pop rbx',
            'mov rax, imm16',
            'add rax, rbx',
            'push rax'
        ]
    },
    11: {
        'name': 'opc_sub',
        'friendly_name': 'sub',
        'args_size': 0,
        'arguments': [],
        'description': 'pop value1, pop value2, then do value2 - value1, push the result',
        'assembly': [
            'pop rax  ; value1',
            'pop rbx  ; value2',
            'sub rbx, rax',
            'push rbx'
        ]
    },
    12: {
        'name': 'opc_div',
        'friendly_name': 'div',
        'args_size': 0,
        'arguments': [],
        'description': 'pop two values, divide the second by the first, push the result',
        'assembly': [
            'pop rbx  ; divisor',
            'pop rax  ; dividend',
            'xor rdx, rdx',
            'idiv rbx',
            'push rax'
        ]
    },
    13: {
        'name': 'opc_mul',
        'friendly_name': 'mul',
        'args_size': 0,
        'arguments': [],
        'description': 'pop two values, multiply them, push the result',
        'assembly': [
            'pop rbx',
            'pop rax',
            'mul rbx',
            'push rax'
        ]
    },
    14: {
        'name': 'opc_jump_imm16',
        'pname': 'jump',
        'friendly_name': 'jump_imm16',
        'args_size': 2,
        'arguments': ['imm16'],
        'description': 'jump to imm16',
        'assembly': [
            'jmp imm16'
            #'mov rax, imm16',
            #'jmp rax  ; jmp label_{imm16}'
        ]
    },
    15: {
        'name': 'opc_jnz_imm16',
        'pname': 'jump_if_true',
        'friendly_name': 'jnz_imm16',
        'args_size': 2,
        'arguments': ['imm16'],
        'description': "pop a value, if it's not zero, jump to imm16",
        'assembly': [
            'pop rax',
            'test rax, rax',
            #'jnz imm16  ; jnz label_{imm16}'
            'jnz imm16'
        ]
    },
    16: {
        'name': 'opc_jz_imm16',
        'pname': 'jump_if_false',
        'friendly_name': 'jz_imm16',
        'args_size': 2,
        'arguments': ['imm16'],
        'description': "pop a value, if it's zero, jump to imm16",
        'assembly': [
            'pop rax',
            'test rax, rax',
            'jz imm16'
            #'jz imm16  ; jz label_{imm16}'
        ]
    },
    17: {
        'name': 'opc_is_eq',
        'pname': 'equal',
        'friendly_name': 'is_eq',
        'args_size': 0,
        'arguments': [],
        'description': 'pop two values, compare them, push 1 if equal, 0 if not',
        'assembly': [
            'pop rbx',
            'pop rax',
            'cmp rax, rbx',
            'setz al',
            'movzx rax, al',
            'push rax'
        ]
    },
    18: {
        'name': 'opc_is_less',
        'pname': 'less',
        'friendly_name': 'is_less',
        'args_size': 0,
        'arguments': [],
        'description': 'pop two values, compare them, push 1 if less, 0 if not',
        'assembly': [
            'pop rbx',
            'pop rax',
            'cmp rax, rbx',
            'setl al',
            'movzx rax, al',
            'push rax'
        ]
    },
    19: {
        'name': 'opc_is_le',
        'pname': 'less_or_equal',
        'friendly_name': 'is_le',
        'args_size': 0,
        'arguments': [],
        'description': 'pop value1, pop value2, push 1 if value2 <= value1, 0 if not',
        'assembly': [
            'pop rbx  ; value1',
            'pop rax  ; value2',
            'cmp rax, rbx',
            'setle al',
            'movzx rax, al',
            'push rax'
        ]
    },
    20: {
        'name': 'opc_is_greater',
        'pname': 'greater',
        'friendly_name': 'is_greater',
        'args_size': 0,
        'arguments': [],
        'description': 'pop value1, pop value2, push 1 if value2 > value1, 0 if not',
        'assembly': [
            'pop rbx  ; value1',
            'pop rax  ; value2',
            'cmp rax, rbx',
            'setg al',
            'movzx rax, al',
            'push rax'
        ]
    },
    21: {
        'name': 'opc_is_ge',
        'pname': 'greater_or_equal',
        'friendly_name': 'is_ge',
        'args_size': 0,
        'arguments': [],
        'description': 'pop value1, pop value2, push 1 if value2 >= value1, 0 if not',
        'assembly': [
            'pop rbx  ; value1',
            'pop rax  ; value2',
            'cmp rax, rbx',
            'setge al',
            'movzx rax, al',
            'push rax'
        ]
    },
    22: {
        'name': 'opc_is_ge_imm16',
        'pname': 'greater_or_equali',
        'friendly_name': 'is_ge_imm16',
        'args_size': 2,
        'arguments': ['imm16'],
        'description': 'pop value1, compare to imm16, push 1 if value1 >= imm16, 0 if not',
        'assembly': [
            'pop rbx  ; value1',
            'mov rax, imm16',
            'cmp rbx, rax',
            'setge al',
            'movzx rax, al',
            'push rax'
        ]
    },
    23: {
        'name': 'opc_pop_check',
        'pname': 'pop_res',   
        'friendly_name': 'pop_check',
        'args_size': 0,
        'arguments': [],
        'description': "store the top of the stack into the 'check' variable",
        'assembly': [
            'pop rax',
            'mov [check], rax'
        ]
    },
    24: {
        'name': 'opc_ret',
        'pname': 'done',
        'friendly_name': 'ret',
        'args_size': 0,
        'arguments': [],
        'description': 'return from vm',
        'assembly': [
            'jmp label_ret'
        ]
    },
    25: {
        'name': 'opc_pop_check2',
        'pname': 'pop_res2',
        'friendly_name': 'pop_check2',
        'args_size': 0,
        'arguments': [],
        'description': "store the top of the stack into the 'check' variable",
        'assembly': [
            'pop rax',
            'mov [check], rax'
        ]
    },
    26: {
        'name': 'opc_xor',
        'friendly_name': 'xor',
        'args_size': 0,
        'arguments': [],
        'description': 'pop two values, xor them, push the result',
        'assembly': [
            'pop rbx',
            'pop rax',
            'xor rax, rbx',
            'push rax'
        ]
    },
    27: {
        'name': 'opc_or',
        'friendly_name': 'or',
        'args_size': 0,
        'arguments': [],
        'description': 'pop two values, or them, push the result',
        'assembly': [
            'pop rbx',
            'pop rax',
            'or rax, rbx',
            'push rax'
        ]
    },
    28: {
        'name': 'opc_and',
        'friendly_name': 'and',
        'args_size': 0,
        'arguments': [],
        'description': 'pop two values, and them, push the result',
        'assembly': [
            'pop rbx',
            'pop rax',
            'and rax, rbx',
            'push rax'
        ]
    },
    29: {
        'name': 'opc_mod',
        'friendly_name': 'mod',
        'args_size': 0,
        'arguments': [],
        'description': 'pop value1, pop value2, push value2 % value1',
        'assembly': [
            'pop rbx  ; value1',
            'pop rax  ; value2',
            'xor rdx, rdx',
            'div rbx',
            'push rdx'
        ]
    },
    30: {
        'name': 'opc_shl',
        'friendly_name': 'shl',
        'args_size': 0,
        'arguments': [],
        'description': 'pop value1, pop value2, push value2 << value1',
        'assembly': [
            'pop rbx  ; value1 (shift amount)',
            'pop rax  ; value2',
            'mov cl, bl',
            'shl rax, cl',
            'push rax'
        ]
    },
    31: {
        'name': 'opc_shr',
        'friendly_name': 'shr',
        'args_size': 0,
        'arguments': [],
        'description': 'pop value1, pop value2, push value2 >> value1',
        'assembly': [
            'pop rbx  ; value1 (shift amount)',
            'pop rax  ; value2',
            'mov cl, bl',
            'shr rax, cl',
            'push rax'
        ]
    },
    32: {
        'name': 'opc_rotl32',
        'friendly_name': 'rotl32',
        'args_size': 0,
        'arguments': [],
        'description': 'pop value1, pop value2, push value2 rotated left by value1',
        'assembly': [
            'pop rbx  ; value1',
            'pop rax  ; value2',
            'mov cl, bl',
            'rol eax, cl',
            'push rax'
        ]
    },
    33: {
        'name': 'opc_rotr32',
        'friendly_name': 'rotr32',
        'args_size': 0,
        'arguments': [],
        'description': 'pop value1, pop value2, push value2 rotated right by value1',
        'assembly': [
            'pop rbx  ; value1',
            'pop rax  ; value2',
            'mov cl, bl',
            'ror eax, cl',
            'push rax'
        ]
    },
    34: {
        'name': 'opc_rotl16',
        'friendly_name': 'rotl16',
        'args_size': 0,
        'arguments': [],
        'description': 'pop value1, pop value2, push value2 rotated left by value1',
        'assembly': [
            'pop rbx  ; value1',
            'pop rax  ; value2',
            'mov cl, bl',
            'rol ax, cl',
            'push rax'
        ]
    },
    35: {
        'name': 'opc_rotr16',
        'friendly_name': 'rotr16',
        'args_size': 0,
        'arguments': [],
        'description': 'pop value1, pop value2, push value2 rotated right by value1',
        'assembly': [
            'pop rbx  ; value1',
            'pop rax  ; value2',
            'mov cl, bl',
            'ror ax, cl',
            'push rax'
        ]
    },
    36: {
        'name': 'opc_rotl8',
        'friendly_name': 'rotl8',
        'args_size': 0,
        'arguments': [],
        'description': 'pop value1, pop value2, push value2 rotated left by value1',
        'assembly': [
            'pop rbx  ; value1',
            'pop rax  ; value2',
            'mov cl, bl',
            'rol al, cl',
            'push rax'
        ]
    },
    37: {
        'name': 'opc_rotr8',
        'friendly_name': 'rotr8',
        'args_size': 0,
        'arguments': [],
        'description': 'pop value1, pop value2, push value2 rotated right by value1',
        'assembly': [
            'pop rbx  ; value1',
            'pop rax  ; value2',
            'mov cl, bl',
            'ror al, cl',
            'push rax'
        ]
    },
    38: {
        'name': 'opc_print',
        'friendly_name': 'print',
        'args_size': 0,
        'arguments': [],
        'description': 'pop value, print it',
        'assembly': [
            'pop rax',
            'call print_rax'
        ]
    },
    39: {
        'name': 'opc_done',
        'friendly_name': 'done',
        'args_size': 0,
        'arguments': [],
        'description': 'exit the vm',
        'assembly': [
            'hlt'
        ]
    }
}

# Substitutions:

# 'memory' -> 'rsi'
# 'check' -> 'rdi'
# 'label_ret' -> 'label_ret:'
# 'imm16' -> actual bytes from the bytecode
# push_imm16, push_imm16, pop_mem -> mov [memory + imm16_1], imm16_2
