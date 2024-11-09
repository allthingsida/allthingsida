#include "vm.h"

int test_vm_1()
{
    unsigned char bc[] = 
    {
        //opc_none,

        /*1*/opc_push_imm16, 0x49, 0x33,
        /*1*/opc_push_imm16, 0x49, 0x33,
        /*1*/opc_push_imm16, 0x49, 0x33,
        /*1*/opc_push_imm16, 0x49, 0x33,
        /*1*/opc_push_imm16, 0x49, 0x33,
        /*1*/opc_push_imm16, 0x49, 0x33,
        /*1*/opc_push_imm16, 0x49, 0x33,
        /*1*/opc_push_imm16, 0x49, 0x33,
        /*1*/opc_push_imm16, 0x49, 0x33,
        /*1*/opc_push_imm16, 0x49, 0x33,
        /*1*/opc_push_imm16, 0x49, 0x33,
        /*1*/opc_push_imm16, 0x49, 0x33,
        /*1*/opc_push_imm16, 0x49, 0x33,
        /*1*/opc_push_imm16, 0x49, 0x33,
        /*1*/opc_push_imm16, 0x5f, 0x79,
        /*1*/opc_push_imm16, 0xff, 0xeb,
        /*1*/opc_push_imm16, 0xbe, 0xef,
        /*1*/opc_push_imm16, 0xde, 0xad,
        /*1*/opc_push_imm16, 0xf0, 0xf1,
        /*1*/opc_push_imm16, 0xf0, 0xf1,
        /*1*/opc_push_imm16, 0xf0, 0xf1,
        /*1*/opc_push_imm16, 0xf0, 0xf1,
        /*1*/opc_push_imm16, 0xf0, 0xf1,
        /*1*/opc_push_imm16, 0xf0, 0xf1,
        /*1*/opc_push_imm16, 0xf0, 0xf1,
        /*1*/opc_push_imm16, 0xf0, 0xf1,
        // movzx rax, imm16
        // push rax

        /*2*/opc_push_mem_imm16, 0x11, 0x22,
        // movzx rax, imm16
        // mov rax, qword ptr [memory+rax]
        // push rax

        /*3*/opc_push_add_mem_imm16, 0x33, 0x44,

        /*4*/opc_pop_mem_imm16, 0x00, 0x01,
        // mov rax, imm16 ; addr
        // pop rbx ; stack value
        // mov qword ptr [memory+rax], rbx ; store stack value & pop

        /*5*/opc_push_mem,
        // pop rax ; addr
        // mov rax, qword ptr [memory+rax]
        // push rax

        /*6*/opc_pop_mem,
        // pop rax ; value
        // pop rbx ; addr16
        // and rbx, 0xffff
        // mov qword ptr [memory+rbx], rax

        /*7*/opc_push_copy,
        // pop rax
        // push rax ; copy
        // push rax ; copy

        /*8*/opc_pop_void,
        // pop rax

        /*9*/opc_add,
        // pop rbx
        // pop rax
        // add rax, rbx
        // push rax

        /*10*/opc_add_imm16_stack, 0x50, 0x69,
        // mov rax, imm16
        // pop rbx
        // add rax, rbx
        // push rax

        /*11*/opc_sub,
        // pop rax
        // pop rbx
        // sub rbx, rax
        // push rbx

        /*12*/opc_div,
        // pop rbx ; divided by
        // pop rax ; dividend
        // idiv rbx
        // push rax

        /*13*/opc_mul,
        // pop rbx
        // pop rax
        // mul rax
        // push rax

        ///*14*/opc_jump_imm16, 0x00, 0x00,
        // mov rax, imm16
        // jmp rax
        // aka: jmp label_{imm16}

        ///*15*/opc_jnz_stack_imm16, 0x00, 0x00,
        // pop rax
        // test rax, rax
        // jnz label_{imm16}

        ///*16*/opc_jz_stack_imm16, 0x00, 0x00,
        // pop rax
        // test rax, rax
        // jz label_{imm16}

        /*17*/opc_is_eq,
        // pop rbx
        // pop rax
        // cmp rax, rbx
        // setz rax
        // push rax

        /*18*/opc_is_less,
        // pop rbx
        // pop rax
        // cmp rax, rbx
        // setl rax
        // push rax

        /*19*/opc_is_le,
        // pop rbx
        // pop rax
        // cmp rax, rbx
        // setle rax
        // push rax

        /*20*/opc_is_greater,
        // pop rbx
        // pop rax
        // cmp rax, rbx
        // setg rax
        // push rax

        /*21*/opc_is_ge,
        // pop rbx
        // pop rax
        // cmp rax, rbx
        // setge rax
        // push rax

        /*22*/opc_is_ge_imm16, 0x00, 0x00,
        // mov rax, imm16
        // pop rbx
        // cmp rbx, rax
        // setge rax
        // push rax

        /*23*/opc_pop_check,
        // pop rax
        // mov [check], rax

        ///*24*/opc_ret,
        //// jmp label_ret

        /*25*/opc_pop_check2,
        // pop rax
        // mov [check], rax

        /*26*/opc_xor,
        // pop rbx
        // pop rax
        // xor rax, rbx
        // push rax

        /*27*/opc_or,
        // pop rbx
        // pop rax
        // or rax, rbx
        // push rax

        /*28*/opc_and,
        // pop rbx
        // pop rax
        // and rax, rbx
        // push rax

        /*29*/opc_mod,
        // pop rbx
        // pop rax
        // xor rdx, rdx
        // div rbx
        // push rdx

        /*30*/opc_shl,
        // pop rbx
        // pop rax
        // shl rax, rbx
        // push rax

        /*31*/opc_shr,
        // pop rbx
        // pop rax
        // shr rax, rbx
        // push rax

        /*32*/opc_rotl32,
        // pop rbx
        // pop rax
        // rol eax, ebx
        // push rax

        /*33*/opc_rotr32,
        // pop rbx
        // pop rax
        // ror eax, ebx
        // push rax

        /*34*/opc_rotl16,
        // pop rbx
        // pop rax
        // rol ax, bx
        // push rax

        /*35*/opc_rotr16,
        // pop rbx
        // pop rax
        // ror ax, bx
        // push rax

        /*36*/opc_rotl8,
        // pop rbx
        // pop rax
        // rol al, bl
        // push rax

        /*37*/opc_rotr8,
        // pop rbx
        // pop rax
        // ror al, bl
        // push rax

        /*38*/opc_print,
        /*39*/opc_done,
    };
    auto mem = vm_getmem();
    for (int i = 0; i < VM_MEM_SIZE; ++i)
        mem[i] = i & 0xffff;
    vm_run(bc);

    return 0;
}
