#include "../klee/defs.h"
#include <assert.h>

#include "vm.h"

#ifdef VM_WITH_PRINT
#include <stdio.h>
#endif

struct vm_ctx_t
{
    unsigned __int8* p_bytecode;
    unsigned __int64 stack[VM_STACK_SIZE];
    unsigned __int64* p_stack;
    __int64 g_work_mem[VM_MEM_SIZE];
    __int64 check;
} g_vm;

static unsigned char * g_p_vm_bytecode;

static void __fastcall run_vm()
{
    unsigned __int8* p_bytecode_start; // rdi
    unsigned __int64* p_stack; // r9
    unsigned int _inst; // eax
    __int64 val5; // rax MAPDST
    unsigned __int64 addr; // rcx
    unsigned __int64* p_stack_m1; // r9
    _BOOL8 val3; // rcx
    unsigned __int64 val2; // rcx
    unsigned __int64 val; // rax
    __int64 _ch; // rbx

    p_bytecode_start = g_p_vm_bytecode;
    p_stack = g_vm.stack;

    g_vm.check = 0LL;
    g_vm.p_bytecode = g_p_vm_bytecode;
l_enter_vm:
    g_vm.p_stack = p_stack;
    while (1)
    {
        while (1)
        {
            _inst = *g_vm.p_bytecode++;
            if (_inst > opc_is_le)
                break;

            if (_inst == opc_is_le)
            {
                p_stack_m1 = p_stack - 1;
                g_vm.p_stack = p_stack_m1;

                val3 = *(p_stack_m1 - 1) <= *p_stack_m1;
            l_set_p_stackm1_m1_val3:
                *(p_stack_m1 - 1) = val3;
                goto l_p_stack_eq_vm_p_stack;
            }

            if (_inst > opc_add)
            {
                switch (_inst)
                {
                case opc_add_imm16_stack:
                    g_vm.p_bytecode += 2;
                    *(p_stack - 1) += *(g_vm.p_bytecode - 1) + ((unsigned __int64)*(g_vm.p_bytecode - 2) << 8);
                    goto l_p_stack_eq_vm_p_stack;
                case opc_sub:
                    g_vm.p_stack = p_stack - 1;
                    *(p_stack - 2) -= *(p_stack - 1);
                    goto l_p_stack_eq_vm_p_stack;
                case opc_div:
                    g_vm.p_stack = --p_stack;
                    // div by zero?
                    if (!*p_stack)
                        return;
                    val = *(p_stack - 1) / *p_stack;
                    goto l_push_val;
                case opc_mul:
                    g_vm.p_stack = --p_stack;
                    val = *p_stack * *(p_stack - 1);
                l_push_val:
                    *(p_stack - 1) = val;
                    goto l_p_stack_eq_vm_p_stack;
                case opc_jump_imm16:
                    // p_bytecode = p_bytecode_start + imm16
                    g_vm.p_bytecode = &p_bytecode_start[256 * (unsigned __int64)*g_vm.p_bytecode + g_vm.p_bytecode[1]];
                    break;
                case opc_jnz_imm16:
                    // jump if pop() != 0
                    --p_stack;
                    g_vm.p_bytecode += 2;
                    val2 = *(g_vm.p_bytecode - 1) + ((unsigned __int64)*(g_vm.p_bytecode - 2) << 8);
                    g_vm.p_stack = p_stack;
                    if (*p_stack)
                        goto l_set_p_set_p_bytecode;
                    break;
                case opc_jz_imm16:
                    // jmp if pop() == 0
                    --p_stack;
                    g_vm.p_bytecode += 2;
                    val2 = *(g_vm.p_bytecode - 1) + ((unsigned __int64)*(g_vm.p_bytecode - 2) << 8);
                    g_vm.p_stack = p_stack;
                    if (!*p_stack)
                        l_set_p_set_p_bytecode:
                    g_vm.p_bytecode = &p_bytecode_start[val2];
                    break;
                case opc_is_eq:
                    p_stack_m1 = p_stack - 1;
                    g_vm.p_stack = p_stack_m1;
                    val3 = *(p_stack_m1 - 1) == *p_stack_m1;
                    goto l_set_p_stackm1_m1_val3;
                case opc_is_less:
                    p_stack_m1 = p_stack - 1;
                    g_vm.p_stack = p_stack_m1;
                    val3 = *(p_stack_m1 - 1) < *p_stack_m1;
                    goto l_set_p_stackm1_m1_val3;
                default:
                    p_stack_m1 = p_stack - 1;
                    g_vm.p_stack = p_stack_m1;
                    if (_inst == opc_is_eq)
                        val3 = *(p_stack_m1 - 1) == *p_stack_m1;
                    else
                        val3 = *(p_stack_m1 - 1) < *p_stack_m1;
                    goto l_set_p_stackm1_m1_val3;
                }
            }
            else
            {
                if (_inst == opc_add)
                {
                    g_vm.p_stack = --p_stack;
                    val5 = *p_stack;
                    goto l_set_stack_add_val5;
                }

                // opcode zero
                if (!(_BYTE)_inst)
                    return;

                switch (_inst)
                {
                case opc_push_imm16:
                    g_vm.p_bytecode += 2;
                    *p_stack = *(g_vm.p_bytecode - 1) + ((unsigned __int64)*(g_vm.p_bytecode - 2) << 8);
                    goto l_stack_push;
                case opc_push_mem_imm16:
                    g_vm.p_bytecode += 2;
                    val5 = g_vm.g_work_mem[256 * (unsigned __int64)*(g_vm.p_bytecode - 2) + *(g_vm.p_bytecode - 1)];
                    goto l_push_val5;
                case opc_push_add_mem_imm16:
                    // note: no pop!
                    g_vm.p_bytecode += 2;
                    val5 = g_vm.g_work_mem[256 * (unsigned __int64)*(g_vm.p_bytecode - 2) + *(g_vm.p_bytecode - 1)];
                l_set_stack_add_val5:
                    *(p_stack - 1) += val5;
                    break;
                case opc_pop_mem_imm16:
                    g_vm.p_bytecode += 2;
                    addr = *(g_vm.p_bytecode - 1) + ((unsigned __int64)*(g_vm.p_bytecode - 2) << 8);
                    g_vm.p_stack = p_stack - 1; // pop
                    g_vm.g_work_mem[addr] = *(p_stack - 1);
                    break;
                case opc_push_mem:
                    g_vm.p_stack = --p_stack; // pop
                    val5 = g_vm.g_work_mem[*p_stack]; // val = mem[tos()]
                l_push_val5:
                    *p_stack = val5; // push
                l_stack_push:
                    p_stack = g_vm.p_stack + 1;
                    goto l_enter_vm;
                case opc_pop_mem:
                    g_vm.p_stack = p_stack - 1; // pop
                    val5 = *(p_stack - 1); // value
                    g_vm.p_stack = p_stack - 2; // pop
                    addr = *(p_stack - 2);
                    g_vm.g_work_mem[addr & 0xffff] = val5; // addr
                    break;
                case opc_push_copy:
                    // push tos()
                    val5 = *(p_stack - 1);
                    goto l_push_val5;
                case opc_pop_void:
                    --p_stack;
                    goto l_enter_vm;
                default:
                    assert(0);
                    --p_stack;
                    goto l_enter_vm;
                }
            l_p_stack_eq_vm_p_stack:
                p_stack = g_vm.p_stack;
            }
        }

        if (_inst > opc_mod)
            break;

        switch (_inst)
        {
        case opc_mod:
            g_vm.p_stack = p_stack - 1;
            *(p_stack - 2) %= *(p_stack - 1);
            goto l_p_stack_eq_vm_p_stack;
        case opc_is_greater:
            p_stack_m1 = p_stack - 1;
            g_vm.p_stack = p_stack_m1;
            val3 = *(p_stack_m1 - 1) > *p_stack_m1;
            goto l_set_p_stackm1_m1_val3;
        case opc_is_ge:
            p_stack_m1 = p_stack - 1;
            g_vm.p_stack = p_stack_m1;
            val3 = *(p_stack_m1 - 1) >= *p_stack_m1;
            goto l_set_p_stackm1_m1_val3;
        case opc_is_ge_imm16:
            g_vm.p_bytecode += 2;
            val = *(p_stack - 1) >= *(g_vm.p_bytecode - 1) + ((unsigned __int64)*(g_vm.p_bytecode - 2) << 8);
            goto l_push_val;
        }

        if (_inst != opc_pop_check)
        {
            if (_inst == opc_ret)
                return;

            if (_inst != opc_pop_check2)
            {
                if (_inst == opc_xor)
                {
                    g_vm.p_stack = p_stack - 1;
                    *(p_stack - 2) ^= *(p_stack - 1);
                }
                else
                {
                    g_vm.p_stack = p_stack - 1;
                    if (_inst == opc_or)
                        *(p_stack - 2) |= *(p_stack - 1);
                    else
                        *(p_stack - 2) &= *(p_stack - 1);
                }
                goto l_p_stack_eq_vm_p_stack;
            }
        }
        // case opc_pop_check:
        g_vm.p_stack = --p_stack;
        g_vm.check = *p_stack;
    }

    switch (_inst)
    {
    case opc_shl:
        g_vm.p_stack = p_stack - 1;
        *(p_stack - 2) <<= *(p_stack - 1);
        goto l_p_stack_eq_vm_p_stack;
    case opc_shr:
        g_vm.p_stack = p_stack - 1;
        *(p_stack - 2) >>= *(p_stack - 1);
        goto l_p_stack_eq_vm_p_stack;
    case opc_rotl32:
        g_vm.p_stack = --p_stack;
        val = (*(p_stack - 1) << *p_stack) | (*(p_stack - 1) >> (32 - *(_BYTE*)p_stack));
        goto l_set_val_cast_uint32;
    case opc_rotr32:
        g_vm.p_stack = --p_stack;
        val = (*(p_stack - 1) >> *p_stack) | (*(p_stack - 1) << (32 - *(_BYTE*)p_stack));
    l_set_val_cast_uint32:
        val = (unsigned int)val;
        goto l_push_val;
    case opc_rotl16:
        g_vm.p_stack = --p_stack;
        val = (unsigned __int16)((*((_WORD*)p_stack - 4) << *p_stack) | ((__int64)*(p_stack - 1) >> (16 - *(_BYTE*)p_stack)));
        goto l_push_val;
    case opc_rotr16:
        g_vm.p_stack = --p_stack;
        val = (unsigned __int16)(((__int64)*(p_stack - 1) >> *p_stack) | (*((_WORD*)p_stack - 4) << (16 - *(_BYTE*)p_stack)));
        goto l_push_val;
    case opc_rotl8:
        g_vm.p_stack = --p_stack;
        val = (unsigned __int8)((*((_BYTE*)p_stack - 8) << *p_stack) | ((__int64)*(p_stack - 1) >> (8 - *(_BYTE*)p_stack)));
        goto l_push_val;
    case opc_rotr8:
        g_vm.p_stack = --p_stack;
        val = (unsigned __int8)(((__int64)*(p_stack - 1) >> *p_stack) | (*((_BYTE*)p_stack - 8) << (8 - *(_BYTE*)p_stack)));
        goto l_push_val;
    case opc_print:
        // pop
        g_vm.p_stack = p_stack - 1;
#ifdef VM_WITH_PRINT
        _ch = *(p_stack - 1);
        printf("%c", _ch);

 /*       gST->ConOut->SetAttribute(gST->ConOut, 79uLL);
        ShellPrintEx(-1, -1, L"%c", _ch);
        gST->ConOut->SetAttribute(gST->ConOut, 71uLL);
 */       
#endif
        goto l_p_stack_eq_vm_p_stack;
    }
}

__int64 __fastcall vm_run(unsigned char* bytecode)
{
    g_p_vm_bytecode = bytecode;
    run_vm();
    return g_vm.check;
}

__int64 *__fastcall vm_getmem()
{
    return &g_vm.g_work_mem[0];
}