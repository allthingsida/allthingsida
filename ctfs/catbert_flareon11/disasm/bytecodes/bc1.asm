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
    mov rax, 0x000A
    push rax
; 003B: PUSHI imm16
    mov rax, 0x6144
    push rax
; 003E: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 003F: PUSHI imm16
    mov rax, 0x000B
    push rax
; 0042: PUSHI imm16
    mov rax, 0x7534
    push rax
; 0045: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0046: PUSHI imm16
    mov rax, 0x000C
    push rax
; 0049: PUSHI imm16
    mov rax, 0x6962
    push rax
; 004C: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 004D: PUSHI imm16
    mov rax, 0x000D
    push rax
; 0050: PUSHI imm16
    mov rax, 0x6C63
    push rax
; 0053: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0054: PUSHI imm16
    mov rax, 0x000E
    push rax
; 0057: PUSHI imm16
    mov rax, 0x3165
    push rax
; 005A: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 005B: PUSHI imm16
    mov rax, 0x000F
    push rax
; 005E: PUSHI imm16
    mov rax, 0x6669
    push rax
; 0061: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0062: PUSHI imm16
    mov rax, 0x0010
    push rax
; 0065: PUSHI imm16
    mov rax, 0x6265
    push rax
; 0068: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0069: PUSHI imm16
    mov rax, 0x0011
    push rax
; 006C: PUSHI imm16
    mov rax, 0x6230
    push rax
; 006F: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0070: PUSHI imm16
    mov rax, 0x0008
    push rax
; 0073: PUSHI imm16
    mov rax, 0x0003
    push rax
; 0076: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0077: PUSHI imm16
    mov rax, 0x0030
    push rax
; 007A: shl
    pop rbx
    pop rax
    mov cl, bl
    shl rax, cl
    push rax
; 007B: PUSHI imm16
    mov rax, 0x0002
    push rax
; 007E: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 007F: PUSHI imm16
    mov rax, 0x0020
    push rax
; 0082: shl
    pop rbx
    pop rax
    mov cl, bl
    shl rax, cl
    push rax
; 0083: or
    pop rbx
    pop rax
    or rax, rbx
    push rax
; 0084: PUSHI imm16
    mov rax, 0x0001
    push rax
; 0087: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0088: PUSHI imm16
    mov rax, 0x0010
    push rax
; 008B: shl
    pop rbx
    pop rax
    mov cl, bl
    shl rax, cl
    push rax
; 008C: or
    pop rbx
    pop rax
    or rax, rbx
    push rax
; 008D: PUSHI imm16
    mov rax, 0x0000
    push rax
; 0090: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0091: or
    pop rbx
    pop rax
    or rax, rbx
    push rax
; 0092: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0093: PUSHI imm16
    mov rax, 0x0009
    push rax
; 0096: PUSHI imm16
    mov rax, 0x0007
    push rax
; 0099: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 009A: PUSHI imm16
    mov rax, 0x0030
    push rax
; 009D: shl
    pop rbx
    pop rax
    mov cl, bl
    shl rax, cl
    push rax
; 009E: PUSHI imm16
    mov rax, 0x0006
    push rax
; 00A1: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 00A2: PUSHI imm16
    mov rax, 0x0020
    push rax
; 00A5: shl
    pop rbx
    pop rax
    mov cl, bl
    shl rax, cl
    push rax
; 00A6: or
    pop rbx
    pop rax
    or rax, rbx
    push rax
; 00A7: PUSHI imm16
    mov rax, 0x0005
    push rax
; 00AA: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 00AB: PUSHI imm16
    mov rax, 0x0010
    push rax
; 00AE: shl
    pop rbx
    pop rax
    mov cl, bl
    shl rax, cl
    push rax
; 00AF: or
    pop rbx
    pop rax
    or rax, rbx
    push rax
; 00B0: PUSHI imm16
    mov rax, 0x0004
    push rax
; 00B3: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 00B4: or
    pop rbx
    pop rax
    or rax, rbx
    push rax
; 00B5: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 00B6: PUSHI imm16
    mov rax, 0x0012
    push rax
; 00B9: PUSHI imm16
    mov rax, 0x000D
    push rax
; 00BC: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 00BD: PUSHI imm16
    mov rax, 0x0030
    push rax
; 00C0: shl
    pop rbx
    pop rax
    mov cl, bl
    shl rax, cl
    push rax
; 00C1: PUSHI imm16
    mov rax, 0x000C
    push rax
