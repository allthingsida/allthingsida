#pragma once

#define VM_MEM_SIZE 65536
#define VM_STACK_SIZE 256

enum vm_codes
{
    opc_none = 0u,
    opc_push_imm16 = 1u,
    opc_push_mem_imm16 = 2u,
    opc_push_add_mem_imm16 = 3u,
    opc_pop_mem_imm16 = 4u,          ///< store stack into memory address
    opc_push_mem = 5u,
    opc_pop_mem = 6u,
    opc_push_copy = 7u,                  ///< push a copy of tos
    opc_pop_void = 8u,                    ///< pop and throw away
    opc_add = 9u,
    opc_add_imm16_stack = 10u,
    opc_sub = 11u,
    opc_div = 12u,
    opc_mul = 13u,
    opc_jump_imm16 = 14u,
    opc_jnz_imm16 = 15u,
    opc_jz_imm16 = 16u,
    opc_is_eq = 17u,
    opc_is_less = 18u,
    opc_is_le = 19u,
    opc_is_greater = 20u,
    opc_is_ge = 21u,
    opc_is_ge_imm16 = 22u,
    opc_pop_check = 23u,
    opc_ret = 24u,
    opc_pop_check2 = 25u,
    opc_xor = 26u,
    opc_or = 27u,
    opc_and = 28u,
    opc_mod = 29u,
    opc_shl = 30u,
    opc_shr = 31u,
    opc_rotl32 = 32u,
    opc_rotr32 = 33u,
    opc_rotl16 = 34u,
    opc_rotr16 = 35u,
    opc_rotl8 = 36u,
    opc_rotr8 = 37u,
    opc_print = 38u,
    opc_done = 39u
};

__int64 *__fastcall vm_getmem();
__int64 __fastcall vm_run(unsigned char* bytecode);
