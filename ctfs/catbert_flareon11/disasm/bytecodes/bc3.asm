[bits 64]
section .text
global _start
_start:
; 0000: PUSHI imm16
    mov rax, 0x0000
    push rax
; 0003: PUSHI imm16
    mov rax, 0xBBAA
    push rax
; 0006: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0007: PUSHI imm16
    mov rax, 0x0001
    push rax
; 000A: PUSHI imm16
    mov rax, 0xDDCC
    push rax
; 000D: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 000E: PUSHI imm16
    mov rax, 0x0002
    push rax
; 0011: PUSHI imm16
    mov rax, 0xFFEE
    push rax
; 0014: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0015: PUSHI imm16
    mov rax, 0x0003
    push rax
; 0018: PUSHI imm16
    mov rax, 0xADDE
    push rax
; 001B: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 001C: PUSHI imm16
    mov rax, 0x0004
    push rax
; 001F: PUSHI imm16
    mov rax, 0xEFBE
    push rax
; 0022: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0023: PUSHI imm16
    mov rax, 0x0005
    push rax
; 0026: PUSHI imm16
    mov rax, 0xFECA
    push rax
; 0029: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 002A: PUSHI imm16
    mov rax, 0x0006
    push rax
; 002D: PUSHI imm16
    mov rax, 0xBEBA
    push rax
; 0030: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0031: PUSHI imm16
    mov rax, 0x0007
    push rax
; 0034: PUSHI imm16
    mov rax, 0xCDAB
    push rax
; 0037: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0038: PUSHI imm16
    mov rax, 0x0008
    push rax
; 003B: PUSHI imm16
    mov rax, 0x0003
    push rax
; 003E: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 003F: PUSHI imm16
    mov rax, 0x0030
    push rax
; 0042: shl
    pop rbx
    pop rax
    mov cl, bl
    shl rax, cl
    push rax
; 0043: PUSHI imm16
    mov rax, 0x0002
    push rax
; 0046: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0047: PUSHI imm16
    mov rax, 0x0020
    push rax
; 004A: shl
    pop rbx
    pop rax
    mov cl, bl
    shl rax, cl
    push rax
; 004B: or
    pop rbx
    pop rax
    or rax, rbx
    push rax
; 004C: PUSHI imm16
    mov rax, 0x0001
    push rax
; 004F: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0050: PUSHI imm16
    mov rax, 0x0010
    push rax
; 0053: shl
    pop rbx
    pop rax
    mov cl, bl
    shl rax, cl
    push rax
; 0054: or
    pop rbx
    pop rax
    or rax, rbx
    push rax
; 0055: PUSHI imm16
    mov rax, 0x0000
    push rax
; 0058: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0059: or
    pop rbx
    pop rax
    or rax, rbx
    push rax
; 005A: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 005B: PUSHI imm16
    mov rax, 0x0009
    push rax
; 005E: PUSHI imm16
    mov rax, 0x0007
    push rax
; 0061: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0062: PUSHI imm16
    mov rax, 0x0030
    push rax
; 0065: shl
    pop rbx
    pop rax
    mov cl, bl
    shl rax, cl
    push rax
; 0066: PUSHI imm16
    mov rax, 0x0006
    push rax
; 0069: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 006A: PUSHI imm16
    mov rax, 0x0020
    push rax
; 006D: shl
    pop rbx
    pop rax
    mov cl, bl
    shl rax, cl
    push rax
; 006E: or
    pop rbx
    pop rax
    or rax, rbx
    push rax
; 006F: PUSHI imm16
    mov rax, 0x0005
    push rax
; 0072: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0073: PUSHI imm16
    mov rax, 0x0010
    push rax
; 0076: shl
    pop rbx
    pop rax
    mov cl, bl
    shl rax, cl
    push rax
; 0077: or
    pop rbx
    pop rax
    or rax, rbx
    push rax
; 0078: PUSHI imm16
    mov rax, 0x0004
    push rax
; 007B: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 007C: or
    pop rbx
    pop rax
    or rax, rbx
    push rax
; 007D: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 007E: PUSHI imm16
    mov rax, 0x001E
    push rax
; 0081: PUSHI imm16
    mov rax, 0xFFFF
    push rax
; 0084: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0085: PUSHI imm16
    mov rax, 0x001D
    push rax
; 0088: PUSHI imm16
    mov rax, 0x001E
    push rax