; 00C4: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 00C5: PUSHI imm16
    mov rax, 0x0020
    push rax
; 00C8: shl
    pop rbx
    pop rax
    mov cl, bl
    shl rax, cl
    push rax
; 00C9: or
    pop rbx
    pop rax
    or rax, rbx
    push rax
; 00CA: PUSHI imm16
    mov rax, 0x000B
    push rax
; 00CD: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 00CE: PUSHI imm16
    mov rax, 0x0010
    push rax
; 00D1: shl
    pop rbx
    pop rax
    mov cl, bl
    shl rax, cl
    push rax
; 00D2: or
    pop rbx
    pop rax
    or rax, rbx
    push rax
; 00D3: PUSHI imm16
    mov rax, 0x000A
    push rax
; 00D6: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 00D7: or
    pop rbx
    pop rax
    or rax, rbx
    push rax
; 00D8: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 00D9: PUSHI imm16
    mov rax, 0x0013
    push rax
; 00DC: PUSHI imm16
    mov rax, 0x0011
    push rax
; 00DF: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 00E0: PUSHI imm16
    mov rax, 0x0030
    push rax
; 00E3: shl
    pop rbx
    pop rax
    mov cl, bl
    shl rax, cl
    push rax
; 00E4: PUSHI imm16
    mov rax, 0x0010
    push rax
; 00E7: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 00E8: PUSHI imm16
    mov rax, 0x0020
    push rax
; 00EB: shl
    pop rbx
    pop rax
    mov cl, bl
    shl rax, cl
    push rax
; 00EC: or
    pop rbx
    pop rax
    or rax, rbx
    push rax
; 00ED: PUSHI imm16
    mov rax, 0x000F
    push rax
; 00F0: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 00F1: PUSHI imm16
    mov rax, 0x0010
    push rax
; 00F4: shl
    pop rbx
    pop rax
    mov cl, bl
    shl rax, cl
    push rax
; 00F5: or
    pop rbx
    pop rax
    or rax, rbx
    push rax
; 00F6: PUSHI imm16
    mov rax, 0x000E
    push rax
; 00F9: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 00FA: or
    pop rbx
    pop rax
    or rax, rbx
    push rax
; 00FB: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 00FC: PUSHI imm16
    mov rax, 0x0014
    push rax
; 00FF: PUSHI imm16
    mov rax, 0x0000
    push rax
; 0102: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0103: PUSHI imm16
    mov rax, 0x0018
    push rax
; 0106: PUSHI imm16
    mov rax, 0x0001
    push rax
; 0109: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 010A: PUSHI imm16
    mov rax, 0x0017
    push rax
; 010D: PUSHI imm16
    mov rax, 0x0000
    push rax
; 0110: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0111: PUSHI imm16
    mov rax, 0x0019
    push rax
; 0114: PUSHI imm16
    mov rax, 0x0000
    push rax
; 0117: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0118: PUSHI imm16
label_0118:
    mov rax, 0x0018
    push rax
; 011B: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 011C: PUSHI imm16
    mov rax, 0x0001
    push rax
; 011F: EQUAL
    pop rbx
    pop rax
    cmp rax, rbx
    setz al
    movzx rax, al
    push rax
; 0120: JUMP_IF_FALSE imm16
    pop rax
    test rax, rax
    jz label_0241
; 0123: PUSHI imm16
    mov rax, 0x0014
    push rax
; 0126: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0127: PUSHI imm16
    mov rax, 0x0008
    push rax
; 012A: LESS
    pop rbx
    pop rax
    cmp rax, rbx
    setl al
    movzx rax, al
    push rax
; 012B: JUMP_IF_FALSE imm16
    pop rax
    test rax, rax
    jz label_0150
; 012E: PUSHI imm16
    mov rax, 0x0015
    push rax
; 0131: PUSHI imm16
    mov rax, 0x0008
    push rax
; 0134: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0135: PUSHI imm16
    mov rax, 0x0008
    push rax
; 0138: PUSHI imm16
    mov rax, 0x0014
    push rax
; 013B: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 013C: mul
    pop rbx
    pop rax
    mul rbx
    push rax
; 013D: shr
    pop rbx
    pop rax
    mov cl, bl
    shr rax, cl
    push rax
; 013E: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 013F: PUSHI imm16
    mov rax, 0x0016
    push rax
; 0142: PUSHI imm16
    mov rax, 0x0012
    push rax
; 0145: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0146: PUSHI imm16
    mov rax, 0x0008
    push rax
; 0149: PUSHI imm16
    mov rax, 0x0014
    push rax
