# Piglet VM specs semantics (asm) by Elias Bachaalany
specs = {
    1: {
        'name': 'pushi',
        'args_size': 2,
        'arguments': ['imm16'],
        'description': 'push imm16',
        'assembly': [
            'mov rax, imm16',
            'push rax'
        ]
    },
    2: {
        'name': 'loadi',
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
        'name': 'loadaddi',
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
        'name': 'storei',
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
        'name': 'load',
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
        'name': 'store',
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
        'name': 'dup',
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
        'name': 'discard',
        'args_size': 0,
        'arguments': [],
        'description': 'pop the stack and discard the value',
        'assembly': [
            'pop rax'
        ]
    },
    9: {
        'name': 'add',
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
        'name': 'addi',
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
        'name': 'sub',
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
        'name': 'div',
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
        'name': 'mul',
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
        'name': 'jmp',
        'args_size': 2,
        'arguments': ['imm16'],
        'description': 'jump to imm16',
        'assembly': [
            'jmp imm16'
        ]
    },
    15: {
        'name': 'jmp_if_true',
        'args_size': 2,
        'arguments': ['imm16'],
        'description': "pop a value, if it's not zero, jump to imm16",
        'assembly': [
            'pop rax',
            'test rax, rax',
            'jnz imm16'
        ]
    },
    16: {
        'name': 'jmp_if_false',
        'args_size': 2,
        'arguments': ['imm16'],
        'description': "pop a value, if it's zero, jump to imm16",
        'assembly': [
            'pop rax',
            'test rax, rax',
            'jz imm16'
        ]
    },
    17: {
        'name': 'is_eq',
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
        'name': 'is_less',
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
        'name': 'is_le',
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
        'name': 'is_greater',
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
        'name': 'is_ge',
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
        'name': 'is_ge_imm16',
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
        'name': 'pop_check',
        'args_size': 0,
        'arguments': [],
        'description': "store the top of the stack into the 'check' variable",
        'assembly': [
            'pop rax',
            'mov [check], rax'
        ]
    },
    24: {
        'name': 'ret',
        'args_size': 0,
        'arguments': [],
        'description': 'return from vm (done)',
        'assembly': [
            'jmp label_ret'
        ]
    },
    25: {
        'name': 'pop_check2',
        'args_size': 0,
        'arguments': [],
        'description': "store the top of the stack into the 'check' variable",
        'assembly': [
            'pop rax',
            'mov [check], rax'
        ]
    },
    26: {
        'name': 'xor',
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
        'name': 'or',
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
        'name': 'and',
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
        'name': 'mod',
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
        'name': 'shl',
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
        'name': 'shr',
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
        'name': 'rotl32',
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
        'name': 'rotr32',
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
        'name': 'rotl16',
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
        'name': 'rotr16',
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
        'name': 'rotl8',
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
        'name': 'rotr8',
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
        'name': 'print',
        'args_size': 0,
        'arguments': [],
        'description': 'pop value, print it',
        'assembly': [
            'pop rax',
            'call print_rax'
        ]
    },
    39: {
        'name': 'done',
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