; 008B: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 008C: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 008D: PUSHI imm16
    mov rax, 0x001E
    push rax
; 0090: PUSHI imm16
    mov rax, 0x001E
    push rax
; 0093: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0094: PUSHI imm16
    mov rax, 0x0010
    push rax
; 0097: shl
    pop rbx
    pop rax
    mov cl, bl
    shl rax, cl
    push rax
; 0098: PUSHI imm16
    mov rax, 0x001D
    push rax
; 009B: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 009C: or
    pop rbx
    pop rax
    or rax, rbx
    push rax
; 009D: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 009E: PUSHI imm16
    mov rax, 0x001B
    push rax
; 00A1: PUSHI imm16
    mov rax, 0x0000
    push rax
; 00A4: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 00A5: PUSHI imm16
    mov rax, 0x001F
    push rax
; 00A8: PUSHI imm16
    mov rax, 0x0000
    push rax
; 00AB: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 00AC: PUSHI imm16
    mov rax, 0x0020
    push rax
; 00AF: PUSHI imm16
    mov rax, 0x0000
    push rax
; 00B2: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 00B3: PUSHI imm16
    mov rax, 0x0013
    push rax
; 00B6: PUSHI imm16
    mov rax, 0x1505
    push rax
; 00B9: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 00BA: PUSHI imm16
label_00BA:
    mov rax, 0x001B
    push rax
; 00BD: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 00BE: PUSHI imm16
    mov rax, 0x0004
    push rax
; 00C1: LESS
    pop rbx
    pop rax
    cmp rax, rbx
    setl al
    movzx rax, al
    push rax
; 00C2: JUMP_IF_FALSE imm16
    pop rax
    test rax, rax
    jz label_010F
; 00C5: PUSHI imm16
    mov rax, 0x001C
    push rax
; 00C8: PUSHI imm16
    mov rax, 0x0008
    push rax
; 00CB: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 00CC: PUSHI imm16
    mov rax, 0x0008
    push rax
; 00CF: PUSHI imm16
    mov rax, 0x001B
    push rax
; 00D2: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 00D3: mul
    pop rbx
    pop rax
    mul rbx
    push rax
; 00D4: shr
    pop rbx
    pop rax
    mov cl, bl
    shr rax, cl
    push rax
; 00D5: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 00D6: PUSHI imm16
    mov rax, 0x001C
    push rax
; 00D9: PUSHI imm16
    mov rax, 0x001C
    push rax
; 00DC: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 00DD: PUSHI imm16
    mov rax, 0x00FF
    push rax
; 00E0: and
    pop rbx
    pop rax
    and rax, rbx
    push rax
; 00E1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 00E2: PUSHI imm16
    mov rax, 0x001D
    push rax
; 00E5: PUSHI imm16
    mov rax, 0x0013
    push rax
; 00E8: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 00E9: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 00EA: PUSHI imm16
    mov rax, 0x0013
    push rax
; 00ED: PUSHI imm16
    mov rax, 0x0013
    push rax
; 00F0: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 00F1: PUSHI imm16
    mov rax, 0x0005
    push rax
; 00F4: shl
    pop rbx
    pop rax
    mov cl, bl
    shl rax, cl
    push rax
; 00F5: PUSHI imm16
    mov rax, 0x001D
    push rax
; 00F8: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 00F9: add
    pop rbx
    pop rax
    add rax, rbx
    push rax
; 00FA: PUSHI imm16
    mov rax, 0x001C
    push rax
; 00FD: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 00FE: add
    pop rbx
    pop rax
    add rax, rbx
    push rax
; 00FF: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0100: PUSHI imm16
    mov rax, 0x001B
    push rax
; 0103: PUSHI imm16
    mov rax, 0x001B
    push rax
; 0106: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0107: PUSHI imm16
    mov rax, 0x0001
    push rax
; 010A: add
    pop rbx
    pop rax
    add rax, rbx
    push rax
; 010B: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 010C: JUMP imm16
    jmp label_00BA
; 010F: PUSHI imm16
label_010F:
    mov rax, 0x0013
    push rax
; 0112: PUSHI imm16
    mov rax, 0x0013
    push rax
; 0115: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0116: PUSHI imm16
    mov rax, 0x001E
    push rax
; 0119: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 011A: and
    pop rbx
    pop rax
    and rax, rbx
    push rax