; 014C: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 014D: mul
    pop rbx
    pop rax
    mul rbx
    push rax
; 014E: shr
    pop rbx
    pop rax
    mov cl, bl
    shr rax, cl
    push rax
; 014F: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0150: PUSHI imm16
label_0150:
    mov rax, 0x0014
    push rax
; 0153: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0154: PUSHI imm16
    mov rax, 0x0007
    push rax
; 0157: GREATER
    pop rbx
    pop rax
    cmp rax, rbx
    setg al
    movzx rax, al
    push rax
; 0158: JUMP_IF_FALSE imm16
    pop rax
    test rax, rax
    jz label_017D
; 015B: PUSHI imm16
    mov rax, 0x0015
    push rax
; 015E: PUSHI imm16
    mov rax, 0x0009
    push rax
; 0161: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0162: PUSHI imm16
    mov rax, 0x0008
    push rax
; 0165: PUSHI imm16
    mov rax, 0x0014
    push rax
; 0168: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0169: mul
    pop rbx
    pop rax
    mul rbx
    push rax
; 016A: shr
    pop rbx
    pop rax
    mov cl, bl
    shr rax, cl
    push rax
; 016B: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 016C: PUSHI imm16
    mov rax, 0x0016
    push rax
; 016F: PUSHI imm16
    mov rax, 0x0013
    push rax
; 0172: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0173: PUSHI imm16
    mov rax, 0x0008
    push rax
; 0176: PUSHI imm16
    mov rax, 0x0014
    push rax
; 0179: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 017A: mul
    pop rbx
    pop rax
    mul rbx
    push rax
; 017B: shr
    pop rbx
    pop rax
    mov cl, bl
    shr rax, cl
    push rax
; 017C: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 017D: PUSHI imm16
label_017D:
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
    mov rax, 0x00FF
    push rax
; 0187: and
    pop rbx
    pop rax
    and rax, rbx
    push rax
; 0188: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0189: PUSHI imm16
    mov rax, 0x0016
    push rax
; 018C: PUSHI imm16
    mov rax, 0x0016
    push rax
; 018F: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0190: PUSHI imm16
    mov rax, 0x00FF
    push rax
; 0193: and
    pop rbx
    pop rax
    and rax, rbx
    push rax
; 0194: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0195: PUSHI imm16
    mov rax, 0x0014
    push rax
; 0198: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0199: PUSHI imm16
    mov rax, 0x0002
    push rax
; 019C: EQUAL
    pop rbx
    pop rax
    cmp rax, rbx
    setz al
    movzx rax, al
    push rax
; 019D: JUMP_IF_FALSE imm16
    pop rax
    test rax, rax
    jz label_01AC
; 01A0: PUSHI imm16
    mov rax, 0x0016
    push rax
; 01A3: PUSHI imm16
    mov rax, 0x0016
    push rax
; 01A6: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 01A7: PUSHI imm16
    mov rax, 0x0004
    push rax
; 01AA: rotl8
    pop rbx
    pop rax
    mov cl, bl
    rol al, cl
    push rax
; 01AB: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 01AC: PUSHI imm16
label_01AC:
    mov rax, 0x0014
    push rax
; 01AF: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 01B0: PUSHI imm16
    mov rax, 0x0009
    push rax
; 01B3: EQUAL
    pop rbx
    pop rax
    cmp rax, rbx
    setz al
    movzx rax, al
    push rax
; 01B4: JUMP_IF_FALSE imm16
    pop rax
    test rax, rax
    jz label_01C3
; 01B7: PUSHI imm16
    mov rax, 0x0016
    push rax
; 01BA: PUSHI imm16
    mov rax, 0x0016
    push rax
; 01BD: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 01BE: PUSHI imm16
    mov rax, 0x0002
    push rax
; 01C1: rotr8
    pop rbx
    pop rax
    mov cl, bl
    ror al, cl
    push rax
; 01C2: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 01C3: PUSHI imm16
label_01C3:
    mov rax, 0x0014
    push rax
; 01C6: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 01C7: PUSHI imm16
    mov rax, 0x000D
    push rax
; 01CA: EQUAL
    pop rbx
    pop rax
    cmp rax, rbx
    setz al
    movzx rax, al
    push rax
; 01CB: JUMP_IF_FALSE imm16
    pop rax
    test rax, rax
    jz label_01DA
; 01CE: PUSHI imm16
    mov rax, 0x0016
    push rax
; 01D1: PUSHI imm16
    mov rax, 0x0016
    push rax
