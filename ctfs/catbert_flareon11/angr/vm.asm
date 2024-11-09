.data

vm_ctx_t struct
    p_bytecode QWORD ?                
    stack QWORD 256 DUP (?)   
    p_stack QWORD ?         
    g_work_mem QWORD 65536 DUP (?) 
    check QWORD ?            
vm_ctx_t ENDS

g_p_vm_bytecode dq 0                    ; DATA XREF: run_vm+15

g_vm            vm_ctx_t <0>            ; DATA XREF: run_vm+2B

.code


get_d_check PROC
    mov     rax, g_vm.check
    ret
get_d_check ENDP

set_bytecode PROC
    mov     g_p_vm_bytecode, rcx
    ret
set_bytecode ENDP

; void __fastcall run_vm()
                public run_vm
run_vm          proc

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                mov     [rsp+arg_10], rdi
                push    r14
                sub     rsp, 20h
                mov     rdi, g_p_vm_bytecode

                lea     r9, g_vm.stack
                and     g_vm.check, 0
                lea     r14, g_vm
                mov     g_vm.p_bytecode, rdi
                mov     esi, 8


loc_312B2:                              ; CODE XREF: run_vm+B9↓j run_vm+1CE↓j
                mov     g_vm.p_stack, r9


loc_312B9:                              ; CODE XREF: run_vm+291↓j run_vm+2C8↓j ...
                mov     rdx, g_vm.p_bytecode
                movzx   eax, byte ptr [rdx]
                inc     g_vm.p_bytecode
                mov     ecx, eax
                cmp     eax, 13h
                ja      loc_3160B

                jz      loc_315F0

                cmp     eax, 9
                ja      loc_31456

                jz      loc_31447

                test    al, al
                jz      loc_31907

                sub     ecx, 1
                jz      loc_31414

                sub     ecx, 1
                jz      loc_313E6

                sub     ecx, 1
                jz      loc_313B4

                sub     ecx, 1
                jz      short loc_31379

                sub     ecx, 1
                jz      short loc_3135F

                sub     ecx, 1
                jz      short loc_31338

                sub     ecx, 1
                jz      short loc_3132F

                cmp     ecx, 1
                jnz     loc_31919

                sub     r9, rsi
                jmp     short loc_312B2

; ---------------------------------------------------------------------------

loc_3132F:                              ; CODE XREF: run_vm+AB
                mov     rax, [r9-8]
                jmp     loc_3140F

; ---------------------------------------------------------------------------

loc_31338:                              ; CODE XREF: run_vm+A6
                sub     r9, rsi
                mov     g_vm.p_stack, r9
                mov     rcx, [r9]
                sub     r9, rsi
                mov     g_vm.p_stack, r9
                mov     rax, [r9]
                mov     [r14+rax*8+810h], rcx
                jmp     loc_318FB

; ---------------------------------------------------------------------------

loc_3135F:                              ; CODE XREF: run_vm+A1
                sub     r9, rsi
                mov     g_vm.p_stack, r9
                mov     rax, [r9]
                mov     rax, [r14+rax*8+810h]
                jmp     loc_3140F

; ---------------------------------------------------------------------------

loc_31379:                              ; CODE XREF: run_vm+9C
                mov     rdx, g_vm.p_bytecode
                add     rdx, 2
                mov     g_vm.p_bytecode, rdx
                movzx   eax, byte ptr [rdx-1]
                movzx   ecx, byte ptr [rdx-2]
                shl     rcx, 8
                add     rcx, rax
                sub     r9, rsi
                mov     g_vm.p_stack, r9
                mov     rax, [r9]
                mov     [r14+rcx*8+810h], rax
                jmp     loc_318FB

; ---------------------------------------------------------------------------

loc_313B4:                              ; CODE XREF: run_vm+93
                mov     rdx, g_vm.p_bytecode
                add     rdx, 2
                mov     g_vm.p_bytecode, rdx
                movzx   eax, byte ptr [rdx-1]
                movzx   ecx, byte ptr [rdx-2]
                shl     rcx, 8
                add     rcx, rax
                mov     rax, [r14+rcx*8+810h]


loc_313DD:                              ; CODE XREF: run_vm+1E0↓j
                add     [r9-8], rax
                jmp     loc_318FB

; ---------------------------------------------------------------------------

loc_313E6:                              ; CODE XREF: run_vm+8A
                mov     rdx, g_vm.p_bytecode
                add     rdx, 2
                mov     g_vm.p_bytecode, rdx
                movzx   eax, byte ptr [rdx-1]
                movzx   ecx, byte ptr [rdx-2]
                shl     rcx, 8
                add     rcx, rax
                mov     rax, [r14+rcx*8+810h]