; 011B: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 011C: PUSHI imm16
    mov rax, 0x0014
    push rax
; 011F: PUSHI imm16
    mov rax, 0x7C8D
    push rax
; 0122: PUSHI imm16
    mov rax, 0x0010
    push rax
; 0125: shl
    pop rbx
    pop rax
    mov cl, bl
    shl rax, cl
    push rax
; 0126: PUSHI imm16
    mov rax, 0xF4CB
    push rax
; 0129: or
    pop rbx
    pop rax
    or rax, rbx
    push rax
; 012A: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 012B: PUSHI imm16
    mov rax, 0x0014
    push rax
; 012E: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 012F: PUSHI imm16
    mov rax, 0x0013
    push rax
; 0132: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0133: EQUAL
    pop rbx
    pop rax
    cmp rax, rbx
    setz al
    movzx rax, al
    push rax
; 0134: JUMP_IF_FALSE imm16
    pop rax
    test rax, rax
    jz label_0143
; 0137: PUSHI imm16
    mov rax, 0x001F
    push rax
; 013A: PUSHI imm16
    mov rax, 0x001F
    push rax
; 013D: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 013E: PUSHI imm16
    mov rax, 0x0001
    push rax
; 0141: add
    pop rbx
    pop rax
    add rax, rbx
    push rax
; 0142: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0143: PUSHI imm16
label_0143:
    mov rax, 0x001F
    push rax
; 0146: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0147: PUSHI imm16
    mov rax, 0x0000
    push rax
; 014A: GREATER
    pop rbx
    pop rax
    cmp rax, rbx
    setg al
    movzx rax, al
    push rax
; 014B: JUMP_IF_FALSE imm16
    pop rax
    test rax, rax
    jz label_01D9
; 014E: PUSHI imm16
    mov rax, 0x0015
    push rax
; 0151: PUSHI imm16
    mov rax, 0x0000
    push rax
; 0154: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0155: PUSHI imm16
label_0155:
    mov rax, 0x001B
    push rax
; 0158: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0159: PUSHI imm16
    mov rax, 0x0008
    push rax
; 015C: LESS
    pop rbx
    pop rax
    cmp rax, rbx
    setl al
    movzx rax, al
    push rax
; 015D: JUMP_IF_FALSE imm16
    pop rax
    test rax, rax
    jz label_01A5
; 0160: PUSHI imm16
    mov rax, 0x001C
    push rax
; 0163: PUSHI imm16
    mov rax, 0x0008
    push rax
; 0166: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0167: PUSHI imm16
    mov rax, 0x0008
    push rax
; 016A: PUSHI imm16
    mov rax, 0x001B
    push rax
; 016D: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 016E: mul
    pop rbx
    pop rax
    mul rbx
    push rax
; 016F: shr
    pop rbx
    pop rax
    mov cl, bl
    shr rax, cl
    push rax
; 0170: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0171: PUSHI imm16
    mov rax, 0x001C
    push rax
; 0174: PUSHI imm16
    mov rax, 0x001C
    push rax
; 0177: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0178: PUSHI imm16
    mov rax, 0x00FF
    push rax
; 017B: and
    pop rbx
    pop rax
    and rax, rbx
    push rax
; 017C: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 017D: PUSHI imm16
    mov rax, 0x0015
    push rax
; 0180: PUSHI imm16
    mov rax, 0x0015
    push rax
; 0183: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0184: PUSHI imm16
    mov rax, 0x000D
    push rax
; 0187: rotr32
    pop rbx
    pop rax
    mov cl, bl
    ror eax, cl
    push rax
; 0188: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0189: PUSHI imm16
    mov rax, 0x0015
    push rax
; 018C: PUSHI imm16
    mov rax, 0x0015
    push rax
; 018F: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0190: PUSHI imm16
    mov rax, 0x001C
    push rax
; 0193: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0194: add
    pop rbx
    pop rax
    add rax, rbx
    push rax
; 0195: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0196: PUSHI imm16
    mov rax, 0x001B
    push rax
; 0199: PUSHI imm16
    mov rax, 0x001B
    push rax
; 019C: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 019D: PUSHI imm16
    mov rax, 0x0001
    push rax
; 01A0: add
    pop rbx
    pop rax
    add rax, rbx
    push rax
; 01A1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 01A2: JUMP imm16
    jmp label_0155