; 01D4: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 01D5: PUSHI imm16
    mov rax, 0x0007
    push rax
; 01D8: rotl8
    pop rbx
    pop rax
    mov cl, bl
    rol al, cl
    push rax
; 01D9: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 01DA: PUSHI imm16
label_01DA:
    mov rax, 0x0014
    push rax
; 01DD: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 01DE: PUSHI imm16
    mov rax, 0x000F
    push rax
; 01E1: EQUAL
    pop rbx
    pop rax
    cmp rax, rbx
    setz al
    movzx rax, al
    push rax
; 01E2: JUMP_IF_FALSE imm16
    pop rax
    test rax, rax
    jz label_01F1
; 01E5: PUSHI imm16
    mov rax, 0x0016
    push rax
; 01E8: PUSHI imm16
    mov rax, 0x0016
    push rax
; 01EB: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 01EC: PUSHI imm16
    mov rax, 0x0007
    push rax
; 01EF: rotl8
    pop rbx
    pop rax
    mov cl, bl
    rol al, cl
    push rax
; 01F0: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 01F1: PUSHI imm16
label_01F1:
    mov rax, 0x0015
    push rax
; 01F4: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 01F5: PUSHI imm16
    mov rax, 0x0016
    push rax
; 01F8: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 01F9: EQUAL
    pop rbx
    pop rax
    cmp rax, rbx
    setz al
    movzx rax, al
    push rax
; 01FA: PUSHI imm16
    mov rax, 0x0000
    push rax
; 01FD: EQUAL
    pop rbx
    pop rax
    cmp rax, rbx
    setz al
    movzx rax, al
    push rax
; 01FE: JUMP_IF_FALSE imm16
    pop rax
    test rax, rax
    jz label_0208
; 0201: PUSHI imm16
    mov rax, 0x0018
    push rax
; 0204: PUSHI imm16
    mov rax, 0x0000
    push rax
; 0207: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0208: PUSHI imm16
label_0208:
    mov rax, 0x0015
    push rax
; 020B: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 020C: PUSHI imm16
    mov rax, 0x0016
    push rax
; 020F: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0210: EQUAL
    pop rbx
    pop rax
    cmp rax, rbx
    setz al
    movzx rax, al
    push rax
; 0211: JUMP_IF_FALSE imm16
    pop rax
    test rax, rax
    jz label_0220
; 0214: PUSHI imm16
    mov rax, 0x0017
    push rax
; 0217: PUSHI imm16
    mov rax, 0x0017
    push rax
; 021A: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 021B: PUSHI imm16
    mov rax, 0x0001
    push rax
; 021E: add
    pop rbx
    pop rax
    add rax, rbx
    push rax
; 021F: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0220: PUSHI imm16
label_0220:
    mov rax, 0x0014
    push rax
; 0223: PUSHI imm16
    mov rax, 0x0014
    push rax
; 0226: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0227: PUSHI imm16
    mov rax, 0x0001
    push rax
; 022A: add
    pop rbx
    pop rax
    add rax, rbx
    push rax
; 022B: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 022C: PUSHI imm16
    mov rax, 0x0014
    push rax
; 022F: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0230: PUSHI imm16
    mov rax, 0x000F
    push rax
; 0233: GREATER
    pop rbx
    pop rax
    cmp rax, rbx
    setg al
    movzx rax, al
    push rax
; 0234: JUMP_IF_FALSE imm16
    pop rax
    test rax, rax
    jz label_023E
; 0237: PUSHI imm16
    mov rax, 0x0018
    push rax
; 023A: PUSHI imm16
    mov rax, 0x0000
    push rax
; 023D: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 023E: JUMP imm16
label_023E:
    jmp label_0118
; 0241: PUSHI imm16
label_0241:
    mov rax, 0x0017
    push rax
; 0244: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0245: PUSHI imm16
    mov rax, 0x0010
    push rax
; 0248: EQUAL
    pop rbx
    pop rax
    cmp rax, rbx
    setz al
    movzx rax, al
    push rax
; 0249: JUMP_IF_FALSE imm16
    pop rax
    test rax, rax
    jz label_0253
; 024C: PUSHI imm16
    mov rax, 0x0019
    push rax
; 024F: PUSHI imm16
    mov rax, 0x0001
    push rax
; 0252: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0253: PUSHI imm16
label_0253:
    mov rax, 0x0019
    push rax
; 0256: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0257: POP_RES2
    pop rax
    mov [check], rax
; 0258: DONE
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