loc_3140F:                              ; CODE XREF: run_vm+BF run_vm+100
                mov     [r9], rax
                jmp     short loc_31438

; ---------------------------------------------------------------------------

loc_31414:                              ; CODE XREF: run_vm+81
                mov     rdx, g_vm.p_bytecode
                add     rdx, 2
                mov     g_vm.p_bytecode, rdx

                movzx   ecx, byte ptr [rdx-2]
                movzx   eax, byte ptr [rdx-1]
                shl     rcx, 8
                add     rcx, rax
                mov     [r9], rcx


loc_31438:                              ; CODE XREF: run_vm+19E
                mov     r9, g_vm.p_stack
                add     r9, rsi
                jmp     loc_312B2

; ---------------------------------------------------------------------------

loc_31447:                              ; CODE XREF: run_vm+70
                sub     r9, rsi
                mov     g_vm.p_stack, r9
                mov     rax, [r9]
                jmp     short loc_313DD

; ---------------------------------------------------------------------------

loc_31456:                              ; CODE XREF: run_vm+6A
                sub     ecx, 0Ah
                jz      loc_315C6

                sub     ecx, 1
                jz      loc_315B0

                sub     ecx, 1
                jz      loc_3158A

                sub     ecx, 1
                jz      loc_31576

                sub     ecx, 1
                jz      loc_31552

                sub     ecx, 1
                jz      loc_3150D

                sub     ecx, 1
                jz      short loc_314D6

                sub     ecx, 1
                jz      short loc_314B7

                cmp     ecx, 1
                jnz     loc_31919

                sub     r9, rsi
                xor     ecx, ecx
                mov     g_vm.p_stack, r9
                mov     rax, [r9]
                cmp     [r9-8], rax
                setb    cl
                jmp     short loc_314CD

; ---------------------------------------------------------------------------

loc_314B7:                              ; CODE XREF: run_vm+220
                sub     r9, rsi
                xor     ecx, ecx
                mov     g_vm.p_stack, r9
                mov     rax, [r9]
                cmp     [r9-8], rax
                setz    cl


loc_314CD:                              ; CODE XREF: run_vm+241 run_vm+392↓j ...
                mov     [r9-8], rcx
                jmp     loc_318FB

; ---------------------------------------------------------------------------

loc_314D6:                              ; CODE XREF: run_vm+21B
                mov     rdx, g_vm.p_bytecode
                sub     r9, rsi
                add     rdx, 2
                mov     g_vm.p_bytecode, rdx
                movzx   ecx, byte ptr [rdx-2]
                movzx   eax, byte ptr [rdx-1]
                shl     rcx, 8
                add     rcx, rax
                mov     g_vm.p_stack, r9
                cmp     qword ptr [r9], 0
                jnz     loc_312B9

                jmp     short loc_31542

; ---------------------------------------------------------------------------

loc_3150D:                              ; CODE XREF: run_vm+212
                mov     rdx, g_vm.p_bytecode
                sub     r9, rsi
                add     rdx, 2
                mov     g_vm.p_bytecode, rdx
                movzx   ecx, byte ptr [rdx-2]
                movzx   eax, byte ptr [rdx-1]
                shl     rcx, 8
                add     rcx, rax
                mov     g_vm.p_stack, r9
                cmp     qword ptr [r9], 0
                jz      loc_312B9


loc_31542:                              ; CODE XREF: run_vm+297
                lea     rax, [rcx+rdi]
                mov     g_vm.p_bytecode, rax
                jmp     loc_312B9

; ---------------------------------------------------------------------------

loc_31552:                              ; CODE XREF: run_vm+209
                mov     rdx, g_vm.p_bytecode
                movzx   eax, byte ptr [rdx]
                movzx   ecx, byte ptr [rdx+1]
                shl     rax, 8
                add     rax, rdi
                add     rcx, rax
                mov     g_vm.p_bytecode, rcx
                jmp     loc_312B9

; ---------------------------------------------------------------------------

loc_31576:                              ; CODE XREF: run_vm+200
                sub     r9, rsi
                mov     g_vm.p_stack, r9
                mov     rax, [r9-8]
                imul    rax, [r9]
                jmp     short loc_315A7

; ---------------------------------------------------------------------------

loc_3158A:                              ; CODE XREF: run_vm+1F7
                sub     r9, rsi
                mov     g_vm.p_stack, r9
                cmp     qword ptr [r9], 0
                jz      loc_3190E

                mov     rax, [r9-8]
                xor     edx, edx
                div     qword ptr [r9]