; 01A5: PUSHI imm16
label_01A5:
    mov rax, 0x0015
    push rax
; 01A8: PUSHI imm16
    mov rax, 0x0015
    push rax
; 01AB: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 01AC: PUSHI imm16
    mov rax, 0x001E
    push rax
; 01AF: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 01B0: and
    pop rbx
    pop rax
    and rax, rbx
    push rax
; 01B1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 01B2: PUSHI imm16
    mov rax, 0x0016
    push rax
; 01B5: PUSHI imm16
    mov rax, 0x8B68
    push rax
; 01B8: PUSHI imm16
    mov rax, 0x0010
    push rax
; 01BB: shl
    pop rbx
    pop rax
    mov cl, bl
    shl rax, cl
    push rax
; 01BC: PUSHI imm16
    mov rax, 0x1D82
    push rax
; 01BF: or
    pop rbx
    pop rax
    or rax, rbx
    push rax
; 01C0: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 01C1: PUSHI imm16
    mov rax, 0x0016
    push rax
; 01C4: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 01C5: PUSHI imm16
    mov rax, 0x0015
    push rax
; 01C8: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 01C9: EQUAL
    pop rbx
    pop rax
    cmp rax, rbx
    setz al
    movzx rax, al
    push rax
; 01CA: JUMP_IF_FALSE imm16
    pop rax
    test rax, rax
    jz label_01D9
; 01CD: PUSHI imm16
    mov rax, 0x001F
    push rax
; 01D0: PUSHI imm16
    mov rax, 0x001F
    push rax
; 01D3: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 01D4: PUSHI imm16
    mov rax, 0x0001
    push rax
; 01D7: add
    pop rbx
    pop rax
    add rax, rbx
    push rax
; 01D8: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 01D9: PUSHI imm16
label_01D9:
    mov rax, 0x001F
    push rax
; 01DC: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 01DD: PUSHI imm16
    mov rax, 0x0001
    push rax
; 01E0: GREATER
    pop rbx
    pop rax
    cmp rax, rbx
    setg al
    movzx rax, al
    push rax
; 01E1: JUMP_IF_FALSE imm16
    pop rax
    test rax, rax
    jz label_029E
; 01E4: PUSHI imm16
    mov rax, 0x0011
    push rax
; 01E7: PUSHI imm16
    mov rax, 0x0001
    push rax
; 01EA: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 01EB: PUSHI imm16
    mov rax, 0x0012
    push rax
; 01EE: PUSHI imm16
    mov rax, 0x0000
    push rax
; 01F1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 01F2: PUSHI imm16
    mov rax, 0x0017
    push rax
; 01F5: PUSHI imm16
    mov rax, 0x0000
    push rax
; 01F8: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 01F9: PUSHI imm16
    mov rax, 0x001B
    push rax
; 01FC: PUSHI imm16
    mov rax, 0x0000
    push rax
; 01FF: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0200: PUSHI imm16
label_0200:
    mov rax, 0x001B
    push rax
; 0203: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0204: PUSHI imm16
    mov rax, 0x0008
    push rax
; 0207: LESS
    pop rbx
    pop rax
    cmp rax, rbx
    setl al
    movzx rax, al
    push rax
; 0208: JUMP_IF_FALSE imm16
    pop rax
    test rax, rax
    jz label_0259
; 020B: PUSHI imm16
    mov rax, 0x001C
    push rax
; 020E: PUSHI imm16
    mov rax, 0x0009
    push rax
; 0211: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0212: PUSHI imm16
    mov rax, 0x0008
    push rax
; 0215: PUSHI imm16
    mov rax, 0x001B
    push rax
; 0218: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0219: mul
    pop rbx
    pop rax
    mul rbx
    push rax
; 021A: shr
    pop rbx
    pop rax
    mov cl, bl
    shr rax, cl
    push rax
; 021B: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 021C: PUSHI imm16
    mov rax, 0x001C
    push rax
; 021F: PUSHI imm16
    mov rax, 0x001C
    push rax
; 0222: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0223: PUSHI imm16
    mov rax, 0x00FF
    push rax
; 0226: and
    pop rbx
    pop rax
    and rax, rbx
    push rax
; 0227: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0228: PUSHI imm16
    mov rax, 0x0011
    push rax
; 022B: PUSHI imm16
    mov rax, 0x0011
    push rax
; 022E: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 022F: PUSHI imm16
    mov rax, 0x001C
    push rax
