#include <stdio.h>
#include <string.h>
#include <memory>
#include <sstream>
#include <iomanip>
#include <set>

#define KEY_LENGTH 16
#define BYTECODE_SIZE 60  // Adjust based on actual size needed

// Mapping table: decryption key indices to bytecode array indices
static int mapping[KEY_LENGTH] = { 5, 4, 12, 11, 19, 18, 26, 25, 33, 32, 40, 39, 47, 46, 54, 53 };

//#include "gen/vm2.c"

#include "vm.h"

#include "utils_impl.cpp"

int main(int argc, char* argv[])
{
    if (argc < 2)
    {
        printf("Usage: %s <filename> [decryption_key]\n", argv[0]);
        return 1;
    }

    FILE* fp = fopen(argv[1], "rb");
    if (!fp)
    {
        perror("Error opening file");
        return 1;
    }

    uint32_t sig;
    fread(&sig, sizeof(sig), 1, fp);
    printf("Signature 0x%X\n", sig);
    if (sig != 'BT4C')
    {
        printf("Invalid file signature\n");
        return 1;
    }

    printf("Filename: %s\n", argv[1]);

    uint32_t data_size;
    fread(&data_size, sizeof(data_size), 1, fp);

    uint32_t pos_bytecode;
    fread(&pos_bytecode, sizeof(pos_bytecode), 1, fp);

    uint32_t bytecode_size;
    fread(&bytecode_size, sizeof(bytecode_size), 1, fp);

    std::unique_ptr<unsigned char[]> data(new unsigned char[data_size]);
    fread(data.get(), data_size, 1, fp);

    fseek(fp, pos_bytecode, SEEK_SET);
    std::unique_ptr<unsigned char[]> bytecode(new unsigned char[bytecode_size]);
    fread(bytecode.get(), bytecode_size, 1, fp);

    fclose(fp);

    printf("Data size: %u\n", data_size);
    printf("Bytecode size: %d @ 0x%x\n", bytecode_size, pos_bytecode);

    for (int i = 0; i < KEY_LENGTH; i++)
    {
        printf("%d: %02x @ 0x%x\n", i, bytecode[mapping[i]], mapping[i]);
    }

    char decrypt_key[KEY_LENGTH + 1] = "examplekey123456";  // Replace with actual key
    if (argc > 2)
    {
        strncpy(decrypt_key, argv[2], KEY_LENGTH);
        patch_decryption_key(decrypt_key, bytecode.get());
    }

    std::ostringstream oss;

    if (1 == 1)
    {
        oss.clear();
        buf_to_c_array(oss, bytecode.get(), bytecode_size, 16);
        printf("%s\n", oss.str().c_str());
        printf("----\n");
    }

    if (1 == 2)
    {
        oss.clear();
        buf_to_c_init(oss, bytecode.get(), bytecode_size);
        printf("%s\n", oss.str().c_str());
    }

    if (1 == 2)
    {
        oss.clear();
        buf_to_c_klee_assume(oss, bytecode.get(), bytecode_size);
        printf("%s\n", oss.str().c_str());
    }

    if (1 == 2)
    {
        auto p = bytecode.get();
        int r = (int)vm_run(p);
    }

    if (1 == 2)
    {
        unsigned char bc[] = {
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
            // ; push imm16
            // movzx rax, imm16
            // push rax

            /*2*/opc_push_mem_imm16, 0x11, 0x22,
            // ; push the contents of memory[imm16]
            // movzx rax, imm16 ; addr
            // mov rax, qword ptr [memory+rax]
            // push rax

            /*3*/opc_push_add_mem_imm16, 0x33, 0x44,
            // ; adds the contents of memory[imm16] to the top of the stack (pops the stack, adds, pushes the result)
            // movzx rax, imm16 ; addr
            // mov rax, qword ptr [memory+rax]
            // pop rbx ; tos()
            // add rax, rbx
            // push rax

            /*4*/opc_pop_mem_imm16, 0x00, 0x01,
            // ; pops the stack and stores the value in memory[imm16]
            // pop rbx ; stack value
            // mov rax, imm16 ; addr
            // mov qword ptr [memory+rax], rbx ; store stack value & pop

            /*5*/opc_push_mem,
            // ; push the contents of memory[pop()]
            // pop rax ; addr
            // mov rax, qword ptr [memory+rax]
            // push rax

            /*6*/opc_pop_mem,
            // ; pops a value, pop an address, store the value in memory[addr]
            // pop rax ; value
            // pop rbx ; addr16
            // and rbx, 0xffff
            // mov qword ptr [memory+rbx], rax

            /*7*/opc_push_copy,
            // ; push a copy of the top of the stack
            // pop rax
            // push rax ; copy
            // push rax ; copy

            /*8*/opc_pop_void,
            // ; pop the stack and discard the value
            // pop rax

            /*9*/opc_add,
            // ; pop two values, add them, push the result
            // pop rbx
            // pop rax
            // add rax, rbx
            // push rax

            /*10*/opc_add_imm16_stack, 0x50, 0x69,
            // ; pop a value, add imm16, push the result
            // pop rbx
            // mov rax, imm16 ; combine to single 'add' ;!
            // add rax, rbx
            // push rax

            /*11*/opc_sub,
            // ; pop value1, pop value2, then do value2 - value1, push the result
            // pop rax
            // pop rbx
            // sub rbx, rax
            // push rbx

            /*12*/opc_div,
            // ; pop two values, divide the second by the first, push the result
            // pop rbx ; divided by
            // pop rax ; dividend
            // idiv rbx
            // push rax

            /*13*/opc_mul,
            // ; pop two values, multiply them, push the result
            // pop rbx
            // pop rax
            // mul rax
            // push rax

            /*14*/opc_jump_imm16, 0x00, 0x00,
            // ; jump to imm16
            // mov rax, imm16
            // jmp rax
            // aka: jmp label_{imm16}

            /*15*/opc_jnz_imm16, 0x00, 0x00,
            // ; pop a value, if it's not zero, jump to imm16
            // pop rax
            // test rax, rax
            // jnz label_{imm16}

            /*16*/opc_jz_imm16, 0x00, 0x00,
            // ; pop a value, if it's zero, jump to imm16
            // pop rax
            // test rax, rax
            // jz label_{imm16}

            /*17*/opc_is_eq,
            // ; pop two values, compare them, push 1 if equal, 0 if not
            // pop rbx
            // pop rax
            // cmp rax, rbx
            // setz rax
            // push rax

            /*18*/opc_is_less,
            // ; pop two values, compare them, push 1 if less, 0 if not
            // pop rbx
            // pop rax
            // cmp rax, rbx
            // setl rax
            // push rax

            /*19*/opc_is_le,
            // ; pop value1, pop value2, push 1 if value2 <= value1, 0 if not
            // pop rbx
            // pop rax
            // cmp rax, rbx
            // setle rax
            // push rax

            /*20*/opc_is_greater,
            // ; pop value1, pop value2, push 1 if value2 > value1, 0 if not
            // pop rbx
            // pop rax
            // cmp rax, rbx
            // setg rax
            // push rax

            /*21*/opc_is_ge,
            // ; pop value1, pop value2, push 1 if value2 >= value1, 0 if not
            // pop rbx
            // pop rax
            // cmp rax, rbx
            // setge rax
            // push rax

            /*22*/opc_is_ge_imm16, 0x00, 0x00,
            // ; pop value1, compare to imm16, push 1 if value1 >= imm16, 0 if not
            // pop rbx
            // mov rax, imm16
            // cmp rbx, rax
            // setge rax
            // push rax

            /*23*/opc_pop_check,
            // ; store the top of the stack into the 'check' variable
            // pop rax
            // mov [check], rax

            /*24*/opc_ret,
            // ; return from vm
            // jmp label_ret

            /*25*/opc_pop_check2,
            // ; store the top of the stack into the 'check' variable
            // pop rax
            // mov [check], rax

            /*26*/opc_xor,
            // ; pop two values, xor them, push the result
            // pop rbx
            // pop rax
            // xor rax, rbx
            // push rax

            /*27*/opc_or,
            // ; pop two values, or them, push the result
            // pop rbx
            // pop rax
            // or rax, rbx
            // push rax

            /*28*/opc_and,
            // ; pop two values, and them, push the result
            // pop rbx
            // pop rax
            // and rax, rbx
            // push rax

            /*29*/opc_mod,
            // ; pop value1, pop value2, push value2 % value1
            // pop rbx
            // pop rax
            // xor rdx, rdx
            // div rbx
            // push rdx

            /*30*/opc_shl,
            // ; pop value1, pop value2, push value2 << value1
            // pop rbx
            // pop rax
            // shl rax, rbx
            // push rax

            /*31*/opc_shr,
            // ; pop value1, pop value2, push value2 >> value1
            // pop rbx
            // pop rax
            // shr rax, rbx
            // push rax

            /*32*/opc_rotl32,
            // ; pop value1, pop value2, push value2 rotated left by value1
            // pop rbx
            // pop rax
            // rol eax, ebx
            // push rax

            /*33*/opc_rotr32,
            // ; pop value1, pop value2, push value2 rotated right by value1
            // pop rbx
            // pop rax
            // ror eax, ebx
            // push rax

            /*34*/opc_rotl16,
            // ; pop value1, pop value2, push value2 rotated left by value1
            // pop rbx
            // pop rax
            // rol ax, bx
            // push rax

            /*35*/opc_rotr16,
            // ; pop value1, pop value2, push value2 rotated right by value1
            // pop rbx
            // pop rax
            // ror ax, bx
            // push rax

            /*36*/opc_rotl8,
            // ; pop value1, pop value2, push value2 rotated left by value1
            // pop rbx
            // pop rax
            // rol al, bl
            // push rax

            /*37*/opc_rotr8,
            // ; pop value1, pop value2, push value2 rotated right by value1
            // pop rbx
            // pop rax
            // ror al, bl
            // push rax

            /*38*/opc_print,
            // ; pop value, print it
            // pop rax
            // call print_rax

            /*39*/opc_done,
            // ; exit the vm
            // hlt
        };
        auto mem = vm_getmem();
        for (int i=0;i < VM_MEM_SIZE;++i)
            mem[i] = i & 0xffff;
        vm_run(bc);
    }
    //run_vm2();
    //printf("%d\n", (int)g_d_check);

    return 0;
}