loc_315A7:                              ; CODE XREF: run_vm+314 run_vm+46C↓j ...
                mov     [r9-8], rax
                jmp     loc_318FB

; ---------------------------------------------------------------------------

loc_315B0:                              ; CODE XREF: run_vm+1EE
                sub     r9, rsi
                mov     g_vm.p_stack, r9
                mov     rax, [r9]
                sub     [r9-8], rax
                jmp     loc_318FB

; ---------------------------------------------------------------------------

loc_315C6:                              ; CODE XREF: run_vm+1E5
                mov     rdx, g_vm.p_bytecode
                add     rdx, 2
                mov     g_vm.p_bytecode, rdx
                movzx   ecx, byte ptr [rdx-2]
                movzx   eax, byte ptr [rdx-1]
                shl     rcx, 8
                add     rcx, rax
                add     [r9-8], rcx
                jmp     loc_318FB

; ---------------------------------------------------------------------------

loc_315F0:                              ; CODE XREF: run_vm+61
                sub     r9, rsi
                xor     ecx, ecx
                mov     g_vm.p_stack, r9
                mov     rax, [r9]
                cmp     [r9-8], rax
                setbe   cl
                jmp     loc_314CD

; ---------------------------------------------------------------------------

loc_3160B:                              ; CODE XREF: run_vm+5B
                cmp     ecx, 1Dh
                ja      loc_31737

                jz      loc_3171B

                sub     ecx, 14h
                jz      loc_31700

                sub     ecx, 1
                jz      loc_316E5

                sub     ecx, 1
                jz      loc_316B6

                sub     ecx, 1
                jz      short loc_3169D

                sub     ecx, 1
                jz      loc_31915

                sub     ecx, 1
                jz      short loc_3169D

                sub     ecx, 1
                jz      short loc_31687

                sub     ecx, 1
                jz      short loc_31671

                cmp     ecx, 1
                jnz     loc_31919

                sub     r9, rsi
                mov     g_vm.p_stack, r9
                mov     rax, [r9]
                and     [r9-8], rax
                jmp     loc_318FB

; ---------------------------------------------------------------------------

loc_31671:                              ; CODE XREF: run_vm+3DC
                sub     r9, rsi
                mov     g_vm.p_stack, r9
                mov     rax, [r9]
                or      [r9-8], rax
                jmp     loc_318FB

; ---------------------------------------------------------------------------

loc_31687:                              ; CODE XREF: run_vm+3D7
                sub     r9, rsi
                mov     g_vm.p_stack, r9
                mov     rax, [r9]
                xor     [r9-8], rax
                jmp     loc_318FB

; ---------------------------------------------------------------------------

loc_3169D:                              ; CODE XREF: run_vm+3C4 run_vm+3D2
                sub     r9, rsi
                mov     g_vm.p_stack, r9
                mov     rax, [r9]
                mov     g_vm.check, rax
                jmp     loc_312B9

; ---------------------------------------------------------------------------

loc_316B6:                              ; CODE XREF: run_vm+3BB
                mov     rdx, g_vm.p_bytecode
                add     rdx, 2
                mov     g_vm.p_bytecode, rdx
                movzx   eax, byte ptr [rdx-1]
                movzx   ecx, byte ptr [rdx-2]
                shl     rcx, 8
                add     rcx, rax
                xor     eax, eax
                cmp     [r9-8], rcx
                setnb   al
                jmp     loc_315A7

; ---------------------------------------------------------------------------

loc_316E5:                              ; CODE XREF: run_vm+3B2
                sub     r9, rsi
                xor     ecx, ecx
                mov     g_vm.p_stack, r9
                mov     rax, [r9]
                cmp     [r9-8], rax
                setnb   cl
                jmp     loc_314CD

; ---------------------------------------------------------------------------

loc_31700:                              ; CODE XREF: run_vm+3A9
                sub     r9, rsi
                xor     ecx, ecx
                mov     g_vm.p_stack, r9
                mov     rax, [r9]
                cmp     [r9-8], rax
                setnbe  cl
                jmp     loc_314CD

; ---------------------------------------------------------------------------

loc_3171B:                              ; CODE XREF: run_vm+3A0
                sub     r9, rsi
                xor     edx, edx
                mov     g_vm.p_stack, r9
                mov     rax, [r9-8]
                div     qword ptr [r9]
                mov     [r9-8], rdx
                jmp     loc_318FB

; ---------------------------------------------------------------------------