; 0232: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0233: add
    pop rbx
    pop rax
    add rax, rbx
    push rax
; 0234: PUSHI imm16
    mov rax, 0xFFF1
    push rax
; 0237: mod
    pop rbx
    pop rax
    xor rdx, rdx
    div rbx
    push rdx
; 0238: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0239: PUSHI imm16
    mov rax, 0x0012
    push rax
; 023C: PUSHI imm16
    mov rax, 0x0012
    push rax
; 023F: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0240: PUSHI imm16
    mov rax, 0x0011
    push rax
; 0243: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0244: add
    pop rbx
    pop rax
    add rax, rbx
    push rax
; 0245: PUSHI imm16
    mov rax, 0xFFF1
    push rax
; 0248: mod
    pop rbx
    pop rax
    xor rdx, rdx
    div rbx
    push rdx
; 0249: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 024A: PUSHI imm16
    mov rax, 0x001B
    push rax
; 024D: PUSHI imm16
    mov rax, 0x001B
    push rax
; 0250: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0251: PUSHI imm16
    mov rax, 0x0001
    push rax
; 0254: add
    pop rbx
    pop rax
    add rax, rbx
    push rax
; 0255: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0256: JUMP imm16
    jmp label_0200
; 0259: PUSHI imm16
label_0259:
    mov rax, 0x0017
    push rax
; 025C: PUSHI imm16
    mov rax, 0x0012
    push rax
; 025F: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0260: PUSHI imm16
    mov rax, 0x0010
    push rax
; 0263: shl
    pop rbx
    pop rax
    mov cl, bl
    shl rax, cl
    push rax
; 0264: PUSHI imm16
    mov rax, 0x0011
    push rax
; 0267: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0268: or
    pop rbx
    pop rax
    or rax, rbx
    push rax
; 0269: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 026A: PUSHI imm16
    mov rax, 0x0017
    push rax
; 026D: PUSHI imm16
    mov rax, 0x0017
    push rax
; 0270: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0271: PUSHI imm16
    mov rax, 0x001E
    push rax
; 0274: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0275: and
    pop rbx
    pop rax
    and rax, rbx
    push rax
; 0276: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0277: PUSHI imm16
    mov rax, 0x0018
    push rax
; 027A: PUSHI imm16
    mov rax, 0x0F91
    push rax
; 027D: PUSHI imm16
    mov rax, 0x0010
    push rax
; 0280: shl
    pop rbx
    pop rax
    mov cl, bl
    shl rax, cl
    push rax
; 0281: PUSHI imm16
    mov rax, 0x0374
    push rax
; 0284: or
    pop rbx
    pop rax
    or rax, rbx
    push rax
; 0285: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0286: PUSHI imm16
    mov rax, 0x0018
    push rax
; 0289: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 028A: PUSHI imm16
    mov rax, 0x0017
    push rax
; 028D: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 028E: EQUAL
    pop rbx
    pop rax
    cmp rax, rbx
    setz al
    movzx rax, al
    push rax
; 028F: JUMP_IF_FALSE imm16
    pop rax
    test rax, rax
    jz label_029E
; 0292: PUSHI imm16
    mov rax, 0x001F
    push rax
; 0295: PUSHI imm16
    mov rax, 0x001F
    push rax
; 0298: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0299: PUSHI imm16
    mov rax, 0x0001
    push rax
; 029C: add
    pop rbx
    pop rax
    add rax, rbx
    push rax
; 029D: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 029E: PUSHI imm16
label_029E:
    mov rax, 0x001F
    push rax
; 02A1: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 02A2: PUSHI imm16
    mov rax, 0x0002
    push rax
; 02A5: GREATER
    pop rbx
    pop rax
    cmp rax, rbx
    setg al
    movzx rax, al
    push rax
; 02A6: JUMP_IF_FALSE imm16
    pop rax
    test rax, rax
    jz label_03B2
; 02A9: PUSHI imm16
    mov rax, 0x000A
    push rax
; 02AC: PUSHI imm16
    mov rax, 0x0193
    push rax
; 02AF: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 02B0: PUSHI imm16
    mov rax, 0x000B
    push rax
; 02B3: PUSHI imm16
    mov rax, 0x0100
    push rax
; 02B6: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 02B7: PUSHI imm16
    mov rax, 0x000C
    push rax
; 02BA: PUSHI imm16
    mov rax, 0x000B
    push rax
; 02BD: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 02BE: PUSHI imm16
    mov rax, 0x0010
    push rax
; 02C1: shl
    pop rbx
    pop rax
    mov cl, bl
    shl rax, cl
    push rax
; 02C2: PUSHI imm16
    mov rax, 0x000A
    push rax
; 02C5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 02C6: or
    pop rbx
    pop rax
    or rax, rbx
    push rax
; 02C7: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 02C8: PUSHI imm16
    mov rax, 0x000D
    push rax
; 02CB: PUSHI imm16
    mov rax, 0x9DC5
    push rax
; 02CE: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 02CF: PUSHI imm16
    mov rax, 0x000E
    push rax
; 02D2: PUSHI imm16
    mov rax, 0x811C
    push rax
; 02D5: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 02D6: PUSHI imm16
    mov rax, 0x000F
    push rax
; 02D9: PUSHI imm16
    mov rax, 0x000E
    push rax
; 02DC: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 02DD: PUSHI imm16
    mov rax, 0x0010
    push rax
; 02E0: shl
    pop rbx
    pop rax
    mov cl, bl
    shl rax, cl
    push rax
; 02E1: PUSHI imm16
    mov rax, 0x000D
    push rax
; 02E4: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 02E5: or
    pop rbx
    pop rax
    or rax, rbx
    push rax
; 02E6: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 02E7: PUSHI imm16
    mov rax, 0x0010
    push rax
; 02EA: PUSHI imm16
    mov rax, 0x0001
    push rax
; 02ED: PUSHI imm16
    mov rax, 0x0020
    push rax
; 02F0: shl
    pop rbx
    pop rax
    mov cl, bl
    shl rax, cl
    push rax
; 02F1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 02F2: PUSHI imm16
    mov rax, 0x0019
    push rax
; 02F5: PUSHI imm16
    mov rax, 0x000F
    push rax
; 02F8: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 02F9: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 02FA: PUSHI imm16
    mov rax, 0x001B
    push rax
; 02FD: PUSHI imm16
    mov rax, 0x0000
    push rax
; 0300: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0301: PUSHI imm16
label_0301:
    mov rax, 0x001B
    push rax
; 0304: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0305: PUSHI imm16
    mov rax, 0x0010
    push rax
; 0308: LESS
    pop rbx
    pop rax
    cmp rax, rbx
    setl al
    movzx rax, al
    push rax
; 0309: JUMP_IF_FALSE imm16
    pop rax
    test rax, rax
    jz label_037E
; 030C: PUSHI imm16
    mov rax, 0x001B
    push rax
; 030F: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0310: PUSHI imm16
    mov rax, 0x0008
    push rax
; 0313: LESS
    pop rbx
    pop rax
    cmp rax, rbx
    setl al
    movzx rax, al
    push rax
; 0314: JUMP_IF_FALSE imm16
    pop rax
    test rax, rax
    jz label_0328
; 0317: PUSHI imm16
    mov rax, 0x001C
    push rax
; 031A: PUSHI imm16
    mov rax, 0x0008
    push rax
; 031D: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 031E: PUSHI imm16
    mov rax, 0x0008
    push rax
; 0321: PUSHI imm16
    mov rax, 0x001B
    push rax
; 0324: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0325: mul
    pop rbx
    pop rax
    mul rbx
    push rax
; 0326: shr
    pop rbx
    pop rax
    mov cl, bl
    shr rax, cl
    push rax
; 0327: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0328: PUSHI imm16
label_0328:
    mov rax, 0x001B
    push rax
; 032B: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 032C: PUSHI imm16
    mov rax, 0x0007
    push rax
; 032F: GREATER
    pop rbx
    pop rax
    cmp rax, rbx
    setg al
    movzx rax, al
    push rax
; 0330: JUMP_IF_FALSE imm16
    pop rax
    test rax, rax
    jz label_0344
; 0333: PUSHI imm16
    mov rax, 0x001C
    push rax
; 0336: PUSHI imm16
    mov rax, 0x0009
    push rax
; 0339: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 033A: PUSHI imm16
    mov rax, 0x0008
    push rax
; 033D: PUSHI imm16
    mov rax, 0x001B
    push rax
; 0340: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0341: mul
    pop rbx
    pop rax
    mul rbx
    push rax