loc_31737:                              ; CODE XREF: run_vm+39A
                sub     ecx, 1Eh
                jz      loc_318EA

                sub     ecx, 1
                jz      loc_318D7

                sub     ecx, 1
                jz      loc_318AB

                sub     ecx, 1
                jz      loc_31884

                sub     ecx, 1
                jz      loc_31857

                sub     ecx, 1
                jz      loc_3182A

                sub     ecx, 1
                jz      loc_31800

                sub     ecx, 1
                jz      short loc_317D6

                cmp     ecx, 1
                jnz     loc_31919


                jmp     loc_318FB

; ---------------------------------------------------------------------------

loc_317D6:                              ; CODE XREF: run_vm+505
                sub     r9, rsi
                mov     ecx, esi
                mov     g_vm.p_stack, r9
                sub     cl, [r9]
                mov     rdx, [r9-8]
                mov     rax, rdx
                shl     rax, cl
                mov     rcx, [r9]
                sar     rdx, cl
                or      rax, rdx
                movzx   eax, al
                jmp     loc_315A7

; ---------------------------------------------------------------------------

loc_31800:                              ; CODE XREF: run_vm+4FC
                sub     r9, rsi
                mov     ecx, esi
                mov     g_vm.p_stack, r9
                sub     cl, [r9]
                mov     r8, [r9-8]
                mov     rdx, r8
                sar     rdx, cl
                mov     rcx, [r9]
                shl     r8, cl
                or      rdx, r8
                movzx   eax, dl
                jmp     loc_315A7

; ---------------------------------------------------------------------------

loc_3182A:                              ; CODE XREF: run_vm+4F3
                sub     r9, rsi
                mov     ecx, 10h
                mov     g_vm.p_stack, r9
                sub     cl, [r9]
                mov     rdx, [r9-8]
                mov     rax, rdx
                shl     rax, cl
                mov     rcx, [r9]
                sar     rdx, cl
                or      rax, rdx
                movzx   eax, ax
                jmp     loc_315A7

; ---------------------------------------------------------------------------

loc_31857:                              ; CODE XREF: run_vm+4EA
                sub     r9, rsi
                mov     ecx, 10h
                mov     g_vm.p_stack, r9
                sub     cl, [r9]
                mov     r8, [r9-8]
                mov     rdx, r8
                sar     rdx, cl
                mov     rcx, [r9]
                shl     r8, cl
                or      rdx, r8
                movzx   eax, dx
                jmp     loc_315A7

; ---------------------------------------------------------------------------

loc_31884:                              ; CODE XREF: run_vm+4E1
                sub     r9, rsi
                mov     ecx, 20h ; ' '
                mov     g_vm.p_stack, r9
                sub     cl, [r9]
                mov     rdx, [r9-8]
                mov     rax, rdx
                shl     rax, cl
                mov     rcx, [r9]
                shr     rdx, cl
                or      rax, rdx
                jmp     short loc_318D0

; ---------------------------------------------------------------------------

loc_318AB:                              ; CODE XREF: run_vm+4D8
                sub     r9, rsi
                mov     ecx, 20h ; ' '
                mov     g_vm.p_stack, r9
                sub     cl, [r9]
                mov     r8, [r9-8]
                mov     rax, r8
                shr     rax, cl
                mov     rcx, [r9]
                shl     r8, cl
                or      rax, r8


loc_318D0:                              ; CODE XREF: run_vm+635
                mov     eax, eax
                jmp     loc_315A7

; ---------------------------------------------------------------------------

loc_318D7:                              ; CODE XREF: run_vm+4CF
                sub     r9, rsi
                mov     g_vm.p_stack, r9
                mov     rcx, [r9]
                shr     qword ptr [r9-8], cl
                jmp     short loc_318FB

; ---------------------------------------------------------------------------

loc_318EA:                              ; CODE XREF: run_vm+4C6
                sub     r9, rsi
                mov     g_vm.p_stack, r9
                mov     rcx, [r9]
                shl     qword ptr [r9-8], cl


loc_318FB:                              ; CODE XREF: run_vm+E6 run_vm+13B ...
                mov     r9, g_vm.p_stack
                jmp     loc_312B9

; ---------------------------------------------------------------------------

loc_31907:                              ; CODE XREF: run_vm+78
                mov     eax, 4
                jmp     short l_ret

; ---------------------------------------------------------------------------

loc_3190E:                              ; CODE XREF: run_vm+324
                mov     eax, 1
                jmp     short l_ret

; ---------------------------------------------------------------------------

loc_31915:                              ; CODE XREF: run_vm+3C9
                xor     eax, eax
                jmp     short l_ret

; ---------------------------------------------------------------------------

loc_31919:                              ; CODE XREF: run_vm+B0 run_vm+225 ...
                mov     eax, 3


l_ret:                                  ; CODE XREF: run_vm+698 run_vm+69F ...
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                mov     rdi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     r14
                ret

run_vm          endp

END