; 0342: shr
    pop rbx
    pop rax
    mov cl, bl
    shr rax, cl
    push rax
; 0343: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0344: PUSHI imm16
label_0344:
    mov rax, 0x001C
    push rax
; 0347: PUSHI imm16
    mov rax, 0x001C
    push rax
; 034A: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 034B: PUSHI imm16
    mov rax, 0x00FF
    push rax
; 034E: and
    pop rbx
    pop rax
    and rax, rbx
    push rax
; 034F: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0350: PUSHI imm16
    mov rax, 0x0019
    push rax
; 0353: PUSHI imm16
    mov rax, 0x0019
    push rax
; 0356: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0357: PUSHI imm16
    mov rax, 0x000C
    push rax
; 035A: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 035B: mul
    pop rbx
    pop rax
    mul rbx
    push rax
; 035C: PUSHI imm16
    mov rax, 0x0010
    push rax
; 035F: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0360: mod
    pop rbx
    pop rax
    xor rdx, rdx
    div rbx
    push rdx
; 0361: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0362: PUSHI imm16
    mov rax, 0x0019
    push rax
; 0365: PUSHI imm16
    mov rax, 0x0019
    push rax
; 0368: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0369: PUSHI imm16
    mov rax, 0x001C
    push rax
; 036C: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 036D: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 036E: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 036F: PUSHI imm16
    mov rax, 0x001B
    push rax
; 0372: PUSHI imm16
    mov rax, 0x001B
    push rax
; 0375: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0376: PUSHI imm16
    mov rax, 0x0001
    push rax
; 0379: add
    pop rbx
    pop rax
    add rax, rbx
    push rax
; 037A: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 037B: JUMP imm16
    jmp label_0301
; 037E: PUSHI imm16
label_037E:
    mov rax, 0x0019
    push rax
; 0381: PUSHI imm16
    mov rax, 0x0019
    push rax
; 0384: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0385: PUSHI imm16
    mov rax, 0x001E
    push rax
; 0388: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0389: and
    pop rbx
    pop rax
    and rax, rbx
    push rax
; 038A: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 038B: PUSHI imm16
    mov rax, 0x001A
    push rax
; 038E: PUSHI imm16
    mov rax, 0x31F0
    push rax
; 0391: PUSHI imm16
    mov rax, 0x0010
    push rax
; 0394: shl
    pop rbx
    pop rax
    mov cl, bl
    shl rax, cl
    push rax
; 0395: PUSHI imm16
    mov rax, 0x09D2
    push rax
; 0398: or
    pop rbx
    pop rax
    or rax, rbx
    push rax
; 0399: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 039A: PUSHI imm16
    mov rax, 0x001A
    push rax
; 039D: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 039E: PUSHI imm16
    mov rax, 0x0019
    push rax
; 03A1: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 03A2: EQUAL
    pop rbx
    pop rax
    cmp rax, rbx
    setz al
    movzx rax, al
    push rax
; 03A3: JUMP_IF_FALSE imm16
    pop rax
    test rax, rax
    jz label_03B2
; 03A6: PUSHI imm16
    mov rax, 0x001F
    push rax
; 03A9: PUSHI imm16
    mov rax, 0x001F
    push rax
; 03AC: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 03AD: PUSHI imm16
    mov rax, 0x0001
    push rax
; 03B0: add
    pop rbx
    pop rax
    add rax, rbx
    push rax
; 03B1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 03B2: PUSHI imm16
label_03B2:
    mov rax, 0x001F
    push rax
; 03B5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 03B6: PUSHI imm16
    mov rax, 0x0004
    push rax
; 03B9: EQUAL
    pop rbx
    pop rax
    cmp rax, rbx
    setz al
    movzx rax, al
    push rax
; 03BA: JUMP_IF_FALSE imm16
    pop rax
    test rax, rax
    jz label_03C4
; 03BD: PUSHI imm16
    mov rax, 0x0020
    push rax
; 03C0: PUSHI imm16
    mov rax, 0x0001
    push rax
; 03C3: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 03C4: PUSHI imm16
label_03C4:
    mov rax, 0x0020
    push rax
; 03C7: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 03C8: POP_RES2
    pop rax
    mov [check], rax
; 03C9: DONE
    jmp label_ret
label_ret:
    ; Handle VM return
    ret

print_rax:
    ; Implement the print function
    ret

section .data
memory: times 65536 dq 0
check: dq 0