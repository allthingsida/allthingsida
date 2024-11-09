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
    mov rax, 0x7242
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
    mov rax, 0x6961
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
    mov rax, 0x4E6E
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
    mov rax, 0x6D75
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
    mov rax, 0x4662
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
    mov rax, 0x6F72
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
    mov rax, 0x566D
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
    mov rax, 0x216D
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
    jz label_01E5
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
    mov rax, 0x0015
    push rax
; 0198: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0199: PUSHI imm16
    mov rax, 0x0016
    push rax
; 019C: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 019D: EQUAL
    pop rbx
    pop rax
    cmp rax, rbx
    setz al
    movzx rax, al
    push rax
; 019E: PUSHI imm16
    mov rax, 0x0000
    push rax
; 01A1: EQUAL
    pop rbx
    pop rax
    cmp rax, rbx
    setz al
    movzx rax, al
    push rax
; 01A2: JUMP_IF_FALSE imm16
    pop rax
    test rax, rax
    jz label_01AC
; 01A5: PUSHI imm16
    mov rax, 0x0018
    push rax
; 01A8: PUSHI imm16
    mov rax, 0x0000
    push rax
; 01AB: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 01AC: PUSHI imm16
label_01AC:
    mov rax, 0x0015
    push rax
; 01AF: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 01B0: PUSHI imm16
    mov rax, 0x0016
    push rax
; 01B3: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 01B4: EQUAL
    pop rbx
    pop rax
    cmp rax, rbx
    setz al
    movzx rax, al
    push rax
; 01B5: JUMP_IF_FALSE imm16
    pop rax
    test rax, rax
    jz label_01C4
; 01B8: PUSHI imm16
    mov rax, 0x0017
    push rax
; 01BB: PUSHI imm16
    mov rax, 0x0017
    push rax
; 01BE: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 01BF: PUSHI imm16
    mov rax, 0x0001
    push rax
; 01C2: add
    pop rbx
    pop rax
    add rax, rbx
    push rax
; 01C3: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 01C4: PUSHI imm16
label_01C4:
    mov rax, 0x0014
    push rax
; 01C7: PUSHI imm16
    mov rax, 0x0014
    push rax
; 01CA: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 01CB: PUSHI imm16
    mov rax, 0x0001
    push rax
; 01CE: add
    pop rbx
    pop rax
    add rax, rbx
    push rax
; 01CF: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 01D0: PUSHI imm16
    mov rax, 0x0014
    push rax
; 01D3: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 01D4: PUSHI imm16
    mov rax, 0x000F
    push rax
; 01D7: GREATER
    pop rbx
    pop rax
    cmp rax, rbx
    setg al
    movzx rax, al
    push rax
; 01D8: JUMP_IF_FALSE imm16
    pop rax
    test rax, rax
    jz label_01E2
; 01DB: PUSHI imm16
    mov rax, 0x0018
    push rax
; 01DE: PUSHI imm16
    mov rax, 0x0000
    push rax
; 01E1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 01E2: JUMP imm16
label_01E2:
    jmp label_0118
; 01E5: PUSHI imm16
label_01E5:
    mov rax, 0x0017
    push rax
; 01E8: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 01E9: PUSHI imm16
    mov rax, 0x0010
    push rax
; 01EC: EQUAL
    pop rbx
    pop rax
    cmp rax, rbx
    setz al
    movzx rax, al
    push rax
; 01ED: JUMP_IF_FALSE imm16
    pop rax
    test rax, rax
    jz label_18F7
; 01F0: PUSHI imm16
    mov rax, 0x0019
    push rax
; 01F3: PUSHI imm16
    mov rax, 0x0001
    push rax
; 01F6: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 01F7: PUSHI imm16
    mov rax, 0x001A
    push rax
; 01FA: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 01FD: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 0200: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0201: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0202: PUSHI imm16
    mov rax, 0x001A
    push rax
; 0205: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0206: print
    pop rax
    call print_rax
; 0207: PUSHI imm16
    mov rax, 0x001B
    push rax
; 020A: PUSHI imm16
    mov rax, 0x008D
    push rax
; 020D: PUSHI imm16
    mov rax, 0x00AD
    push rax
; 0210: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0211: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0212: PUSHI imm16
    mov rax, 0x001B
    push rax
; 0215: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0216: print
    pop rax
    call print_rax
; 0217: PUSHI imm16
    mov rax, 0x001C
    push rax
; 021A: PUSHI imm16
    mov rax, 0x0095
    push rax
; 021D: PUSHI imm16
    mov rax, 0x00CA
    push rax
; 0220: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0221: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0222: PUSHI imm16
    mov rax, 0x001C
    push rax
; 0225: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0226: print
    pop rax
    call print_rax
; 0227: PUSHI imm16
    mov rax, 0x001D
    push rax
; 022A: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 022D: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 0230: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0231: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0232: PUSHI imm16
    mov rax, 0x001D
    push rax
; 0235: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0236: print
    pop rax
    call print_rax
; 0237: PUSHI imm16
    mov rax, 0x001E
    push rax
; 023A: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 023D: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 0240: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0241: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0242: PUSHI imm16
    mov rax, 0x001E
    push rax
; 0245: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0246: print
    pop rax
    call print_rax
; 0247: PUSHI imm16
    mov rax, 0x001F
    push rax
; 024A: PUSHI imm16
    mov rax, 0x008D
    push rax
; 024D: PUSHI imm16
    mov rax, 0x00AD
    push rax
; 0250: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0251: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0252: PUSHI imm16
    mov rax, 0x001F
    push rax
; 0255: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0256: print
    pop rax
    call print_rax
; 0257: PUSHI imm16
    mov rax, 0x0020
    push rax
; 025A: PUSHI imm16
    mov rax, 0x00EA
    push rax
; 025D: PUSHI imm16
    mov rax, 0x00CA
    push rax
; 0260: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0261: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0262: PUSHI imm16
    mov rax, 0x0020
    push rax
; 0265: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0266: print
    pop rax
    call print_rax
; 0267: PUSHI imm16
    mov rax, 0x0021
    push rax
; 026A: PUSHI imm16
    mov rax, 0x00A1
    push rax
; 026D: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 0270: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0271: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0272: PUSHI imm16
    mov rax, 0x0021
    push rax
; 0275: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0276: print
    pop rax
    call print_rax
; 0277: PUSHI imm16
    mov rax, 0x0022
    push rax
; 027A: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 027D: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 0280: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0281: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0282: PUSHI imm16
    mov rax, 0x0022
    push rax
; 0285: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0286: print
    pop rax
    call print_rax
; 0287: PUSHI imm16
    mov rax, 0x0023
    push rax
; 028A: PUSHI imm16
    mov rax, 0x008D
    push rax
; 028D: PUSHI imm16
    mov rax, 0x00AD
    push rax
; 0290: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0291: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0292: PUSHI imm16
    mov rax, 0x0023
    push rax
; 0295: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0296: print
    pop rax
    call print_rax
; 0297: PUSHI imm16
    mov rax, 0x0024
    push rax
; 029A: PUSHI imm16
    mov rax, 0x00EA
    push rax
; 029D: PUSHI imm16
    mov rax, 0x00CA
    push rax
; 02A0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 02A1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 02A2: PUSHI imm16
    mov rax, 0x0024
    push rax
; 02A5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 02A6: print
    pop rax
    call print_rax
; 02A7: PUSHI imm16
    mov rax, 0x0025
    push rax
; 02AA: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 02AD: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 02B0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 02B1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 02B2: PUSHI imm16
    mov rax, 0x0025
    push rax
; 02B5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 02B6: print
    pop rax
    call print_rax
; 02B7: PUSHI imm16
    mov rax, 0x0026
    push rax
; 02BA: PUSHI imm16
    mov rax, 0x0081
    push rax
; 02BD: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 02C0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 02C1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 02C2: PUSHI imm16
    mov rax, 0x0026
    push rax
; 02C5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 02C6: print
    pop rax
    call print_rax
; 02C7: PUSHI imm16
    mov rax, 0x0027
    push rax
; 02CA: PUSHI imm16
    mov rax, 0x008D
    push rax
; 02CD: PUSHI imm16
    mov rax, 0x00AD
    push rax
; 02D0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 02D1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 02D2: PUSHI imm16
    mov rax, 0x0027
    push rax
; 02D5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 02D6: print
    pop rax
    call print_rax
; 02D7: PUSHI imm16
    mov rax, 0x0028
    push rax
; 02DA: PUSHI imm16
    mov rax, 0x00EA
    push rax
; 02DD: PUSHI imm16
    mov rax, 0x00CA
    push rax
; 02E0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 02E1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 02E2: PUSHI imm16
    mov rax, 0x0028
    push rax
; 02E5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 02E6: print
    pop rax
    call print_rax
; 02E7: PUSHI imm16
    mov rax, 0x0029
    push rax
; 02EA: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 02ED: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 02F0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 02F1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 02F2: PUSHI imm16
    mov rax, 0x0029
    push rax
; 02F5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 02F6: print
    pop rax
    call print_rax
; 02F7: PUSHI imm16
    mov rax, 0x002A
    push rax
; 02FA: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 02FD: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 0300: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0301: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0302: PUSHI imm16
    mov rax, 0x002A
    push rax
; 0305: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0306: print
    pop rax
    call print_rax
; 0307: PUSHI imm16
    mov rax, 0x002B
    push rax
; 030A: PUSHI imm16
    mov rax, 0x00F2
    push rax
; 030D: PUSHI imm16
    mov rax, 0x00AD
    push rax
; 0310: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0311: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0312: PUSHI imm16
    mov rax, 0x002B
    push rax
; 0315: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0316: print
    pop rax
    call print_rax
; 0317: PUSHI imm16
    mov rax, 0x002C
    push rax
; 031A: PUSHI imm16
    mov rax, 0x00EA
    push rax
; 031D: PUSHI imm16
    mov rax, 0x00CA
    push rax
; 0320: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0321: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0322: PUSHI imm16
    mov rax, 0x002C
    push rax
; 0325: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0326: print
    pop rax
    call print_rax
; 0327: PUSHI imm16
    mov rax, 0x002D
    push rax
; 032A: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 032D: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 0330: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0331: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0332: PUSHI imm16
    mov rax, 0x002D
    push rax
; 0335: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0336: print
    pop rax
    call print_rax
; 0337: PUSHI imm16
    mov rax, 0x002E
    push rax
; 033A: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 033D: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 0340: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0341: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0342: PUSHI imm16
    mov rax, 0x002E
    push rax
; 0345: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0346: print
    pop rax
    call print_rax
; 0347: PUSHI imm16
    mov rax, 0x002F
    push rax
; 034A: PUSHI imm16
    mov rax, 0x008D
    push rax
; 034D: PUSHI imm16
    mov rax, 0x00AD
    push rax
; 0350: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0351: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0352: PUSHI imm16
    mov rax, 0x002F
    push rax
; 0355: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0356: print
    pop rax
    call print_rax
; 0357: PUSHI imm16
    mov rax, 0x0030
    push rax
; 035A: PUSHI imm16
    mov rax, 0x0095
    push rax
; 035D: PUSHI imm16
    mov rax, 0x00CA
    push rax
; 0360: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0361: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0362: PUSHI imm16
    mov rax, 0x0030
    push rax
; 0365: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0366: print
    pop rax
    call print_rax
; 0367: PUSHI imm16
    mov rax, 0x0031
    push rax
; 036A: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 036D: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 0370: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0371: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0372: PUSHI imm16
    mov rax, 0x0031
    push rax
; 0375: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0376: print
    pop rax
    call print_rax
; 0377: PUSHI imm16
    mov rax, 0x0032
    push rax
; 037A: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 037D: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 0380: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0381: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0382: PUSHI imm16
    mov rax, 0x0032
    push rax
; 0385: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0386: print
    pop rax
    call print_rax
; 0387: PUSHI imm16
    mov rax, 0x0033
    push rax
; 038A: PUSHI imm16
    mov rax, 0x008D
    push rax
; 038D: PUSHI imm16
    mov rax, 0x00AD
    push rax
; 0390: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0391: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0392: PUSHI imm16
    mov rax, 0x0033
    push rax
; 0395: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0396: print
    pop rax
    call print_rax
; 0397: PUSHI imm16
    mov rax, 0x0034
    push rax
; 039A: PUSHI imm16
    mov rax, 0x00EA
    push rax
; 039D: PUSHI imm16
    mov rax, 0x00CA
    push rax
; 03A0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 03A1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 03A2: PUSHI imm16
    mov rax, 0x0034
    push rax
; 03A5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 03A6: print
    pop rax
    call print_rax
; 03A7: PUSHI imm16
    mov rax, 0x0035
    push rax
; 03AA: PUSHI imm16
    mov rax, 0x00A1
    push rax
; 03AD: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 03B0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 03B1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 03B2: PUSHI imm16
    mov rax, 0x0035
    push rax
; 03B5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 03B6: print
    pop rax
    call print_rax
; 03B7: PUSHI imm16
    mov rax, 0x0036
    push rax
; 03BA: PUSHI imm16
    mov rax, 0x00D3
    push rax
; 03BD: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 03C0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 03C1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 03C2: PUSHI imm16
    mov rax, 0x0036
    push rax
; 03C5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 03C6: print
    pop rax
    call print_rax
; 03C7: PUSHI imm16
    mov rax, 0x0037
    push rax
; 03CA: PUSHI imm16
    mov rax, 0x00A7
    push rax
; 03CD: PUSHI imm16
    mov rax, 0x00AD
    push rax
; 03D0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 03D1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 03D2: PUSHI imm16
    mov rax, 0x0037
    push rax
; 03D5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 03D6: print
    pop rax
    call print_rax
; 03D7: PUSHI imm16
    mov rax, 0x0038
    push rax
; 03DA: PUSHI imm16
    mov rax, 0x00EA
    push rax
; 03DD: PUSHI imm16
    mov rax, 0x00CA
    push rax
; 03E0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 03E1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 03E2: PUSHI imm16
    mov rax, 0x0038
    push rax
; 03E5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 03E6: print
    pop rax
    call print_rax
; 03E7: PUSHI imm16
    mov rax, 0x0039
    push rax
; 03EA: PUSHI imm16
    mov rax, 0x00D1
    push rax
; 03ED: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 03F0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 03F1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 03F2: PUSHI imm16
    mov rax, 0x0039
    push rax
; 03F5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 03F6: print
    pop rax
    call print_rax
; 03F7: PUSHI imm16
    mov rax, 0x003A
    push rax
; 03FA: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 03FD: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 0400: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0401: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0402: PUSHI imm16
    mov rax, 0x003A
    push rax
; 0405: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0406: print
    pop rax
    call print_rax
; 0407: PUSHI imm16
    mov rax, 0x003B
    push rax
; 040A: PUSHI imm16
    mov rax, 0x00F1
    push rax
; 040D: PUSHI imm16
    mov rax, 0x00AD
    push rax
; 0410: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0411: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0412: PUSHI imm16
    mov rax, 0x003B
    push rax
; 0415: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0416: print
    pop rax
    call print_rax
; 0417: PUSHI imm16
    mov rax, 0x003C
    push rax
; 041A: PUSHI imm16
    mov rax, 0x00EA
    push rax
; 041D: PUSHI imm16
    mov rax, 0x00CA
    push rax
; 0420: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0421: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0422: PUSHI imm16
    mov rax, 0x003C
    push rax
; 0425: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0426: print
    pop rax
    call print_rax
; 0427: PUSHI imm16
    mov rax, 0x003D
    push rax
; 042A: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 042D: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 0430: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0431: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0432: PUSHI imm16
    mov rax, 0x003D
    push rax
; 0435: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0436: print
    pop rax
    call print_rax
; 0437: PUSHI imm16
    mov rax, 0x003E
    push rax
; 043A: PUSHI imm16
    mov rax, 0x00F1
    push rax
; 043D: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 0440: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0441: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0442: PUSHI imm16
    mov rax, 0x003E
    push rax
; 0445: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0446: print
    pop rax
    call print_rax
; 0447: PUSHI imm16
    mov rax, 0x003F
    push rax
; 044A: PUSHI imm16
    mov rax, 0x008D
    push rax
; 044D: PUSHI imm16
    mov rax, 0x00AD
    push rax
; 0450: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0451: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0452: PUSHI imm16
    mov rax, 0x003F
    push rax
; 0455: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0456: print
    pop rax
    call print_rax
; 0457: PUSHI imm16
    mov rax, 0x0040
    push rax
; 045A: PUSHI imm16
    mov rax, 0x0096
    push rax
; 045D: PUSHI imm16
    mov rax, 0x00CA
    push rax
; 0460: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0461: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0462: PUSHI imm16
    mov rax, 0x0040
    push rax
; 0465: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0466: print
    pop rax
    call print_rax
; 0467: PUSHI imm16
    mov rax, 0x0041
    push rax
; 046A: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 046D: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 0470: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0471: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0472: PUSHI imm16
    mov rax, 0x0041
    push rax
; 0475: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0476: print
    pop rax
    call print_rax
; 0477: PUSHI imm16
    mov rax, 0x0042
    push rax
; 047A: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 047D: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 0480: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0481: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0482: PUSHI imm16
    mov rax, 0x0042
    push rax
; 0485: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0486: print
    pop rax
    call print_rax
; 0487: PUSHI imm16
    mov rax, 0x0043
    push rax
; 048A: PUSHI imm16
    mov rax, 0x0082
    push rax
; 048D: PUSHI imm16
    mov rax, 0x00AD
    push rax
; 0490: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0491: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0492: PUSHI imm16
    mov rax, 0x0043
    push rax
; 0495: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0496: print
    pop rax
    call print_rax
; 0497: PUSHI imm16
    mov rax, 0x0044
    push rax
; 049A: PUSHI imm16
    mov rax, 0x00EA
    push rax
; 049D: PUSHI imm16
    mov rax, 0x00CA
    push rax
; 04A0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 04A1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 04A2: PUSHI imm16
    mov rax, 0x0044
    push rax
; 04A5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 04A6: print
    pop rax
    call print_rax
; 04A7: PUSHI imm16
    mov rax, 0x0045
    push rax
; 04AA: PUSHI imm16
    mov rax, 0x00A2
    push rax
; 04AD: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 04B0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 04B1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 04B2: PUSHI imm16
    mov rax, 0x0045
    push rax
; 04B5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 04B6: print
    pop rax
    call print_rax
; 04B7: PUSHI imm16
    mov rax, 0x0046
    push rax
; 04BA: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 04BD: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 04C0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 04C1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 04C2: PUSHI imm16
    mov rax, 0x0046
    push rax
; 04C5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 04C6: print
    pop rax
    call print_rax
; 04C7: PUSHI imm16
    mov rax, 0x0047
    push rax
; 04CA: PUSHI imm16
    mov rax, 0x008D
    push rax
; 04CD: PUSHI imm16
    mov rax, 0x00AD
    push rax
; 04D0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 04D1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 04D2: PUSHI imm16
    mov rax, 0x0047
    push rax
; 04D5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 04D6: print
    pop rax
    call print_rax
; 04D7: PUSHI imm16
    mov rax, 0x0048
    push rax
; 04DA: PUSHI imm16
    mov rax, 0x00E5
    push rax
; 04DD: PUSHI imm16
    mov rax, 0x00CA
    push rax
; 04E0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 04E1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 04E2: PUSHI imm16
    mov rax, 0x0048
    push rax
; 04E5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 04E6: print
    pop rax
    call print_rax
; 04E7: PUSHI imm16
    mov rax, 0x0049
    push rax
; 04EA: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 04ED: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 04F0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 04F1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 04F2: PUSHI imm16
    mov rax, 0x0049
    push rax
; 04F5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 04F6: print
    pop rax
    call print_rax
; 04F7: PUSHI imm16
    mov rax, 0x004A
    push rax
; 04FA: PUSHI imm16
    mov rax, 0x0082
    push rax
; 04FD: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 0500: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0501: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0502: PUSHI imm16
    mov rax, 0x004A
    push rax
; 0505: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0506: print
    pop rax
    call print_rax
; 0507: PUSHI imm16
    mov rax, 0x004B
    push rax
; 050A: PUSHI imm16
    mov rax, 0x008D
    push rax
; 050D: PUSHI imm16
    mov rax, 0x00AD
    push rax
; 0510: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0511: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0512: PUSHI imm16
    mov rax, 0x004B
    push rax
; 0515: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0516: print
    pop rax
    call print_rax
; 0517: PUSHI imm16
    mov rax, 0x004C
    push rax
; 051A: PUSHI imm16
    mov rax, 0x00EA
    push rax
; 051D: PUSHI imm16
    mov rax, 0x00CA
    push rax
; 0520: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0521: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0522: PUSHI imm16
    mov rax, 0x004C
    push rax
; 0525: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0526: print
    pop rax
    call print_rax
; 0527: PUSHI imm16
    mov rax, 0x004D
    push rax
; 052A: PUSHI imm16
    mov rax, 0x00D1
    push rax
; 052D: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 0530: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0531: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0532: PUSHI imm16
    mov rax, 0x004D
    push rax
; 0535: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0536: print
    pop rax
    call print_rax
; 0537: PUSHI imm16
    mov rax, 0x004E
    push rax
; 053A: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 053D: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 0540: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0541: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0542: PUSHI imm16
    mov rax, 0x004E
    push rax
; 0545: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0546: print
    pop rax
    call print_rax
; 0547: PUSHI imm16
    mov rax, 0x004F
    push rax
; 054A: PUSHI imm16
    mov rax, 0x00F1
    push rax
; 054D: PUSHI imm16
    mov rax, 0x00AD
    push rax
; 0550: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0551: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0552: PUSHI imm16
    mov rax, 0x004F
    push rax
; 0555: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0556: print
    pop rax
    call print_rax
; 0557: PUSHI imm16
    mov rax, 0x0050
    push rax
; 055A: PUSHI imm16
    mov rax, 0x00EA
    push rax
; 055D: PUSHI imm16
    mov rax, 0x00CA
    push rax
; 0560: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0561: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0562: PUSHI imm16
    mov rax, 0x0050
    push rax
; 0565: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0566: print
    pop rax
    call print_rax
; 0567: PUSHI imm16
    mov rax, 0x0051
    push rax
; 056A: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 056D: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 0570: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0571: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0572: PUSHI imm16
    mov rax, 0x0051
    push rax
; 0575: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0576: print
    pop rax
    call print_rax
; 0577: PUSHI imm16
    mov rax, 0x0052
    push rax
; 057A: PUSHI imm16
    mov rax, 0x00F1
    push rax
; 057D: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 0580: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0581: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0582: PUSHI imm16
    mov rax, 0x0052
    push rax
; 0585: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0586: print
    pop rax
    call print_rax
; 0587: PUSHI imm16
    mov rax, 0x0053
    push rax
; 058A: PUSHI imm16
    mov rax, 0x008D
    push rax
; 058D: PUSHI imm16
    mov rax, 0x00AD
    push rax
; 0590: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0591: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0592: PUSHI imm16
    mov rax, 0x0053
    push rax
; 0595: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0596: print
    pop rax
    call print_rax
; 0597: PUSHI imm16
    mov rax, 0x0054
    push rax
; 059A: PUSHI imm16
    mov rax, 0x0096
    push rax
; 059D: PUSHI imm16
    mov rax, 0x00CA
    push rax
; 05A0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 05A1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 05A2: PUSHI imm16
    mov rax, 0x0054
    push rax
; 05A5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 05A6: print
    pop rax
    call print_rax
; 05A7: PUSHI imm16
    mov rax, 0x0055
    push rax
; 05AA: PUSHI imm16
    mov rax, 0x00F3
    push rax
; 05AD: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 05B0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 05B1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 05B2: PUSHI imm16
    mov rax, 0x0055
    push rax
; 05B5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 05B6: print
    pop rax
    call print_rax
; 05B7: PUSHI imm16
    mov rax, 0x0056
    push rax
; 05BA: PUSHI imm16
    mov rax, 0x00D4
    push rax
; 05BD: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 05C0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 05C1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 05C2: PUSHI imm16
    mov rax, 0x0056
    push rax
; 05C5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 05C6: print
    pop rax
    call print_rax
; 05C7: PUSHI imm16
    mov rax, 0x0057
    push rax
; 05CA: PUSHI imm16
    mov rax, 0x0085
    push rax
; 05CD: PUSHI imm16
    mov rax, 0x00AD
    push rax
; 05D0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 05D1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 05D2: PUSHI imm16
    mov rax, 0x0057
    push rax
; 05D5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 05D6: print
    pop rax
    call print_rax
; 05D7: PUSHI imm16
    mov rax, 0x0058
    push rax
; 05DA: PUSHI imm16
    mov rax, 0x00EA
    push rax
; 05DD: PUSHI imm16
    mov rax, 0x00CA
    push rax
; 05E0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 05E1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 05E2: PUSHI imm16
    mov rax, 0x0058
    push rax
; 05E5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 05E6: print
    pop rax
    call print_rax
; 05E7: PUSHI imm16
    mov rax, 0x0059
    push rax
; 05EA: PUSHI imm16
    mov rax, 0x008B
    push rax
; 05ED: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 05F0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 05F1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 05F2: PUSHI imm16
    mov rax, 0x0059
    push rax
; 05F5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 05F6: print
    pop rax
    call print_rax
; 05F7: PUSHI imm16
    mov rax, 0x005A
    push rax
; 05FA: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 05FD: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 0600: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0601: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0602: PUSHI imm16
    mov rax, 0x005A
    push rax
; 0605: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0606: print
    pop rax
    call print_rax
; 0607: PUSHI imm16
    mov rax, 0x005B
    push rax
; 060A: PUSHI imm16
    mov rax, 0x0084
    push rax
; 060D: PUSHI imm16
    mov rax, 0x00AD
    push rax
; 0610: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0611: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0612: PUSHI imm16
    mov rax, 0x005B
    push rax
; 0615: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0616: print
    pop rax
    call print_rax
; 0617: PUSHI imm16
    mov rax, 0x005C
    push rax
; 061A: PUSHI imm16
    mov rax, 0x00E2
    push rax
; 061D: PUSHI imm16
    mov rax, 0x00CA
    push rax
; 0620: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0621: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0622: PUSHI imm16
    mov rax, 0x005C
    push rax
; 0625: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0626: print
    pop rax
    call print_rax
; 0627: PUSHI imm16
    mov rax, 0x005D
    push rax
; 062A: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 062D: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 0630: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0631: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0632: PUSHI imm16
    mov rax, 0x005D
    push rax
; 0635: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0636: print
    pop rax
    call print_rax
; 0637: PUSHI imm16
    mov rax, 0x005E
    push rax
; 063A: PUSHI imm16
    mov rax, 0x00B0
    push rax
; 063D: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 0640: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0641: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0642: PUSHI imm16
    mov rax, 0x005E
    push rax
; 0645: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0646: print
    pop rax
    call print_rax
; 0647: PUSHI imm16
    mov rax, 0x005F
    push rax
; 064A: PUSHI imm16
    mov rax, 0x008D
    push rax
; 064D: PUSHI imm16
    mov rax, 0x00AD
    push rax
; 0650: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0651: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0652: PUSHI imm16
    mov rax, 0x005F
    push rax
; 0655: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0656: print
    pop rax
    call print_rax
; 0657: PUSHI imm16
    mov rax, 0x0060
    push rax
; 065A: PUSHI imm16
    mov rax, 0x00E3
    push rax
; 065D: PUSHI imm16
    mov rax, 0x00CA
    push rax
; 0660: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0661: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0662: PUSHI imm16
    mov rax, 0x0060
    push rax
; 0665: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0666: print
    pop rax
    call print_rax
; 0667: PUSHI imm16
    mov rax, 0x0061
    push rax
; 066A: PUSHI imm16
    mov rax, 0x00D6
    push rax
; 066D: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 0670: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0671: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0672: PUSHI imm16
    mov rax, 0x0061
    push rax
; 0675: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0676: print
    pop rax
    call print_rax
; 0677: PUSHI imm16
    mov rax, 0x0062
    push rax
; 067A: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 067D: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 0680: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0681: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0682: PUSHI imm16
    mov rax, 0x0062
    push rax
; 0685: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0686: print
    pop rax
    call print_rax
; 0687: PUSHI imm16
    mov rax, 0x0063
    push rax
; 068A: PUSHI imm16
    mov rax, 0x00C9
    push rax
; 068D: PUSHI imm16
    mov rax, 0x00AD
    push rax
; 0690: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0691: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0692: PUSHI imm16
    mov rax, 0x0063
    push rax
; 0695: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0696: print
    pop rax
    call print_rax
; 0697: PUSHI imm16
    mov rax, 0x0064
    push rax
; 069A: PUSHI imm16
    mov rax, 0x00EA
    push rax
; 069D: PUSHI imm16
    mov rax, 0x00CA
    push rax
; 06A0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 06A1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 06A2: PUSHI imm16
    mov rax, 0x0064
    push rax
; 06A5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 06A6: print
    pop rax
    call print_rax
; 06A7: PUSHI imm16
    mov rax, 0x0065
    push rax
; 06AA: PUSHI imm16
    mov rax, 0x00D7
    push rax
; 06AD: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 06B0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 06B1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 06B2: PUSHI imm16
    mov rax, 0x0065
    push rax
; 06B5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 06B6: print
    pop rax
    call print_rax
; 06B7: PUSHI imm16
    mov rax, 0x0066
    push rax
; 06BA: PUSHI imm16
    mov rax, 0x00F6
    push rax
; 06BD: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 06C0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 06C1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 06C2: PUSHI imm16
    mov rax, 0x0066
    push rax
; 06C5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 06C6: print
    pop rax
    call print_rax
; 06C7: PUSHI imm16
    mov rax, 0x0067
    push rax
; 06CA: PUSHI imm16
    mov rax, 0x008D
    push rax
; 06CD: PUSHI imm16
    mov rax, 0x00AD
    push rax
; 06D0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 06D1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 06D2: PUSHI imm16
    mov rax, 0x0067
    push rax
; 06D5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 06D6: print
    pop rax
    call print_rax
; 06D7: PUSHI imm16
    mov rax, 0x0068
    push rax
; 06DA: PUSHI imm16
    mov rax, 0x00F9
    push rax
; 06DD: PUSHI imm16
    mov rax, 0x00CA
    push rax
; 06E0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 06E1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 06E2: PUSHI imm16
    mov rax, 0x0068
    push rax
; 06E5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 06E6: print
    pop rax
    call print_rax
; 06E7: PUSHI imm16
    mov rax, 0x0069
    push rax
; 06EA: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 06ED: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 06F0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 06F1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 06F2: PUSHI imm16
    mov rax, 0x0069
    push rax
; 06F5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 06F6: print
    pop rax
    call print_rax
; 06F7: PUSHI imm16
    mov rax, 0x006A
    push rax
; 06FA: PUSHI imm16
    mov rax, 0x00F7
    push rax
; 06FD: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 0700: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0701: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0702: PUSHI imm16
    mov rax, 0x006A
    push rax
; 0705: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0706: print
    pop rax
    call print_rax
; 0707: PUSHI imm16
    mov rax, 0x006B
    push rax
; 070A: PUSHI imm16
    mov rax, 0x0085
    push rax
; 070D: PUSHI imm16
    mov rax, 0x00AD
    push rax
; 0710: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0711: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0712: PUSHI imm16
    mov rax, 0x006B
    push rax
; 0715: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0716: print
    pop rax
    call print_rax
; 0717: PUSHI imm16
    mov rax, 0x006C
    push rax
; 071A: PUSHI imm16
    mov rax, 0x00EA
    push rax
; 071D: PUSHI imm16
    mov rax, 0x00CA
    push rax
; 0720: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0721: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0722: PUSHI imm16
    mov rax, 0x006C
    push rax
; 0725: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0726: print
    pop rax
    call print_rax
; 0727: PUSHI imm16
    mov rax, 0x006D
    push rax
; 072A: PUSHI imm16
    mov rax, 0x008C
    push rax
; 072D: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 0730: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0731: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0732: PUSHI imm16
    mov rax, 0x006D
    push rax
; 0735: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0736: print
    pop rax
    call print_rax
; 0737: PUSHI imm16
    mov rax, 0x006E
    push rax
; 073A: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 073D: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 0740: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0741: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0742: PUSHI imm16
    mov rax, 0x006E
    push rax
; 0745: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0746: print
    pop rax
    call print_rax
; 0747: PUSHI imm16
    mov rax, 0x006F
    push rax
; 074A: PUSHI imm16
    mov rax, 0x0084
    push rax
; 074D: PUSHI imm16
    mov rax, 0x00AD
    push rax
; 0750: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0751: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0752: PUSHI imm16
    mov rax, 0x006F
    push rax
; 0755: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0756: print
    pop rax
    call print_rax
; 0757: PUSHI imm16
    mov rax, 0x0070
    push rax
; 075A: PUSHI imm16
    mov rax, 0x00E2
    push rax
; 075D: PUSHI imm16
    mov rax, 0x00CA
    push rax
; 0760: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0761: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0762: PUSHI imm16
    mov rax, 0x0070
    push rax
; 0765: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0766: print
    pop rax
    call print_rax
; 0767: PUSHI imm16
    mov rax, 0x0071
    push rax
; 076A: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 076D: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 0770: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0771: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0772: PUSHI imm16
    mov rax, 0x0071
    push rax
; 0775: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0776: print
    pop rax
    call print_rax
; 0777: PUSHI imm16
    mov rax, 0x0072
    push rax
; 077A: PUSHI imm16
    mov rax, 0x0081
    push rax
; 077D: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 0780: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0781: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0782: PUSHI imm16
    mov rax, 0x0072
    push rax
; 0785: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0786: print
    pop rax
    call print_rax
; 0787: PUSHI imm16
    mov rax, 0x0073
    push rax
; 078A: PUSHI imm16
    mov rax, 0x008D
    push rax
; 078D: PUSHI imm16
    mov rax, 0x00AD
    push rax
; 0790: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0791: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0792: PUSHI imm16
    mov rax, 0x0073
    push rax
; 0795: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0796: print
    pop rax
    call print_rax
; 0797: PUSHI imm16
    mov rax, 0x0074
    push rax
; 079A: PUSHI imm16
    mov rax, 0x00E3
    push rax
; 079D: PUSHI imm16
    mov rax, 0x00CA
    push rax
; 07A0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 07A1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 07A2: PUSHI imm16
    mov rax, 0x0074
    push rax
; 07A5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 07A6: print
    pop rax
    call print_rax
; 07A7: PUSHI imm16
    mov rax, 0x0075
    push rax
; 07AA: PUSHI imm16
    mov rax, 0x00F3
    push rax
; 07AD: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 07B0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 07B1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 07B2: PUSHI imm16
    mov rax, 0x0075
    push rax
; 07B5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 07B6: print
    pop rax
    call print_rax
; 07B7: PUSHI imm16
    mov rax, 0x0076
    push rax
; 07BA: PUSHI imm16
    mov rax, 0x00D4
    push rax
; 07BD: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 07C0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 07C1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 07C2: PUSHI imm16
    mov rax, 0x0076
    push rax
; 07C5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 07C6: print
    pop rax
    call print_rax
; 07C7: PUSHI imm16
    mov rax, 0x0077
    push rax
; 07CA: PUSHI imm16
    mov rax, 0x008D
    push rax
; 07CD: PUSHI imm16
    mov rax, 0x00AD
    push rax
; 07D0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 07D1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 07D2: PUSHI imm16
    mov rax, 0x0077
    push rax
; 07D5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 07D6: print
    pop rax
    call print_rax
; 07D7: PUSHI imm16
    mov rax, 0x0078
    push rax
; 07DA: PUSHI imm16
    mov rax, 0x0096
    push rax
; 07DD: PUSHI imm16
    mov rax, 0x00CA
    push rax
; 07E0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 07E1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 07E2: PUSHI imm16
    mov rax, 0x0078
    push rax
; 07E5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 07E6: print
    pop rax
    call print_rax
; 07E7: PUSHI imm16
    mov rax, 0x0079
    push rax
; 07EA: PUSHI imm16
    mov rax, 0x00A1
    push rax
; 07ED: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 07F0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 07F1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 07F2: PUSHI imm16
    mov rax, 0x0079
    push rax
; 07F5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 07F6: print
    pop rax
    call print_rax
; 07F7: PUSHI imm16
    mov rax, 0x007A
    push rax
; 07FA: PUSHI imm16
    mov rax, 0x00F1
    push rax
; 07FD: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 0800: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0801: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0802: PUSHI imm16
    mov rax, 0x007A
    push rax
; 0805: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0806: print
    pop rax
    call print_rax
; 0807: PUSHI imm16
    mov rax, 0x007B
    push rax
; 080A: PUSHI imm16
    mov rax, 0x008D
    push rax
; 080D: PUSHI imm16
    mov rax, 0x00AD
    push rax
; 0810: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0811: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0812: PUSHI imm16
    mov rax, 0x007B
    push rax
; 0815: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0816: print
    pop rax
    call print_rax
; 0817: PUSHI imm16
    mov rax, 0x007C
    push rax
; 081A: PUSHI imm16
    mov rax, 0x00EA
    push rax
; 081D: PUSHI imm16
    mov rax, 0x00CA
    push rax
; 0820: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0821: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0822: PUSHI imm16
    mov rax, 0x007C
    push rax
; 0825: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0826: print
    pop rax
    call print_rax
; 0827: PUSHI imm16
    mov rax, 0x007D
    push rax
; 082A: PUSHI imm16
    mov rax, 0x00A2
    push rax
; 082D: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 0830: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0831: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0832: PUSHI imm16
    mov rax, 0x007D
    push rax
; 0835: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0836: print
    pop rax
    call print_rax
; 0837: PUSHI imm16
    mov rax, 0x007E
    push rax
; 083A: PUSHI imm16
    mov rax, 0x0081
    push rax
; 083D: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 0840: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0841: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0842: PUSHI imm16
    mov rax, 0x007E
    push rax
; 0845: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0846: print
    pop rax
    call print_rax
; 0847: PUSHI imm16
    mov rax, 0x007F
    push rax
; 084A: PUSHI imm16
    mov rax, 0x0082
    push rax
; 084D: PUSHI imm16
    mov rax, 0x00AD
    push rax
; 0850: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0851: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0852: PUSHI imm16
    mov rax, 0x007F
    push rax
; 0855: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0856: print
    pop rax
    call print_rax
; 0857: PUSHI imm16
    mov rax, 0x0080
    push rax
; 085A: PUSHI imm16
    mov rax, 0x00EA
    push rax
; 085D: PUSHI imm16
    mov rax, 0x00CA
    push rax
; 0860: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0861: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0862: PUSHI imm16
    mov rax, 0x0080
    push rax
; 0865: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0866: print
    pop rax
    call print_rax
; 0867: PUSHI imm16
    mov rax, 0x0081
    push rax
; 086A: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 086D: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 0870: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0871: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0872: PUSHI imm16
    mov rax, 0x0081
    push rax
; 0875: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0876: print
    pop rax
    call print_rax
; 0877: PUSHI imm16
    mov rax, 0x0082
    push rax
; 087A: PUSHI imm16
    mov rax, 0x0082
    push rax
; 087D: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 0880: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0881: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0882: PUSHI imm16
    mov rax, 0x0082
    push rax
; 0885: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0886: print
    pop rax
    call print_rax
; 0887: PUSHI imm16
    mov rax, 0x0083
    push rax
; 088A: PUSHI imm16
    mov rax, 0x00F2
    push rax
; 088D: PUSHI imm16
    mov rax, 0x00AD
    push rax
; 0890: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0891: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0892: PUSHI imm16
    mov rax, 0x0083
    push rax
; 0895: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0896: print
    pop rax
    call print_rax
; 0897: PUSHI imm16
    mov rax, 0x0084
    push rax
; 089A: PUSHI imm16
    mov rax, 0x00E5
    push rax
; 089D: PUSHI imm16
    mov rax, 0x00CA
    push rax
; 08A0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 08A1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 08A2: PUSHI imm16
    mov rax, 0x0084
    push rax
; 08A5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 08A6: print
    pop rax
    call print_rax
; 08A7: PUSHI imm16
    mov rax, 0x0085
    push rax
; 08AA: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 08AD: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 08B0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 08B1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 08B2: PUSHI imm16
    mov rax, 0x0085
    push rax
; 08B5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 08B6: print
    pop rax
    call print_rax
; 08B7: PUSHI imm16
    mov rax, 0x0086
    push rax
; 08BA: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 08BD: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 08C0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 08C1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 08C2: PUSHI imm16
    mov rax, 0x0086
    push rax
; 08C5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 08C6: print
    pop rax
    call print_rax
; 08C7: PUSHI imm16
    mov rax, 0x0087
    push rax
; 08CA: PUSHI imm16
    mov rax, 0x00F1
    push rax
; 08CD: PUSHI imm16
    mov rax, 0x00AD
    push rax
; 08D0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 08D1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 08D2: PUSHI imm16
    mov rax, 0x0087
    push rax
; 08D5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 08D6: print
    pop rax
    call print_rax
; 08D7: PUSHI imm16
    mov rax, 0x0088
    push rax
; 08DA: PUSHI imm16
    mov rax, 0x0095
    push rax
; 08DD: PUSHI imm16
    mov rax, 0x00CA
    push rax
; 08E0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 08E1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 08E2: PUSHI imm16
    mov rax, 0x0088
    push rax
; 08E5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 08E6: print
    pop rax
    call print_rax
; 08E7: PUSHI imm16
    mov rax, 0x0089
    push rax
; 08EA: PUSHI imm16
    mov rax, 0x00D1
    push rax
; 08ED: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 08F0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 08F1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 08F2: PUSHI imm16
    mov rax, 0x0089
    push rax
; 08F5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 08F6: print
    pop rax
    call print_rax
; 08F7: PUSHI imm16
    mov rax, 0x008A
    push rax
; 08FA: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 08FD: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 0900: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0901: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0902: PUSHI imm16
    mov rax, 0x008A
    push rax
; 0905: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0906: print
    pop rax
    call print_rax
; 0907: PUSHI imm16
    mov rax, 0x008B
    push rax
; 090A: PUSHI imm16
    mov rax, 0x008D
    push rax
; 090D: PUSHI imm16
    mov rax, 0x00AD
    push rax
; 0910: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0911: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0912: PUSHI imm16
    mov rax, 0x008B
    push rax
; 0915: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0916: print
    pop rax
    call print_rax
; 0917: PUSHI imm16
    mov rax, 0x008C
    push rax
; 091A: PUSHI imm16
    mov rax, 0x0096
    push rax
; 091D: PUSHI imm16
    mov rax, 0x00CA
    push rax
; 0920: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0921: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0922: PUSHI imm16
    mov rax, 0x008C
    push rax
; 0925: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0926: print
    pop rax
    call print_rax
; 0927: PUSHI imm16
    mov rax, 0x008D
    push rax
; 092A: PUSHI imm16
    mov rax, 0x00A1
    push rax
; 092D: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 0930: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0931: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0932: PUSHI imm16
    mov rax, 0x008D
    push rax
; 0935: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0936: print
    pop rax
    call print_rax
; 0937: PUSHI imm16
    mov rax, 0x008E
    push rax
; 093A: PUSHI imm16
    mov rax, 0x00F1
    push rax
; 093D: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 0940: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0941: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0942: PUSHI imm16
    mov rax, 0x008E
    push rax
; 0945: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0946: print
    pop rax
    call print_rax
; 0947: PUSHI imm16
    mov rax, 0x008F
    push rax
; 094A: PUSHI imm16
    mov rax, 0x008D
    push rax
; 094D: PUSHI imm16
    mov rax, 0x00AD
    push rax
; 0950: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0951: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0952: PUSHI imm16
    mov rax, 0x008F
    push rax
; 0955: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0956: print
    pop rax
    call print_rax
; 0957: PUSHI imm16
    mov rax, 0x0090
    push rax
; 095A: PUSHI imm16
    mov rax, 0x00EA
    push rax
; 095D: PUSHI imm16
    mov rax, 0x00CA
    push rax
; 0960: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0961: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0962: PUSHI imm16
    mov rax, 0x0090
    push rax
; 0965: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0966: print
    pop rax
    call print_rax
; 0967: PUSHI imm16
    mov rax, 0x0091
    push rax
; 096A: PUSHI imm16
    mov rax, 0x00A2
    push rax
; 096D: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 0970: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0971: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0972: PUSHI imm16
    mov rax, 0x0091
    push rax
; 0975: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0976: print
    pop rax
    call print_rax
; 0977: PUSHI imm16
    mov rax, 0x0092
    push rax
; 097A: PUSHI imm16
    mov rax, 0x0081
    push rax
; 097D: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 0980: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0981: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0982: PUSHI imm16
    mov rax, 0x0092
    push rax
; 0985: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0986: print
    pop rax
    call print_rax
; 0987: PUSHI imm16
    mov rax, 0x0093
    push rax
; 098A: PUSHI imm16
    mov rax, 0x0082
    push rax
; 098D: PUSHI imm16
    mov rax, 0x00AD
    push rax
; 0990: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0991: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0992: PUSHI imm16
    mov rax, 0x0093
    push rax
; 0995: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0996: print
    pop rax
    call print_rax
; 0997: PUSHI imm16
    mov rax, 0x0094
    push rax
; 099A: PUSHI imm16
    mov rax, 0x00C7
    push rax
; 099D: PUSHI imm16
    mov rax, 0x00CA
    push rax
; 09A0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 09A1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 09A2: PUSHI imm16
    mov rax, 0x0094
    push rax
; 09A5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 09A6: print
    pop rax
    call print_rax
; 09A7: PUSHI imm16
    mov rax, 0x0095
    push rax
; 09AA: PUSHI imm16
    mov rax, 0x00F4
    push rax
; 09AD: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 09B0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 09B1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 09B2: PUSHI imm16
    mov rax, 0x0095
    push rax
; 09B5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 09B6: print
    pop rax
    call print_rax
; 09B7: PUSHI imm16
    mov rax, 0x0096
    push rax
; 09BA: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 09BD: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 09C0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 09C1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 09C2: PUSHI imm16
    mov rax, 0x0096
    push rax
; 09C5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 09C6: print
    pop rax
    call print_rax
; 09C7: PUSHI imm16
    mov rax, 0x0097
    push rax
; 09CA: PUSHI imm16
    mov rax, 0x008D
    push rax
; 09CD: PUSHI imm16
    mov rax, 0x00AD
    push rax
; 09D0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 09D1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 09D2: PUSHI imm16
    mov rax, 0x0097
    push rax
; 09D5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 09D6: print
    pop rax
    call print_rax
; 09D7: PUSHI imm16
    mov rax, 0x0098
    push rax
; 09DA: PUSHI imm16
    mov rax, 0x0095
    push rax
; 09DD: PUSHI imm16
    mov rax, 0x00CA
    push rax
; 09E0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 09E1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 09E2: PUSHI imm16
    mov rax, 0x0098
    push rax
; 09E5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 09E6: print
    pop rax
    call print_rax
; 09E7: PUSHI imm16
    mov rax, 0x0099
    push rax
; 09EA: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 09ED: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 09F0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 09F1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 09F2: PUSHI imm16
    mov rax, 0x0099
    push rax
; 09F5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 09F6: print
    pop rax
    call print_rax
; 09F7: PUSHI imm16
    mov rax, 0x009A
    push rax
; 09FA: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 09FD: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 0A00: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0A01: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0A02: PUSHI imm16
    mov rax, 0x009A
    push rax
; 0A05: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0A06: print
    pop rax
    call print_rax
; 0A07: PUSHI imm16
    mov rax, 0x009B
    push rax
; 0A0A: PUSHI imm16
    mov rax, 0x008D
    push rax
; 0A0D: PUSHI imm16
    mov rax, 0x00AD
    push rax
; 0A10: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0A11: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0A12: PUSHI imm16
    mov rax, 0x009B
    push rax
; 0A15: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0A16: print
    pop rax
    call print_rax
; 0A17: PUSHI imm16
    mov rax, 0x009C
    push rax
; 0A1A: PUSHI imm16
    mov rax, 0x00EA
    push rax
; 0A1D: PUSHI imm16
    mov rax, 0x00CA
    push rax
; 0A20: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0A21: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0A22: PUSHI imm16
    mov rax, 0x009C
    push rax
; 0A25: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0A26: print
    pop rax
    call print_rax
; 0A27: PUSHI imm16
    mov rax, 0x009D
    push rax
; 0A2A: PUSHI imm16
    mov rax, 0x00A1
    push rax
; 0A2D: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 0A30: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0A31: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0A32: PUSHI imm16
    mov rax, 0x009D
    push rax
; 0A35: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0A36: print
    pop rax
    call print_rax
; 0A37: PUSHI imm16
    mov rax, 0x009E
    push rax
; 0A3A: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 0A3D: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 0A40: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0A41: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0A42: PUSHI imm16
    mov rax, 0x009E
    push rax
; 0A45: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0A46: print
    pop rax
    call print_rax
; 0A47: PUSHI imm16
    mov rax, 0x009F
    push rax
; 0A4A: PUSHI imm16
    mov rax, 0x008D
    push rax
; 0A4D: PUSHI imm16
    mov rax, 0x00AD
    push rax
; 0A50: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0A51: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0A52: PUSHI imm16
    mov rax, 0x009F
    push rax
; 0A55: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0A56: print
    pop rax
    call print_rax
; 0A57: PUSHI imm16
    mov rax, 0x00A0
    push rax
; 0A5A: PUSHI imm16
    mov rax, 0x00EA
    push rax
; 0A5D: PUSHI imm16
    mov rax, 0x00CA
    push rax
; 0A60: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0A61: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0A62: PUSHI imm16
    mov rax, 0x00A0
    push rax
; 0A65: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0A66: print
    pop rax
    call print_rax
; 0A67: PUSHI imm16
    mov rax, 0x00A1
    push rax
; 0A6A: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 0A6D: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 0A70: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0A71: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0A72: PUSHI imm16
    mov rax, 0x00A1
    push rax
; 0A75: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0A76: print
    pop rax
    call print_rax
; 0A77: PUSHI imm16
    mov rax, 0x00A2
    push rax
; 0A7A: PUSHI imm16
    mov rax, 0x0081
    push rax
; 0A7D: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 0A80: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0A81: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0A82: PUSHI imm16
    mov rax, 0x00A2
    push rax
; 0A85: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0A86: print
    pop rax
    call print_rax
; 0A87: PUSHI imm16
    mov rax, 0x00A3
    push rax
; 0A8A: PUSHI imm16
    mov rax, 0x008D
    push rax
; 0A8D: PUSHI imm16
    mov rax, 0x00AD
    push rax
; 0A90: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0A91: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0A92: PUSHI imm16
    mov rax, 0x00A3
    push rax
; 0A95: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0A96: print
    pop rax
    call print_rax
; 0A97: PUSHI imm16
    mov rax, 0x00A4
    push rax
; 0A9A: PUSHI imm16
    mov rax, 0x00EA
    push rax
; 0A9D: PUSHI imm16
    mov rax, 0x00CA
    push rax
; 0AA0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0AA1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0AA2: PUSHI imm16
    mov rax, 0x00A4
    push rax
; 0AA5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0AA6: print
    pop rax
    call print_rax
; 0AA7: PUSHI imm16
    mov rax, 0x00A5
    push rax
; 0AAA: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 0AAD: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 0AB0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0AB1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0AB2: PUSHI imm16
    mov rax, 0x00A5
    push rax
; 0AB5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0AB6: print
    pop rax
    call print_rax
; 0AB7: PUSHI imm16
    mov rax, 0x00A6
    push rax
; 0ABA: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 0ABD: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 0AC0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0AC1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0AC2: PUSHI imm16
    mov rax, 0x00A6
    push rax
; 0AC5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0AC6: print
    pop rax
    call print_rax
; 0AC7: PUSHI imm16
    mov rax, 0x00A7
    push rax
; 0ACA: PUSHI imm16
    mov rax, 0x00F2
    push rax
; 0ACD: PUSHI imm16
    mov rax, 0x00AD
    push rax
; 0AD0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0AD1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0AD2: PUSHI imm16
    mov rax, 0x00A7
    push rax
; 0AD5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0AD6: print
    pop rax
    call print_rax
; 0AD7: PUSHI imm16
    mov rax, 0x00A8
    push rax
; 0ADA: PUSHI imm16
    mov rax, 0x00EA
    push rax
; 0ADD: PUSHI imm16
    mov rax, 0x00CA
    push rax
; 0AE0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0AE1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0AE2: PUSHI imm16
    mov rax, 0x00A8
    push rax
; 0AE5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0AE6: print
    pop rax
    call print_rax
; 0AE7: PUSHI imm16
    mov rax, 0x00A9
    push rax
; 0AEA: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 0AED: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 0AF0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0AF1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0AF2: PUSHI imm16
    mov rax, 0x00A9
    push rax
; 0AF5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0AF6: print
    pop rax
    call print_rax
; 0AF7: PUSHI imm16
    mov rax, 0x00AA
    push rax
; 0AFA: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 0AFD: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 0B00: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0B01: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0B02: PUSHI imm16
    mov rax, 0x00AA
    push rax
; 0B05: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0B06: print
    pop rax
    call print_rax
; 0B07: PUSHI imm16
    mov rax, 0x00AB
    push rax
; 0B0A: PUSHI imm16
    mov rax, 0x008D
    push rax
; 0B0D: PUSHI imm16
    mov rax, 0x00AD
    push rax
; 0B10: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0B11: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0B12: PUSHI imm16
    mov rax, 0x00AB
    push rax
; 0B15: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0B16: print
    pop rax
    call print_rax
; 0B17: PUSHI imm16
    mov rax, 0x00AC
    push rax
; 0B1A: PUSHI imm16
    mov rax, 0x0095
    push rax
; 0B1D: PUSHI imm16
    mov rax, 0x00CA
    push rax
; 0B20: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0B21: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0B22: PUSHI imm16
    mov rax, 0x00AC
    push rax
; 0B25: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0B26: print
    pop rax
    call print_rax
; 0B27: PUSHI imm16
    mov rax, 0x00AD
    push rax
; 0B2A: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 0B2D: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 0B30: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0B31: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0B32: PUSHI imm16
    mov rax, 0x00AD
    push rax
; 0B35: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0B36: print
    pop rax
    call print_rax
; 0B37: PUSHI imm16
    mov rax, 0x00AE
    push rax
; 0B3A: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 0B3D: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 0B40: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0B41: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0B42: PUSHI imm16
    mov rax, 0x00AE
    push rax
; 0B45: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0B46: print
    pop rax
    call print_rax
; 0B47: PUSHI imm16
    mov rax, 0x00AF
    push rax
; 0B4A: PUSHI imm16
    mov rax, 0x008D
    push rax
; 0B4D: PUSHI imm16
    mov rax, 0x00AD
    push rax
; 0B50: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0B51: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0B52: PUSHI imm16
    mov rax, 0x00AF
    push rax
; 0B55: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0B56: print
    pop rax
    call print_rax
; 0B57: PUSHI imm16
    mov rax, 0x00B0
    push rax
; 0B5A: PUSHI imm16
    mov rax, 0x00EA
    push rax
; 0B5D: PUSHI imm16
    mov rax, 0x00CA
    push rax
; 0B60: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0B61: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0B62: PUSHI imm16
    mov rax, 0x00B0
    push rax
; 0B65: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0B66: print
    pop rax
    call print_rax
; 0B67: PUSHI imm16
    mov rax, 0x00B1
    push rax
; 0B6A: PUSHI imm16
    mov rax, 0x00A1
    push rax
; 0B6D: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 0B70: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0B71: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0B72: PUSHI imm16
    mov rax, 0x00B1
    push rax
; 0B75: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0B76: print
    pop rax
    call print_rax
; 0B77: PUSHI imm16
    mov rax, 0x00B2
    push rax
; 0B7A: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 0B7D: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 0B80: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0B81: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0B82: PUSHI imm16
    mov rax, 0x00B2
    push rax
; 0B85: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0B86: print
    pop rax
    call print_rax
; 0B87: PUSHI imm16
    mov rax, 0x00B3
    push rax
; 0B8A: PUSHI imm16
    mov rax, 0x008D
    push rax
; 0B8D: PUSHI imm16
    mov rax, 0x00AD
    push rax
; 0B90: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0B91: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0B92: PUSHI imm16
    mov rax, 0x00B3
    push rax
; 0B95: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0B96: print
    pop rax
    call print_rax
; 0B97: PUSHI imm16
    mov rax, 0x00B4
    push rax
; 0B9A: PUSHI imm16
    mov rax, 0x00EA
    push rax
; 0B9D: PUSHI imm16
    mov rax, 0x00CA
    push rax
; 0BA0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0BA1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0BA2: PUSHI imm16
    mov rax, 0x00B4
    push rax
; 0BA5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0BA6: print
    pop rax
    call print_rax
; 0BA7: PUSHI imm16
    mov rax, 0x00B5
    push rax
; 0BAA: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 0BAD: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 0BB0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0BB1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0BB2: PUSHI imm16
    mov rax, 0x00B5
    push rax
; 0BB5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0BB6: print
    pop rax
    call print_rax
; 0BB7: PUSHI imm16
    mov rax, 0x00B6
    push rax
; 0BBA: PUSHI imm16
    mov rax, 0x0081
    push rax
; 0BBD: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 0BC0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0BC1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0BC2: PUSHI imm16
    mov rax, 0x00B6
    push rax
; 0BC5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0BC6: print
    pop rax
    call print_rax
; 0BC7: PUSHI imm16
    mov rax, 0x00B7
    push rax
; 0BCA: PUSHI imm16
    mov rax, 0x008D
    push rax
; 0BCD: PUSHI imm16
    mov rax, 0x00AD
    push rax
; 0BD0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0BD1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0BD2: PUSHI imm16
    mov rax, 0x00B7
    push rax
; 0BD5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0BD6: print
    pop rax
    call print_rax
; 0BD7: PUSHI imm16
    mov rax, 0x00B8
    push rax
; 0BDA: PUSHI imm16
    mov rax, 0x00EA
    push rax
; 0BDD: PUSHI imm16
    mov rax, 0x00CA
    push rax
; 0BE0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0BE1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0BE2: PUSHI imm16
    mov rax, 0x00B8
    push rax
; 0BE5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0BE6: print
    pop rax
    call print_rax
; 0BE7: PUSHI imm16
    mov rax, 0x00B9
    push rax
; 0BEA: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 0BED: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 0BF0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0BF1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0BF2: PUSHI imm16
    mov rax, 0x00B9
    push rax
; 0BF5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0BF6: print
    pop rax
    call print_rax
; 0BF7: PUSHI imm16
    mov rax, 0x00BA
    push rax
; 0BFA: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 0BFD: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 0C00: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0C01: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0C02: PUSHI imm16
    mov rax, 0x00BA
    push rax
; 0C05: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0C06: print
    pop rax
    call print_rax
; 0C07: PUSHI imm16
    mov rax, 0x00BB
    push rax
; 0C0A: PUSHI imm16
    mov rax, 0x00F2
    push rax
; 0C0D: PUSHI imm16
    mov rax, 0x00AD
    push rax
; 0C10: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0C11: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0C12: PUSHI imm16
    mov rax, 0x00BB
    push rax
; 0C15: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0C16: print
    pop rax
    call print_rax
; 0C17: PUSHI imm16
    mov rax, 0x00BC
    push rax
; 0C1A: PUSHI imm16
    mov rax, 0x00EA
    push rax
; 0C1D: PUSHI imm16
    mov rax, 0x00CA
    push rax
; 0C20: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0C21: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0C22: PUSHI imm16
    mov rax, 0x00BC
    push rax
; 0C25: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0C26: print
    pop rax
    call print_rax
; 0C27: PUSHI imm16
    mov rax, 0x00BD
    push rax
; 0C2A: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 0C2D: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 0C30: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0C31: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0C32: PUSHI imm16
    mov rax, 0x00BD
    push rax
; 0C35: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0C36: print
    pop rax
    call print_rax
; 0C37: PUSHI imm16
    mov rax, 0x00BE
    push rax
; 0C3A: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 0C3D: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 0C40: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0C41: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0C42: PUSHI imm16
    mov rax, 0x00BE
    push rax
; 0C45: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0C46: print
    pop rax
    call print_rax
; 0C47: PUSHI imm16
    mov rax, 0x00BF
    push rax
; 0C4A: PUSHI imm16
    mov rax, 0x008D
    push rax
; 0C4D: PUSHI imm16
    mov rax, 0x00AD
    push rax
; 0C50: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0C51: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0C52: PUSHI imm16
    mov rax, 0x00BF
    push rax
; 0C55: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0C56: print
    pop rax
    call print_rax
; 0C57: PUSHI imm16
    mov rax, 0x00C0
    push rax
; 0C5A: PUSHI imm16
    mov rax, 0x0095
    push rax
; 0C5D: PUSHI imm16
    mov rax, 0x00CA
    push rax
; 0C60: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0C61: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0C62: PUSHI imm16
    mov rax, 0x00C0
    push rax
; 0C65: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0C66: print
    pop rax
    call print_rax
; 0C67: PUSHI imm16
    mov rax, 0x00C1
    push rax
; 0C6A: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 0C6D: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 0C70: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0C71: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0C72: PUSHI imm16
    mov rax, 0x00C1
    push rax
; 0C75: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0C76: print
    pop rax
    call print_rax
; 0C77: PUSHI imm16
    mov rax, 0x00C2
    push rax
; 0C7A: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 0C7D: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 0C80: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0C81: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0C82: PUSHI imm16
    mov rax, 0x00C2
    push rax
; 0C85: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0C86: print
    pop rax
    call print_rax
; 0C87: PUSHI imm16
    mov rax, 0x00C3
    push rax
; 0C8A: PUSHI imm16
    mov rax, 0x008D
    push rax
; 0C8D: PUSHI imm16
    mov rax, 0x00AD
    push rax
; 0C90: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0C91: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0C92: PUSHI imm16
    mov rax, 0x00C3
    push rax
; 0C95: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0C96: print
    pop rax
    call print_rax
; 0C97: PUSHI imm16
    mov rax, 0x00C4
    push rax
; 0C9A: PUSHI imm16
    mov rax, 0x00EA
    push rax
; 0C9D: PUSHI imm16
    mov rax, 0x00CA
    push rax
; 0CA0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0CA1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0CA2: PUSHI imm16
    mov rax, 0x00C4
    push rax
; 0CA5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0CA6: print
    pop rax
    call print_rax
; 0CA7: PUSHI imm16
    mov rax, 0x00C5
    push rax
; 0CAA: PUSHI imm16
    mov rax, 0x00A1
    push rax
; 0CAD: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 0CB0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0CB1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0CB2: PUSHI imm16
    mov rax, 0x00C5
    push rax
; 0CB5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0CB6: print
    pop rax
    call print_rax
; 0CB7: PUSHI imm16
    mov rax, 0x00C6
    push rax
; 0CBA: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 0CBD: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 0CC0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0CC1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0CC2: PUSHI imm16
    mov rax, 0x00C6
    push rax
; 0CC5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0CC6: print
    pop rax
    call print_rax
; 0CC7: PUSHI imm16
    mov rax, 0x00C7
    push rax
; 0CCA: PUSHI imm16
    mov rax, 0x008D
    push rax
; 0CCD: PUSHI imm16
    mov rax, 0x00AD
    push rax
; 0CD0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0CD1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0CD2: PUSHI imm16
    mov rax, 0x00C7
    push rax
; 0CD5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0CD6: print
    pop rax
    call print_rax
; 0CD7: PUSHI imm16
    mov rax, 0x00C8
    push rax
; 0CDA: PUSHI imm16
    mov rax, 0x00EA
    push rax
; 0CDD: PUSHI imm16
    mov rax, 0x00CA
    push rax
; 0CE0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0CE1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0CE2: PUSHI imm16
    mov rax, 0x00C8
    push rax
; 0CE5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0CE6: print
    pop rax
    call print_rax
; 0CE7: PUSHI imm16
    mov rax, 0x00C9
    push rax
; 0CEA: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 0CED: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 0CF0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0CF1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0CF2: PUSHI imm16
    mov rax, 0x00C9
    push rax
; 0CF5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0CF6: print
    pop rax
    call print_rax
; 0CF7: PUSHI imm16
    mov rax, 0x00CA
    push rax
; 0CFA: PUSHI imm16
    mov rax, 0x0081
    push rax
; 0CFD: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 0D00: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0D01: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0D02: PUSHI imm16
    mov rax, 0x00CA
    push rax
; 0D05: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0D06: print
    pop rax
    call print_rax
; 0D07: PUSHI imm16
    mov rax, 0x00CB
    push rax
; 0D0A: PUSHI imm16
    mov rax, 0x008D
    push rax
; 0D0D: PUSHI imm16
    mov rax, 0x00AD
    push rax
; 0D10: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0D11: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0D12: PUSHI imm16
    mov rax, 0x00CB
    push rax
; 0D15: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0D16: print
    pop rax
    call print_rax
; 0D17: PUSHI imm16
    mov rax, 0x00CC
    push rax
; 0D1A: PUSHI imm16
    mov rax, 0x00EA
    push rax
; 0D1D: PUSHI imm16
    mov rax, 0x00CA
    push rax
; 0D20: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0D21: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0D22: PUSHI imm16
    mov rax, 0x00CC
    push rax
; 0D25: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0D26: print
    pop rax
    call print_rax
; 0D27: PUSHI imm16
    mov rax, 0x00CD
    push rax
; 0D2A: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 0D2D: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 0D30: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0D31: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0D32: PUSHI imm16
    mov rax, 0x00CD
    push rax
; 0D35: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0D36: print
    pop rax
    call print_rax
; 0D37: PUSHI imm16
    mov rax, 0x00CE
    push rax
; 0D3A: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 0D3D: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 0D40: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0D41: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0D42: PUSHI imm16
    mov rax, 0x00CE
    push rax
; 0D45: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0D46: print
    pop rax
    call print_rax
; 0D47: PUSHI imm16
    mov rax, 0x00CF
    push rax
; 0D4A: PUSHI imm16
    mov rax, 0x00F2
    push rax
; 0D4D: PUSHI imm16
    mov rax, 0x00AD
    push rax
; 0D50: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0D51: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0D52: PUSHI imm16
    mov rax, 0x00CF
    push rax
; 0D55: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0D56: print
    pop rax
    call print_rax
; 0D57: PUSHI imm16
    mov rax, 0x00D0
    push rax
; 0D5A: PUSHI imm16
    mov rax, 0x00C7
    push rax
; 0D5D: PUSHI imm16
    mov rax, 0x00CA
    push rax
; 0D60: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0D61: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0D62: PUSHI imm16
    mov rax, 0x00D0
    push rax
; 0D65: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0D66: print
    pop rax
    call print_rax
; 0D67: PUSHI imm16
    mov rax, 0x00D1
    push rax
; 0D6A: PUSHI imm16
    mov rax, 0x00F4
    push rax
; 0D6D: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 0D70: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0D71: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0D72: PUSHI imm16
    mov rax, 0x00D1
    push rax
; 0D75: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0D76: print
    pop rax
    call print_rax
; 0D77: PUSHI imm16
    mov rax, 0x00D2
    push rax
; 0D7A: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 0D7D: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 0D80: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0D81: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0D82: PUSHI imm16
    mov rax, 0x00D2
    push rax
; 0D85: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0D86: print
    pop rax
    call print_rax
; 0D87: PUSHI imm16
    mov rax, 0x00D3
    push rax
; 0D8A: PUSHI imm16
    mov rax, 0x0082
    push rax
; 0D8D: PUSHI imm16
    mov rax, 0x00AD
    push rax
; 0D90: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0D91: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0D92: PUSHI imm16
    mov rax, 0x00D3
    push rax
; 0D95: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0D96: print
    pop rax
    call print_rax
; 0D97: PUSHI imm16
    mov rax, 0x00D4
    push rax
; 0D9A: PUSHI imm16
    mov rax, 0x00EA
    push rax
; 0D9D: PUSHI imm16
    mov rax, 0x00CA
    push rax
; 0DA0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0DA1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0DA2: PUSHI imm16
    mov rax, 0x00D4
    push rax
; 0DA5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0DA6: print
    pop rax
    call print_rax
; 0DA7: PUSHI imm16
    mov rax, 0x00D5
    push rax
; 0DAA: PUSHI imm16
    mov rax, 0x00A2
    push rax
; 0DAD: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 0DB0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0DB1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0DB2: PUSHI imm16
    mov rax, 0x00D5
    push rax
; 0DB5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0DB6: print
    pop rax
    call print_rax
; 0DB7: PUSHI imm16
    mov rax, 0x00D6
    push rax
; 0DBA: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 0DBD: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 0DC0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0DC1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0DC2: PUSHI imm16
    mov rax, 0x00D6
    push rax
; 0DC5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0DC6: print
    pop rax
    call print_rax
; 0DC7: PUSHI imm16
    mov rax, 0x00D7
    push rax
; 0DCA: PUSHI imm16
    mov rax, 0x008D
    push rax
; 0DCD: PUSHI imm16
    mov rax, 0x00AD
    push rax
; 0DD0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0DD1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0DD2: PUSHI imm16
    mov rax, 0x00D7
    push rax
; 0DD5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0DD6: print
    pop rax
    call print_rax
; 0DD7: PUSHI imm16
    mov rax, 0x00D8
    push rax
; 0DDA: PUSHI imm16
    mov rax, 0x00E5
    push rax
; 0DDD: PUSHI imm16
    mov rax, 0x00CA
    push rax
; 0DE0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0DE1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0DE2: PUSHI imm16
    mov rax, 0x00D8
    push rax
; 0DE5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0DE6: print
    pop rax
    call print_rax
; 0DE7: PUSHI imm16
    mov rax, 0x00D9
    push rax
; 0DEA: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 0DED: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 0DF0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0DF1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0DF2: PUSHI imm16
    mov rax, 0x00D9
    push rax
; 0DF5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0DF6: print
    pop rax
    call print_rax
; 0DF7: PUSHI imm16
    mov rax, 0x00DA
    push rax
; 0DFA: PUSHI imm16
    mov rax, 0x0082
    push rax
; 0DFD: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 0E00: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0E01: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0E02: PUSHI imm16
    mov rax, 0x00DA
    push rax
; 0E05: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0E06: print
    pop rax
    call print_rax
; 0E07: PUSHI imm16
    mov rax, 0x00DB
    push rax
; 0E0A: PUSHI imm16
    mov rax, 0x008D
    push rax
; 0E0D: PUSHI imm16
    mov rax, 0x00AD
    push rax
; 0E10: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0E11: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0E12: PUSHI imm16
    mov rax, 0x00DB
    push rax
; 0E15: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0E16: print
    pop rax
    call print_rax
; 0E17: PUSHI imm16
    mov rax, 0x00DC
    push rax
; 0E1A: PUSHI imm16
    mov rax, 0x00EA
    push rax
; 0E1D: PUSHI imm16
    mov rax, 0x00CA
    push rax
; 0E20: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0E21: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0E22: PUSHI imm16
    mov rax, 0x00DC
    push rax
; 0E25: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0E26: print
    pop rax
    call print_rax
; 0E27: PUSHI imm16
    mov rax, 0x00DD
    push rax
; 0E2A: PUSHI imm16
    mov rax, 0x00D1
    push rax
; 0E2D: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 0E30: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0E31: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0E32: PUSHI imm16
    mov rax, 0x00DD
    push rax
; 0E35: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0E36: print
    pop rax
    call print_rax
; 0E37: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 0E3A: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 0E3D: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 0E40: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0E41: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0E42: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 0E45: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0E46: print
    pop rax
    call print_rax
; 0E47: PUSHI imm16
    mov rax, 0x00DF
    push rax
; 0E4A: PUSHI imm16
    mov rax, 0x00F1
    push rax
; 0E4D: PUSHI imm16
    mov rax, 0x00AD
    push rax
; 0E50: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0E51: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0E52: PUSHI imm16
    mov rax, 0x00DF
    push rax
; 0E55: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0E56: print
    pop rax
    call print_rax
; 0E57: PUSHI imm16
    mov rax, 0x00E0
    push rax
; 0E5A: PUSHI imm16
    mov rax, 0x00EA
    push rax
; 0E5D: PUSHI imm16
    mov rax, 0x00CA
    push rax
; 0E60: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0E61: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0E62: PUSHI imm16
    mov rax, 0x00E0
    push rax
; 0E65: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0E66: print
    pop rax
    call print_rax
; 0E67: PUSHI imm16
    mov rax, 0x00E1
    push rax
; 0E6A: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 0E6D: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 0E70: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0E71: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0E72: PUSHI imm16
    mov rax, 0x00E1
    push rax
; 0E75: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0E76: print
    pop rax
    call print_rax
; 0E77: PUSHI imm16
    mov rax, 0x00E2
    push rax
; 0E7A: PUSHI imm16
    mov rax, 0x00F1
    push rax
; 0E7D: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 0E80: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0E81: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0E82: PUSHI imm16
    mov rax, 0x00E2
    push rax
; 0E85: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0E86: print
    pop rax
    call print_rax
; 0E87: PUSHI imm16
    mov rax, 0x00E3
    push rax
; 0E8A: PUSHI imm16
    mov rax, 0x008D
    push rax
; 0E8D: PUSHI imm16
    mov rax, 0x00AD
    push rax
; 0E90: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0E91: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0E92: PUSHI imm16
    mov rax, 0x00E3
    push rax
; 0E95: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0E96: print
    pop rax
    call print_rax
; 0E97: PUSHI imm16
    mov rax, 0x00E4
    push rax
; 0E9A: PUSHI imm16
    mov rax, 0x0096
    push rax
; 0E9D: PUSHI imm16
    mov rax, 0x00CA
    push rax
; 0EA0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0EA1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0EA2: PUSHI imm16
    mov rax, 0x00E4
    push rax
; 0EA5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0EA6: print
    pop rax
    call print_rax
; 0EA7: PUSHI imm16
    mov rax, 0x00E5
    push rax
; 0EAA: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 0EAD: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 0EB0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0EB1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0EB2: PUSHI imm16
    mov rax, 0x00E5
    push rax
; 0EB5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0EB6: print
    pop rax
    call print_rax
; 0EB7: PUSHI imm16
    mov rax, 0x00E6
    push rax
; 0EBA: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 0EBD: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 0EC0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0EC1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0EC2: PUSHI imm16
    mov rax, 0x00E6
    push rax
; 0EC5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0EC6: print
    pop rax
    call print_rax
; 0EC7: PUSHI imm16
    mov rax, 0x00E7
    push rax
; 0ECA: PUSHI imm16
    mov rax, 0x0082
    push rax
; 0ECD: PUSHI imm16
    mov rax, 0x00AD
    push rax
; 0ED0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0ED1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0ED2: PUSHI imm16
    mov rax, 0x00E7
    push rax
; 0ED5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0ED6: print
    pop rax
    call print_rax
; 0ED7: PUSHI imm16
    mov rax, 0x00E8
    push rax
; 0EDA: PUSHI imm16
    mov rax, 0x00EA
    push rax
; 0EDD: PUSHI imm16
    mov rax, 0x00CA
    push rax
; 0EE0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0EE1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0EE2: PUSHI imm16
    mov rax, 0x00E8
    push rax
; 0EE5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0EE6: print
    pop rax
    call print_rax
; 0EE7: PUSHI imm16
    mov rax, 0x00E9
    push rax
; 0EEA: PUSHI imm16
    mov rax, 0x00A2
    push rax
; 0EED: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 0EF0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0EF1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0EF2: PUSHI imm16
    mov rax, 0x00E9
    push rax
; 0EF5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0EF6: print
    pop rax
    call print_rax
; 0EF7: PUSHI imm16
    mov rax, 0x00EA
    push rax
; 0EFA: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 0EFD: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 0F00: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0F01: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0F02: PUSHI imm16
    mov rax, 0x00EA
    push rax
; 0F05: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0F06: print
    pop rax
    call print_rax
; 0F07: PUSHI imm16
    mov rax, 0x00EB
    push rax
; 0F0A: PUSHI imm16
    mov rax, 0x008D
    push rax
; 0F0D: PUSHI imm16
    mov rax, 0x00AD
    push rax
; 0F10: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0F11: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0F12: PUSHI imm16
    mov rax, 0x00EB
    push rax
; 0F15: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0F16: print
    pop rax
    call print_rax
; 0F17: PUSHI imm16
    mov rax, 0x00EC
    push rax
; 0F1A: PUSHI imm16
    mov rax, 0x00E5
    push rax
; 0F1D: PUSHI imm16
    mov rax, 0x00CA
    push rax
; 0F20: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0F21: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0F22: PUSHI imm16
    mov rax, 0x00EC
    push rax
; 0F25: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0F26: print
    pop rax
    call print_rax
; 0F27: PUSHI imm16
    mov rax, 0x00ED
    push rax
; 0F2A: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 0F2D: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 0F30: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0F31: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0F32: PUSHI imm16
    mov rax, 0x00ED
    push rax
; 0F35: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0F36: print
    pop rax
    call print_rax
; 0F37: PUSHI imm16
    mov rax, 0x00EE
    push rax
; 0F3A: PUSHI imm16
    mov rax, 0x0082
    push rax
; 0F3D: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 0F40: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0F41: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0F42: PUSHI imm16
    mov rax, 0x00EE
    push rax
; 0F45: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0F46: print
    pop rax
    call print_rax
; 0F47: PUSHI imm16
    mov rax, 0x00EF
    push rax
; 0F4A: PUSHI imm16
    mov rax, 0x008D
    push rax
; 0F4D: PUSHI imm16
    mov rax, 0x00AD
    push rax
; 0F50: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0F51: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0F52: PUSHI imm16
    mov rax, 0x00EF
    push rax
; 0F55: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0F56: print
    pop rax
    call print_rax
; 0F57: PUSHI imm16
    mov rax, 0x00F0
    push rax
; 0F5A: PUSHI imm16
    mov rax, 0x00EA
    push rax
; 0F5D: PUSHI imm16
    mov rax, 0x00CA
    push rax
; 0F60: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0F61: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0F62: PUSHI imm16
    mov rax, 0x00F0
    push rax
; 0F65: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0F66: print
    pop rax
    call print_rax
; 0F67: PUSHI imm16
    mov rax, 0x00F1
    push rax
; 0F6A: PUSHI imm16
    mov rax, 0x00D1
    push rax
; 0F6D: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 0F70: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0F71: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0F72: PUSHI imm16
    mov rax, 0x00F1
    push rax
; 0F75: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0F76: print
    pop rax
    call print_rax
; 0F77: PUSHI imm16
    mov rax, 0x00F2
    push rax
; 0F7A: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 0F7D: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 0F80: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0F81: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0F82: PUSHI imm16
    mov rax, 0x00F2
    push rax
; 0F85: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0F86: print
    pop rax
    call print_rax
; 0F87: PUSHI imm16
    mov rax, 0x00F3
    push rax
; 0F8A: PUSHI imm16
    mov rax, 0x00F1
    push rax
; 0F8D: PUSHI imm16
    mov rax, 0x00AD
    push rax
; 0F90: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0F91: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0F92: PUSHI imm16
    mov rax, 0x00F3
    push rax
; 0F95: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0F96: print
    pop rax
    call print_rax
; 0F97: PUSHI imm16
    mov rax, 0x00F4
    push rax
; 0F9A: PUSHI imm16
    mov rax, 0x00EA
    push rax
; 0F9D: PUSHI imm16
    mov rax, 0x00CA
    push rax
; 0FA0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0FA1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0FA2: PUSHI imm16
    mov rax, 0x00F4
    push rax
; 0FA5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0FA6: print
    pop rax
    call print_rax
; 0FA7: PUSHI imm16
    mov rax, 0x00F5
    push rax
; 0FAA: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 0FAD: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 0FB0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0FB1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0FB2: PUSHI imm16
    mov rax, 0x00F5
    push rax
; 0FB5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0FB6: print
    pop rax
    call print_rax
; 0FB7: PUSHI imm16
    mov rax, 0x00F6
    push rax
; 0FBA: PUSHI imm16
    mov rax, 0x00F1
    push rax
; 0FBD: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 0FC0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0FC1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0FC2: PUSHI imm16
    mov rax, 0x00F6
    push rax
; 0FC5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0FC6: print
    pop rax
    call print_rax
; 0FC7: PUSHI imm16
    mov rax, 0x00F7
    push rax
; 0FCA: PUSHI imm16
    mov rax, 0x008D
    push rax
; 0FCD: PUSHI imm16
    mov rax, 0x00AD
    push rax
; 0FD0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0FD1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0FD2: PUSHI imm16
    mov rax, 0x00F7
    push rax
; 0FD5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0FD6: print
    pop rax
    call print_rax
; 0FD7: PUSHI imm16
    mov rax, 0x00F8
    push rax
; 0FDA: PUSHI imm16
    mov rax, 0x0096
    push rax
; 0FDD: PUSHI imm16
    mov rax, 0x00CA
    push rax
; 0FE0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0FE1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0FE2: PUSHI imm16
    mov rax, 0x00F8
    push rax
; 0FE5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0FE6: print
    pop rax
    call print_rax
; 0FE7: PUSHI imm16
    mov rax, 0x00F9
    push rax
; 0FEA: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 0FED: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 0FF0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 0FF1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0FF2: PUSHI imm16
    mov rax, 0x00F9
    push rax
; 0FF5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0FF6: print
    pop rax
    call print_rax
; 0FF7: PUSHI imm16
    mov rax, 0x00FA
    push rax
; 0FFA: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 0FFD: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 1000: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 1001: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 1002: PUSHI imm16
    mov rax, 0x00FA
    push rax
; 1005: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 1006: print
    pop rax
    call print_rax
; 1007: PUSHI imm16
    mov rax, 0x00FB
    push rax
; 100A: PUSHI imm16
    mov rax, 0x0082
    push rax
; 100D: PUSHI imm16
    mov rax, 0x00AD
    push rax
; 1010: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 1011: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 1012: PUSHI imm16
    mov rax, 0x00FB
    push rax
; 1015: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 1016: print
    pop rax
    call print_rax
; 1017: PUSHI imm16
    mov rax, 0x00FC
    push rax
; 101A: PUSHI imm16
    mov rax, 0x00EA
    push rax
; 101D: PUSHI imm16
    mov rax, 0x00CA
    push rax
; 1020: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 1021: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 1022: PUSHI imm16
    mov rax, 0x00FC
    push rax
; 1025: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 1026: print
    pop rax
    call print_rax
; 1027: PUSHI imm16
    mov rax, 0x00FD
    push rax
; 102A: PUSHI imm16
    mov rax, 0x00A2
    push rax
; 102D: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 1030: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 1031: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 1032: PUSHI imm16
    mov rax, 0x00FD
    push rax
; 1035: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 1036: print
    pop rax
    call print_rax
; 1037: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 103A: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 103D: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 1040: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 1041: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 1042: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 1045: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 1046: print
    pop rax
    call print_rax
; 1047: PUSHI imm16
    mov rax, 0x00FF
    push rax
; 104A: PUSHI imm16
    mov rax, 0x008D
    push rax
; 104D: PUSHI imm16
    mov rax, 0x00AD
    push rax
; 1050: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 1051: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 1052: PUSHI imm16
    mov rax, 0x00FF
    push rax
; 1055: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 1056: print
    pop rax
    call print_rax
; 1057: PUSHI imm16
    mov rax, 0x0100
    push rax
; 105A: PUSHI imm16
    mov rax, 0x00E5
    push rax
; 105D: PUSHI imm16
    mov rax, 0x00CA
    push rax
; 1060: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 1061: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 1062: PUSHI imm16
    mov rax, 0x0100
    push rax
; 1065: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 1066: print
    pop rax
    call print_rax
; 1067: PUSHI imm16
    mov rax, 0x0101
    push rax
; 106A: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 106D: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 1070: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 1071: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 1072: PUSHI imm16
    mov rax, 0x0101
    push rax
; 1075: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 1076: print
    pop rax
    call print_rax
; 1077: PUSHI imm16
    mov rax, 0x0102
    push rax
; 107A: PUSHI imm16
    mov rax, 0x0082
    push rax
; 107D: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 1080: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 1081: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 1082: PUSHI imm16
    mov rax, 0x0102
    push rax
; 1085: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 1086: print
    pop rax
    call print_rax
; 1087: PUSHI imm16
    mov rax, 0x0103
    push rax
; 108A: PUSHI imm16
    mov rax, 0x008D
    push rax
; 108D: PUSHI imm16
    mov rax, 0x00AD
    push rax
; 1090: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 1091: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 1092: PUSHI imm16
    mov rax, 0x0103
    push rax
; 1095: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 1096: print
    pop rax
    call print_rax
; 1097: PUSHI imm16
    mov rax, 0x0104
    push rax
; 109A: PUSHI imm16
    mov rax, 0x00EA
    push rax
; 109D: PUSHI imm16
    mov rax, 0x00CA
    push rax
; 10A0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 10A1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 10A2: PUSHI imm16
    mov rax, 0x0104
    push rax
; 10A5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 10A6: print
    pop rax
    call print_rax
; 10A7: PUSHI imm16
    mov rax, 0x0105
    push rax
; 10AA: PUSHI imm16
    mov rax, 0x00D1
    push rax
; 10AD: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 10B0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 10B1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 10B2: PUSHI imm16
    mov rax, 0x0105
    push rax
; 10B5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 10B6: print
    pop rax
    call print_rax
; 10B7: PUSHI imm16
    mov rax, 0x0106
    push rax
; 10BA: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 10BD: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 10C0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 10C1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 10C2: PUSHI imm16
    mov rax, 0x0106
    push rax
; 10C5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 10C6: print
    pop rax
    call print_rax
; 10C7: PUSHI imm16
    mov rax, 0x0107
    push rax
; 10CA: PUSHI imm16
    mov rax, 0x00F1
    push rax
; 10CD: PUSHI imm16
    mov rax, 0x00AD
    push rax
; 10D0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 10D1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 10D2: PUSHI imm16
    mov rax, 0x0107
    push rax
; 10D5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 10D6: print
    pop rax
    call print_rax
; 10D7: PUSHI imm16
    mov rax, 0x0108
    push rax
; 10DA: PUSHI imm16
    mov rax, 0x00EA
    push rax
; 10DD: PUSHI imm16
    mov rax, 0x00CA
    push rax
; 10E0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 10E1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 10E2: PUSHI imm16
    mov rax, 0x0108
    push rax
; 10E5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 10E6: print
    pop rax
    call print_rax
; 10E7: PUSHI imm16
    mov rax, 0x0109
    push rax
; 10EA: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 10ED: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 10F0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 10F1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 10F2: PUSHI imm16
    mov rax, 0x0109
    push rax
; 10F5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 10F6: print
    pop rax
    call print_rax
; 10F7: PUSHI imm16
    mov rax, 0x010A
    push rax
; 10FA: PUSHI imm16
    mov rax, 0x00F1
    push rax
; 10FD: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 1100: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 1101: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 1102: PUSHI imm16
    mov rax, 0x010A
    push rax
; 1105: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 1106: print
    pop rax
    call print_rax
; 1107: PUSHI imm16
    mov rax, 0x010B
    push rax
; 110A: PUSHI imm16
    mov rax, 0x008D
    push rax
; 110D: PUSHI imm16
    mov rax, 0x00AD
    push rax
; 1110: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 1111: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 1112: PUSHI imm16
    mov rax, 0x010B
    push rax
; 1115: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 1116: print
    pop rax
    call print_rax
; 1117: PUSHI imm16
    mov rax, 0x010C
    push rax
; 111A: PUSHI imm16
    mov rax, 0x0096
    push rax
; 111D: PUSHI imm16
    mov rax, 0x00CA
    push rax
; 1120: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 1121: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 1122: PUSHI imm16
    mov rax, 0x010C
    push rax
; 1125: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 1126: print
    pop rax
    call print_rax
; 1127: PUSHI imm16
    mov rax, 0x010D
    push rax
; 112A: PUSHI imm16
    mov rax, 0x00F3
    push rax
; 112D: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 1130: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 1131: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 1132: PUSHI imm16
    mov rax, 0x010D
    push rax
; 1135: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 1136: print
    pop rax
    call print_rax
; 1137: PUSHI imm16
    mov rax, 0x010E
    push rax
; 113A: PUSHI imm16
    mov rax, 0x00D4
    push rax
; 113D: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 1140: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 1141: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 1142: PUSHI imm16
    mov rax, 0x010E
    push rax
; 1145: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 1146: print
    pop rax
    call print_rax
; 1147: PUSHI imm16
    mov rax, 0x010F
    push rax
; 114A: PUSHI imm16
    mov rax, 0x0085
    push rax
; 114D: PUSHI imm16
    mov rax, 0x00AD
    push rax
; 1150: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 1151: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 1152: PUSHI imm16
    mov rax, 0x010F
    push rax
; 1155: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 1156: print
    pop rax
    call print_rax
; 1157: PUSHI imm16
    mov rax, 0x0110
    push rax
; 115A: PUSHI imm16
    mov rax, 0x00EA
    push rax
; 115D: PUSHI imm16
    mov rax, 0x00CA
    push rax
; 1160: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 1161: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 1162: PUSHI imm16
    mov rax, 0x0110
    push rax
; 1165: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 1166: print
    pop rax
    call print_rax
; 1167: PUSHI imm16
    mov rax, 0x0111
    push rax
; 116A: PUSHI imm16
    mov rax, 0x009D
    push rax
; 116D: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 1170: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 1171: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 1172: PUSHI imm16
    mov rax, 0x0111
    push rax
; 1175: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 1176: print
    pop rax
    call print_rax
; 1177: PUSHI imm16
    mov rax, 0x0112
    push rax
; 117A: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 117D: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 1180: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 1181: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 1182: PUSHI imm16
    mov rax, 0x0112
    push rax
; 1185: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 1186: print
    pop rax
    call print_rax
; 1187: PUSHI imm16
    mov rax, 0x0113
    push rax
; 118A: PUSHI imm16
    mov rax, 0x0084
    push rax
; 118D: PUSHI imm16
    mov rax, 0x00AD
    push rax
; 1190: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 1191: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 1192: PUSHI imm16
    mov rax, 0x0113
    push rax
; 1195: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 1196: print
    pop rax
    call print_rax
; 1197: PUSHI imm16
    mov rax, 0x0114
    push rax
; 119A: PUSHI imm16
    mov rax, 0x00E2
    push rax
; 119D: PUSHI imm16
    mov rax, 0x00CA
    push rax
; 11A0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 11A1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 11A2: PUSHI imm16
    mov rax, 0x0114
    push rax
; 11A5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 11A6: print
    pop rax
    call print_rax
; 11A7: PUSHI imm16
    mov rax, 0x0115
    push rax
; 11AA: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 11AD: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 11B0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 11B1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 11B2: PUSHI imm16
    mov rax, 0x0115
    push rax
; 11B5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 11B6: print
    pop rax
    call print_rax
; 11B7: PUSHI imm16
    mov rax, 0x0116
    push rax
; 11BA: PUSHI imm16
    mov rax, 0x00EE
    push rax
; 11BD: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 11C0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 11C1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 11C2: PUSHI imm16
    mov rax, 0x0116
    push rax
; 11C5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 11C6: print
    pop rax
    call print_rax
; 11C7: PUSHI imm16
    mov rax, 0x0117
    push rax
; 11CA: PUSHI imm16
    mov rax, 0x008D
    push rax
; 11CD: PUSHI imm16
    mov rax, 0x00AD
    push rax
; 11D0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 11D1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 11D2: PUSHI imm16
    mov rax, 0x0117
    push rax
; 11D5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 11D6: print
    pop rax
    call print_rax
; 11D7: PUSHI imm16
    mov rax, 0x0118
    push rax
; 11DA: PUSHI imm16
    mov rax, 0x00E3
    push rax
; 11DD: PUSHI imm16
    mov rax, 0x00CA
    push rax
; 11E0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 11E1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 11E2: PUSHI imm16
    mov rax, 0x0118
    push rax
; 11E5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 11E6: print
    pop rax
    call print_rax
; 11E7: PUSHI imm16
    mov rax, 0x0119
    push rax
; 11EA: PUSHI imm16
    mov rax, 0x00D6
    push rax
; 11ED: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 11F0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 11F1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 11F2: PUSHI imm16
    mov rax, 0x0119
    push rax
; 11F5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 11F6: print
    pop rax
    call print_rax
; 11F7: PUSHI imm16
    mov rax, 0x011A
    push rax
; 11FA: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 11FD: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 1200: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 1201: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 1202: PUSHI imm16
    mov rax, 0x011A
    push rax
; 1205: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 1206: print
    pop rax
    call print_rax
; 1207: PUSHI imm16
    mov rax, 0x011B
    push rax
; 120A: PUSHI imm16
    mov rax, 0x00C3
    push rax
; 120D: PUSHI imm16
    mov rax, 0x00AD
    push rax
; 1210: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 1211: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 1212: PUSHI imm16
    mov rax, 0x011B
    push rax
; 1215: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 1216: print
    pop rax
    call print_rax
; 1217: PUSHI imm16
    mov rax, 0x011C
    push rax
; 121A: PUSHI imm16
    mov rax, 0x00EA
    push rax
; 121D: PUSHI imm16
    mov rax, 0x00CA
    push rax
; 1220: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 1221: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 1222: PUSHI imm16
    mov rax, 0x011C
    push rax
; 1225: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 1226: print
    pop rax
    call print_rax
; 1227: PUSHI imm16
    mov rax, 0x011D
    push rax
; 122A: PUSHI imm16
    mov rax, 0x00D7
    push rax
; 122D: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 1230: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 1231: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 1232: PUSHI imm16
    mov rax, 0x011D
    push rax
; 1235: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 1236: print
    pop rax
    call print_rax
; 1237: PUSHI imm16
    mov rax, 0x011E
    push rax
; 123A: PUSHI imm16
    mov rax, 0x00F6
    push rax
; 123D: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 1240: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 1241: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 1242: PUSHI imm16
    mov rax, 0x011E
    push rax
; 1245: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 1246: print
    pop rax
    call print_rax
; 1247: PUSHI imm16
    mov rax, 0x011F
    push rax
; 124A: PUSHI imm16
    mov rax, 0x008D
    push rax
; 124D: PUSHI imm16
    mov rax, 0x00AD
    push rax
; 1250: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 1251: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 1252: PUSHI imm16
    mov rax, 0x011F
    push rax
; 1255: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 1256: print
    pop rax
    call print_rax
; 1257: PUSHI imm16
    mov rax, 0x0120
    push rax
; 125A: PUSHI imm16
    mov rax, 0x00B9
    push rax
; 125D: PUSHI imm16
    mov rax, 0x00CA
    push rax
; 1260: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 1261: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 1262: PUSHI imm16
    mov rax, 0x0120
    push rax
; 1265: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 1266: print
    pop rax
    call print_rax
; 1267: PUSHI imm16
    mov rax, 0x0121
    push rax
; 126A: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 126D: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 1270: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 1271: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 1272: PUSHI imm16
    mov rax, 0x0121
    push rax
; 1275: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 1276: print
    pop rax
    call print_rax
; 1277: PUSHI imm16
    mov rax, 0x0122
    push rax
; 127A: PUSHI imm16
    mov rax, 0x00F7
    push rax
; 127D: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 1280: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 1281: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 1282: PUSHI imm16
    mov rax, 0x0122
    push rax
; 1285: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 1286: print
    pop rax
    call print_rax
; 1287: PUSHI imm16
    mov rax, 0x0123
    push rax
; 128A: PUSHI imm16
    mov rax, 0x0085
    push rax
; 128D: PUSHI imm16
    mov rax, 0x00AD
    push rax
; 1290: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 1291: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 1292: PUSHI imm16
    mov rax, 0x0123
    push rax
; 1295: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 1296: print
    pop rax
    call print_rax
; 1297: PUSHI imm16
    mov rax, 0x0124
    push rax
; 129A: PUSHI imm16
    mov rax, 0x00EA
    push rax
; 129D: PUSHI imm16
    mov rax, 0x00CA
    push rax
; 12A0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 12A1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 12A2: PUSHI imm16
    mov rax, 0x0124
    push rax
; 12A5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 12A6: print
    pop rax
    call print_rax
; 12A7: PUSHI imm16
    mov rax, 0x0125
    push rax
; 12AA: PUSHI imm16
    mov rax, 0x008A
    push rax
; 12AD: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 12B0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 12B1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 12B2: PUSHI imm16
    mov rax, 0x0125
    push rax
; 12B5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 12B6: print
    pop rax
    call print_rax
; 12B7: PUSHI imm16
    mov rax, 0x0126
    push rax
; 12BA: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 12BD: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 12C0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 12C1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 12C2: PUSHI imm16
    mov rax, 0x0126
    push rax
; 12C5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 12C6: print
    pop rax
    call print_rax
; 12C7: PUSHI imm16
    mov rax, 0x0127
    push rax
; 12CA: PUSHI imm16
    mov rax, 0x0084
    push rax
; 12CD: PUSHI imm16
    mov rax, 0x00AD
    push rax
; 12D0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 12D1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 12D2: PUSHI imm16
    mov rax, 0x0127
    push rax
; 12D5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 12D6: print
    pop rax
    call print_rax
; 12D7: PUSHI imm16
    mov rax, 0x0128
    push rax
; 12DA: PUSHI imm16
    mov rax, 0x00E2
    push rax
; 12DD: PUSHI imm16
    mov rax, 0x00CA
    push rax
; 12E0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 12E1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 12E2: PUSHI imm16
    mov rax, 0x0128
    push rax
; 12E5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 12E6: print
    pop rax
    call print_rax
; 12E7: PUSHI imm16
    mov rax, 0x0129
    push rax
; 12EA: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 12ED: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 12F0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 12F1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 12F2: PUSHI imm16
    mov rax, 0x0129
    push rax
; 12F5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 12F6: print
    pop rax
    call print_rax
; 12F7: PUSHI imm16
    mov rax, 0x012A
    push rax
; 12FA: PUSHI imm16
    mov rax, 0x00AC
    push rax
; 12FD: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 1300: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 1301: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 1302: PUSHI imm16
    mov rax, 0x012A
    push rax
; 1305: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 1306: print
    pop rax
    call print_rax
; 1307: PUSHI imm16
    mov rax, 0x012B
    push rax
; 130A: PUSHI imm16
    mov rax, 0x008D
    push rax
; 130D: PUSHI imm16
    mov rax, 0x00AD
    push rax
; 1310: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 1311: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 1312: PUSHI imm16
    mov rax, 0x012B
    push rax
; 1315: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 1316: print
    pop rax
    call print_rax
; 1317: PUSHI imm16
    mov rax, 0x012C
    push rax
; 131A: PUSHI imm16
    mov rax, 0x00E3
    push rax
; 131D: PUSHI imm16
    mov rax, 0x00CA
    push rax
; 1320: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 1321: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 1322: PUSHI imm16
    mov rax, 0x012C
    push rax
; 1325: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 1326: print
    pop rax
    call print_rax
; 1327: PUSHI imm16
    mov rax, 0x012D
    push rax
; 132A: PUSHI imm16
    mov rax, 0x00D6
    push rax
; 132D: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 1330: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 1331: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 1332: PUSHI imm16
    mov rax, 0x012D
    push rax
; 1335: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 1336: print
    pop rax
    call print_rax
; 1337: PUSHI imm16
    mov rax, 0x012E
    push rax
; 133A: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 133D: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 1340: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 1341: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 1342: PUSHI imm16
    mov rax, 0x012E
    push rax
; 1345: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 1346: print
    pop rax
    call print_rax
; 1347: PUSHI imm16
    mov rax, 0x012F
    push rax
; 134A: PUSHI imm16
    mov rax, 0x00D8
    push rax
; 134D: PUSHI imm16
    mov rax, 0x00AD
    push rax
; 1350: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 1351: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 1352: PUSHI imm16
    mov rax, 0x012F
    push rax
; 1355: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 1356: print
    pop rax
    call print_rax
; 1357: PUSHI imm16
    mov rax, 0x0130
    push rax
; 135A: PUSHI imm16
    mov rax, 0x00EA
    push rax
; 135D: PUSHI imm16
    mov rax, 0x00CA
    push rax
; 1360: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 1361: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 1362: PUSHI imm16
    mov rax, 0x0130
    push rax
; 1365: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 1366: print
    pop rax
    call print_rax
; 1367: PUSHI imm16
    mov rax, 0x0131
    push rax
; 136A: PUSHI imm16
    mov rax, 0x00D7
    push rax
; 136D: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 1370: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 1371: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 1372: PUSHI imm16
    mov rax, 0x0131
    push rax
; 1375: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 1376: print
    pop rax
    call print_rax
; 1377: PUSHI imm16
    mov rax, 0x0132
    push rax
; 137A: PUSHI imm16
    mov rax, 0x00F6
    push rax
; 137D: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 1380: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 1381: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 1382: PUSHI imm16
    mov rax, 0x0132
    push rax
; 1385: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 1386: print
    pop rax
    call print_rax
; 1387: PUSHI imm16
    mov rax, 0x0133
    push rax
; 138A: PUSHI imm16
    mov rax, 0x008D
    push rax
; 138D: PUSHI imm16
    mov rax, 0x00AD
    push rax
; 1390: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 1391: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 1392: PUSHI imm16
    mov rax, 0x0133
    push rax
; 1395: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 1396: print
    pop rax
    call print_rax
; 1397: PUSHI imm16
    mov rax, 0x0134
    push rax
; 139A: PUSHI imm16
    mov rax, 0x00A9
    push rax
; 139D: PUSHI imm16
    mov rax, 0x00CA
    push rax
; 13A0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 13A1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 13A2: PUSHI imm16
    mov rax, 0x0134
    push rax
; 13A5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 13A6: print
    pop rax
    call print_rax
; 13A7: PUSHI imm16
    mov rax, 0x0135
    push rax
; 13AA: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 13AD: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 13B0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 13B1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 13B2: PUSHI imm16
    mov rax, 0x0135
    push rax
; 13B5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 13B6: print
    pop rax
    call print_rax
; 13B7: PUSHI imm16
    mov rax, 0x0136
    push rax
; 13BA: PUSHI imm16
    mov rax, 0x00F7
    push rax
; 13BD: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 13C0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 13C1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 13C2: PUSHI imm16
    mov rax, 0x0136
    push rax
; 13C5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 13C6: print
    pop rax
    call print_rax
; 13C7: PUSHI imm16
    mov rax, 0x0137
    push rax
; 13CA: PUSHI imm16
    mov rax, 0x0085
    push rax
; 13CD: PUSHI imm16
    mov rax, 0x00AD
    push rax
; 13D0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 13D1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 13D2: PUSHI imm16
    mov rax, 0x0137
    push rax
; 13D5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 13D6: print
    pop rax
    call print_rax
; 13D7: PUSHI imm16
    mov rax, 0x0138
    push rax
; 13DA: PUSHI imm16
    mov rax, 0x00EA
    push rax
; 13DD: PUSHI imm16
    mov rax, 0x00CA
    push rax
; 13E0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 13E1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 13E2: PUSHI imm16
    mov rax, 0x0138
    push rax
; 13E5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 13E6: print
    pop rax
    call print_rax
; 13E7: PUSHI imm16
    mov rax, 0x0139
    push rax
; 13EA: PUSHI imm16
    mov rax, 0x008A
    push rax
; 13ED: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 13F0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 13F1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 13F2: PUSHI imm16
    mov rax, 0x0139
    push rax
; 13F5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 13F6: print
    pop rax
    call print_rax
; 13F7: PUSHI imm16
    mov rax, 0x013A
    push rax
; 13FA: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 13FD: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 1400: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 1401: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 1402: PUSHI imm16
    mov rax, 0x013A
    push rax
; 1405: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 1406: print
    pop rax
    call print_rax
; 1407: PUSHI imm16
    mov rax, 0x013B
    push rax
; 140A: PUSHI imm16
    mov rax, 0x0084
    push rax
; 140D: PUSHI imm16
    mov rax, 0x00AD
    push rax
; 1410: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 1411: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 1412: PUSHI imm16
    mov rax, 0x013B
    push rax
; 1415: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 1416: print
    pop rax
    call print_rax
; 1417: PUSHI imm16
    mov rax, 0x013C
    push rax
; 141A: PUSHI imm16
    mov rax, 0x00E2
    push rax
; 141D: PUSHI imm16
    mov rax, 0x00CA
    push rax
; 1420: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 1421: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 1422: PUSHI imm16
    mov rax, 0x013C
    push rax
; 1425: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 1426: print
    pop rax
    call print_rax
; 1427: PUSHI imm16
    mov rax, 0x013D
    push rax
; 142A: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 142D: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 1430: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 1431: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 1432: PUSHI imm16
    mov rax, 0x013D
    push rax
; 1435: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 1436: print
    pop rax
    call print_rax
; 1437: PUSHI imm16
    mov rax, 0x013E
    push rax
; 143A: PUSHI imm16
    mov rax, 0x00B7
    push rax
; 143D: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 1440: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 1441: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 1442: PUSHI imm16
    mov rax, 0x013E
    push rax
; 1445: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 1446: print
    pop rax
    call print_rax
; 1447: PUSHI imm16
    mov rax, 0x013F
    push rax
; 144A: PUSHI imm16
    mov rax, 0x008D
    push rax
; 144D: PUSHI imm16
    mov rax, 0x00AD
    push rax
; 1450: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 1451: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 1452: PUSHI imm16
    mov rax, 0x013F
    push rax
; 1455: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 1456: print
    pop rax
    call print_rax
; 1457: PUSHI imm16
    mov rax, 0x0140
    push rax
; 145A: PUSHI imm16
    mov rax, 0x00E3
    push rax
; 145D: PUSHI imm16
    mov rax, 0x00CA
    push rax
; 1460: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 1461: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 1462: PUSHI imm16
    mov rax, 0x0140
    push rax
; 1465: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 1466: print
    pop rax
    call print_rax
; 1467: PUSHI imm16
    mov rax, 0x0141
    push rax
; 146A: PUSHI imm16
    mov rax, 0x00D6
    push rax
; 146D: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 1470: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 1471: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 1472: PUSHI imm16
    mov rax, 0x0141
    push rax
; 1475: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 1476: print
    pop rax
    call print_rax
; 1477: PUSHI imm16
    mov rax, 0x0142
    push rax
; 147A: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 147D: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 1480: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 1481: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 1482: PUSHI imm16
    mov rax, 0x0142
    push rax
; 1485: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 1486: print
    pop rax
    call print_rax
; 1487: PUSHI imm16
    mov rax, 0x0143
    push rax
; 148A: PUSHI imm16
    mov rax, 0x009D
    push rax
; 148D: PUSHI imm16
    mov rax, 0x00AD
    push rax
; 1490: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 1491: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 1492: PUSHI imm16
    mov rax, 0x0143
    push rax
; 1495: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 1496: print
    pop rax
    call print_rax
; 1497: PUSHI imm16
    mov rax, 0x0144
    push rax
; 149A: PUSHI imm16
    mov rax, 0x00EA
    push rax
; 149D: PUSHI imm16
    mov rax, 0x00CA
    push rax
; 14A0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 14A1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 14A2: PUSHI imm16
    mov rax, 0x0144
    push rax
; 14A5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 14A6: print
    pop rax
    call print_rax
; 14A7: PUSHI imm16
    mov rax, 0x0145
    push rax
; 14AA: PUSHI imm16
    mov rax, 0x00D7
    push rax
; 14AD: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 14B0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 14B1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 14B2: PUSHI imm16
    mov rax, 0x0145
    push rax
; 14B5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 14B6: print
    pop rax
    call print_rax
; 14B7: PUSHI imm16
    mov rax, 0x0146
    push rax
; 14BA: PUSHI imm16
    mov rax, 0x00F6
    push rax
; 14BD: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 14C0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 14C1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 14C2: PUSHI imm16
    mov rax, 0x0146
    push rax
; 14C5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 14C6: print
    pop rax
    call print_rax
; 14C7: PUSHI imm16
    mov rax, 0x0147
    push rax
; 14CA: PUSHI imm16
    mov rax, 0x008D
    push rax
; 14CD: PUSHI imm16
    mov rax, 0x00AD
    push rax
; 14D0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 14D1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 14D2: PUSHI imm16
    mov rax, 0x0147
    push rax
; 14D5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 14D6: print
    pop rax
    call print_rax
; 14D7: PUSHI imm16
    mov rax, 0x0148
    push rax
; 14DA: PUSHI imm16
    mov rax, 0x00A4
    push rax
; 14DD: PUSHI imm16
    mov rax, 0x00CA
    push rax
; 14E0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 14E1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 14E2: PUSHI imm16
    mov rax, 0x0148
    push rax
; 14E5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 14E6: print
    pop rax
    call print_rax
; 14E7: PUSHI imm16
    mov rax, 0x0149
    push rax
; 14EA: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 14ED: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 14F0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 14F1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 14F2: PUSHI imm16
    mov rax, 0x0149
    push rax
; 14F5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 14F6: print
    pop rax
    call print_rax
; 14F7: PUSHI imm16
    mov rax, 0x014A
    push rax
; 14FA: PUSHI imm16
    mov rax, 0x00F7
    push rax
; 14FD: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 1500: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 1501: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 1502: PUSHI imm16
    mov rax, 0x014A
    push rax
; 1505: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 1506: print
    pop rax
    call print_rax
; 1507: PUSHI imm16
    mov rax, 0x014B
    push rax
; 150A: PUSHI imm16
    mov rax, 0x00A0
    push rax
; 150D: PUSHI imm16
    mov rax, 0x00AD
    push rax
; 1510: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 1511: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 1512: PUSHI imm16
    mov rax, 0x014B
    push rax
; 1515: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 1516: print
    pop rax
    call print_rax
; 1517: PUSHI imm16
    mov rax, 0x014C
    push rax
; 151A: PUSHI imm16
    mov rax, 0x00C0
    push rax
; 151D: PUSHI imm16
    mov rax, 0x00CA
    push rax
; 1520: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 1521: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 1522: PUSHI imm16
    mov rax, 0x014C
    push rax
; 1525: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 1526: print
    pop rax
    call print_rax
; 1527: PUSHI imm16
    mov rax, 0x014D
    push rax
; 152A: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 152D: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 1530: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 1531: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 1532: PUSHI imm16
    mov rax, 0x014D
    push rax
; 1535: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 1536: print
    pop rax
    call print_rax
; 1537: PUSHI imm16
    mov rax, 0x014E
    push rax
; 153A: PUSHI imm16
    mov rax, 0x0082
    push rax
; 153D: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 1540: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 1541: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 1542: PUSHI imm16
    mov rax, 0x014E
    push rax
; 1545: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 1546: print
    pop rax
    call print_rax
; 1547: PUSHI imm16
    mov rax, 0x014F
    push rax
; 154A: PUSHI imm16
    mov rax, 0x00F2
    push rax
; 154D: PUSHI imm16
    mov rax, 0x00AD
    push rax
; 1550: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 1551: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 1552: PUSHI imm16
    mov rax, 0x014F
    push rax
; 1555: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 1556: print
    pop rax
    call print_rax
; 1557: PUSHI imm16
    mov rax, 0x0150
    push rax
; 155A: PUSHI imm16
    mov rax, 0x00E5
    push rax
; 155D: PUSHI imm16
    mov rax, 0x00CA
    push rax
; 1560: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 1561: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 1562: PUSHI imm16
    mov rax, 0x0150
    push rax
; 1565: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 1566: print
    pop rax
    call print_rax
; 1567: PUSHI imm16
    mov rax, 0x0151
    push rax
; 156A: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 156D: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 1570: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 1571: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 1572: PUSHI imm16
    mov rax, 0x0151
    push rax
; 1575: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 1576: print
    pop rax
    call print_rax
; 1577: PUSHI imm16
    mov rax, 0x0152
    push rax
; 157A: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 157D: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 1580: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 1581: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 1582: PUSHI imm16
    mov rax, 0x0152
    push rax
; 1585: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 1586: print
    pop rax
    call print_rax
; 1587: PUSHI imm16
    mov rax, 0x0153
    push rax
; 158A: PUSHI imm16
    mov rax, 0x00F1
    push rax
; 158D: PUSHI imm16
    mov rax, 0x00AD
    push rax
; 1590: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 1591: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 1592: PUSHI imm16
    mov rax, 0x0153
    push rax
; 1595: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 1596: print
    pop rax
    call print_rax
; 1597: PUSHI imm16
    mov rax, 0x0154
    push rax
; 159A: PUSHI imm16
    mov rax, 0x0095
    push rax
; 159D: PUSHI imm16
    mov rax, 0x00CA
    push rax
; 15A0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 15A1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 15A2: PUSHI imm16
    mov rax, 0x0154
    push rax
; 15A5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 15A6: print
    pop rax
    call print_rax
; 15A7: PUSHI imm16
    mov rax, 0x0155
    push rax
; 15AA: PUSHI imm16
    mov rax, 0x00D1
    push rax
; 15AD: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 15B0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 15B1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 15B2: PUSHI imm16
    mov rax, 0x0155
    push rax
; 15B5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 15B6: print
    pop rax
    call print_rax
; 15B7: PUSHI imm16
    mov rax, 0x0156
    push rax
; 15BA: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 15BD: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 15C0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 15C1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 15C2: PUSHI imm16
    mov rax, 0x0156
    push rax
; 15C5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 15C6: print
    pop rax
    call print_rax
; 15C7: PUSHI imm16
    mov rax, 0x0157
    push rax
; 15CA: PUSHI imm16
    mov rax, 0x008D
    push rax
; 15CD: PUSHI imm16
    mov rax, 0x00AD
    push rax
; 15D0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 15D1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 15D2: PUSHI imm16
    mov rax, 0x0157
    push rax
; 15D5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 15D6: print
    pop rax
    call print_rax
; 15D7: PUSHI imm16
    mov rax, 0x0158
    push rax
; 15DA: PUSHI imm16
    mov rax, 0x0096
    push rax
; 15DD: PUSHI imm16
    mov rax, 0x00CA
    push rax
; 15E0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 15E1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 15E2: PUSHI imm16
    mov rax, 0x0158
    push rax
; 15E5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 15E6: print
    pop rax
    call print_rax
; 15E7: PUSHI imm16
    mov rax, 0x0159
    push rax
; 15EA: PUSHI imm16
    mov rax, 0x00A1
    push rax
; 15ED: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 15F0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 15F1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 15F2: PUSHI imm16
    mov rax, 0x0159
    push rax
; 15F5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 15F6: print
    pop rax
    call print_rax
; 15F7: PUSHI imm16
    mov rax, 0x015A
    push rax
; 15FA: PUSHI imm16
    mov rax, 0x00F1
    push rax
; 15FD: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 1600: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 1601: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 1602: PUSHI imm16
    mov rax, 0x015A
    push rax
; 1605: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 1606: print
    pop rax
    call print_rax
; 1607: PUSHI imm16
    mov rax, 0x015B
    push rax
; 160A: PUSHI imm16
    mov rax, 0x008D
    push rax
; 160D: PUSHI imm16
    mov rax, 0x00AD
    push rax
; 1610: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 1611: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 1612: PUSHI imm16
    mov rax, 0x015B
    push rax
; 1615: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 1616: print
    pop rax
    call print_rax
; 1617: PUSHI imm16
    mov rax, 0x015C
    push rax
; 161A: PUSHI imm16
    mov rax, 0x00EA
    push rax
; 161D: PUSHI imm16
    mov rax, 0x00CA
    push rax
; 1620: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 1621: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 1622: PUSHI imm16
    mov rax, 0x015C
    push rax
; 1625: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 1626: print
    pop rax
    call print_rax
; 1627: PUSHI imm16
    mov rax, 0x015D
    push rax
; 162A: PUSHI imm16
    mov rax, 0x00A2
    push rax
; 162D: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 1630: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 1631: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 1632: PUSHI imm16
    mov rax, 0x015D
    push rax
; 1635: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 1636: print
    pop rax
    call print_rax
; 1637: PUSHI imm16
    mov rax, 0x015E
    push rax
; 163A: PUSHI imm16
    mov rax, 0x0081
    push rax
; 163D: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 1640: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 1641: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 1642: PUSHI imm16
    mov rax, 0x015E
    push rax
; 1645: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 1646: print
    pop rax
    call print_rax
; 1647: PUSHI imm16
    mov rax, 0x015F
    push rax
; 164A: PUSHI imm16
    mov rax, 0x0082
    push rax
; 164D: PUSHI imm16
    mov rax, 0x00AD
    push rax
; 1650: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 1651: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 1652: PUSHI imm16
    mov rax, 0x015F
    push rax
; 1655: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 1656: print
    pop rax
    call print_rax
; 1657: PUSHI imm16
    mov rax, 0x0160
    push rax
; 165A: PUSHI imm16
    mov rax, 0x00EA
    push rax
; 165D: PUSHI imm16
    mov rax, 0x00CA
    push rax
; 1660: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 1661: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 1662: PUSHI imm16
    mov rax, 0x0160
    push rax
; 1665: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 1666: print
    pop rax
    call print_rax
; 1667: PUSHI imm16
    mov rax, 0x0161
    push rax
; 166A: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 166D: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 1670: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 1671: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 1672: PUSHI imm16
    mov rax, 0x0161
    push rax
; 1675: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 1676: print
    pop rax
    call print_rax
; 1677: PUSHI imm16
    mov rax, 0x0162
    push rax
; 167A: PUSHI imm16
    mov rax, 0x0082
    push rax
; 167D: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 1680: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 1681: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 1682: PUSHI imm16
    mov rax, 0x0162
    push rax
; 1685: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 1686: print
    pop rax
    call print_rax
; 1687: PUSHI imm16
    mov rax, 0x0163
    push rax
; 168A: PUSHI imm16
    mov rax, 0x00F2
    push rax
; 168D: PUSHI imm16
    mov rax, 0x00AD
    push rax
; 1690: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 1691: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 1692: PUSHI imm16
    mov rax, 0x0163
    push rax
; 1695: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 1696: print
    pop rax
    call print_rax
; 1697: PUSHI imm16
    mov rax, 0x0164
    push rax
; 169A: PUSHI imm16
    mov rax, 0x00E5
    push rax
; 169D: PUSHI imm16
    mov rax, 0x00CA
    push rax
; 16A0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 16A1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 16A2: PUSHI imm16
    mov rax, 0x0164
    push rax
; 16A5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 16A6: print
    pop rax
    call print_rax
; 16A7: PUSHI imm16
    mov rax, 0x0165
    push rax
; 16AA: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 16AD: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 16B0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 16B1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 16B2: PUSHI imm16
    mov rax, 0x0165
    push rax
; 16B5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 16B6: print
    pop rax
    call print_rax
; 16B7: PUSHI imm16
    mov rax, 0x0166
    push rax
; 16BA: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 16BD: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 16C0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 16C1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 16C2: PUSHI imm16
    mov rax, 0x0166
    push rax
; 16C5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 16C6: print
    pop rax
    call print_rax
; 16C7: PUSHI imm16
    mov rax, 0x0167
    push rax
; 16CA: PUSHI imm16
    mov rax, 0x00F1
    push rax
; 16CD: PUSHI imm16
    mov rax, 0x00AD
    push rax
; 16D0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 16D1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 16D2: PUSHI imm16
    mov rax, 0x0167
    push rax
; 16D5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 16D6: print
    pop rax
    call print_rax
; 16D7: PUSHI imm16
    mov rax, 0x0168
    push rax
; 16DA: PUSHI imm16
    mov rax, 0x0095
    push rax
; 16DD: PUSHI imm16
    mov rax, 0x00CA
    push rax
; 16E0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 16E1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 16E2: PUSHI imm16
    mov rax, 0x0168
    push rax
; 16E5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 16E6: print
    pop rax
    call print_rax
; 16E7: PUSHI imm16
    mov rax, 0x0169
    push rax
; 16EA: PUSHI imm16
    mov rax, 0x00D1
    push rax
; 16ED: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 16F0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 16F1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 16F2: PUSHI imm16
    mov rax, 0x0169
    push rax
; 16F5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 16F6: print
    pop rax
    call print_rax
; 16F7: PUSHI imm16
    mov rax, 0x016A
    push rax
; 16FA: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 16FD: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 1700: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 1701: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 1702: PUSHI imm16
    mov rax, 0x016A
    push rax
; 1705: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 1706: print
    pop rax
    call print_rax
; 1707: PUSHI imm16
    mov rax, 0x016B
    push rax
; 170A: PUSHI imm16
    mov rax, 0x008D
    push rax
; 170D: PUSHI imm16
    mov rax, 0x00AD
    push rax
; 1710: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 1711: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 1712: PUSHI imm16
    mov rax, 0x016B
    push rax
; 1715: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 1716: print
    pop rax
    call print_rax
; 1717: PUSHI imm16
    mov rax, 0x016C
    push rax
; 171A: PUSHI imm16
    mov rax, 0x0096
    push rax
; 171D: PUSHI imm16
    mov rax, 0x00CA
    push rax
; 1720: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 1721: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 1722: PUSHI imm16
    mov rax, 0x016C
    push rax
; 1725: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 1726: print
    pop rax
    call print_rax
; 1727: PUSHI imm16
    mov rax, 0x016D
    push rax
; 172A: PUSHI imm16
    mov rax, 0x00A1
    push rax
; 172D: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 1730: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 1731: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 1732: PUSHI imm16
    mov rax, 0x016D
    push rax
; 1735: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 1736: print
    pop rax
    call print_rax
; 1737: PUSHI imm16
    mov rax, 0x016E
    push rax
; 173A: PUSHI imm16
    mov rax, 0x00F1
    push rax
; 173D: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 1740: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 1741: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 1742: PUSHI imm16
    mov rax, 0x016E
    push rax
; 1745: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 1746: print
    pop rax
    call print_rax
; 1747: PUSHI imm16
    mov rax, 0x016F
    push rax
; 174A: PUSHI imm16
    mov rax, 0x008D
    push rax
; 174D: PUSHI imm16
    mov rax, 0x00AD
    push rax
; 1750: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 1751: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 1752: PUSHI imm16
    mov rax, 0x016F
    push rax
; 1755: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 1756: print
    pop rax
    call print_rax
; 1757: PUSHI imm16
    mov rax, 0x0170
    push rax
; 175A: PUSHI imm16
    mov rax, 0x00EA
    push rax
; 175D: PUSHI imm16
    mov rax, 0x00CA
    push rax
; 1760: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 1761: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 1762: PUSHI imm16
    mov rax, 0x0170
    push rax
; 1765: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 1766: print
    pop rax
    call print_rax
; 1767: PUSHI imm16
    mov rax, 0x0171
    push rax
; 176A: PUSHI imm16
    mov rax, 0x00A2
    push rax
; 176D: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 1770: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 1771: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 1772: PUSHI imm16
    mov rax, 0x0171
    push rax
; 1775: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 1776: print
    pop rax
    call print_rax
; 1777: PUSHI imm16
    mov rax, 0x0172
    push rax
; 177A: PUSHI imm16
    mov rax, 0x0081
    push rax
; 177D: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 1780: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 1781: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 1782: PUSHI imm16
    mov rax, 0x0172
    push rax
; 1785: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 1786: print
    pop rax
    call print_rax
; 1787: PUSHI imm16
    mov rax, 0x0173
    push rax
; 178A: PUSHI imm16
    mov rax, 0x0082
    push rax
; 178D: PUSHI imm16
    mov rax, 0x00AD
    push rax
; 1790: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 1791: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 1792: PUSHI imm16
    mov rax, 0x0173
    push rax
; 1795: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 1796: print
    pop rax
    call print_rax
; 1797: PUSHI imm16
    mov rax, 0x0174
    push rax
; 179A: PUSHI imm16
    mov rax, 0x00EA
    push rax
; 179D: PUSHI imm16
    mov rax, 0x00CA
    push rax
; 17A0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 17A1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 17A2: PUSHI imm16
    mov rax, 0x0174
    push rax
; 17A5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 17A6: print
    pop rax
    call print_rax
; 17A7: PUSHI imm16
    mov rax, 0x0175
    push rax
; 17AA: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 17AD: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 17B0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 17B1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 17B2: PUSHI imm16
    mov rax, 0x0175
    push rax
; 17B5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 17B6: print
    pop rax
    call print_rax
; 17B7: PUSHI imm16
    mov rax, 0x0176
    push rax
; 17BA: PUSHI imm16
    mov rax, 0x0082
    push rax
; 17BD: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 17C0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 17C1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 17C2: PUSHI imm16
    mov rax, 0x0176
    push rax
; 17C5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 17C6: print
    pop rax
    call print_rax
; 17C7: PUSHI imm16
    mov rax, 0x0177
    push rax
; 17CA: PUSHI imm16
    mov rax, 0x00F2
    push rax
; 17CD: PUSHI imm16
    mov rax, 0x00AD
    push rax
; 17D0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 17D1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 17D2: PUSHI imm16
    mov rax, 0x0177
    push rax
; 17D5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 17D6: print
    pop rax
    call print_rax
; 17D7: PUSHI imm16
    mov rax, 0x0178
    push rax
; 17DA: PUSHI imm16
    mov rax, 0x00E5
    push rax
; 17DD: PUSHI imm16
    mov rax, 0x00CA
    push rax
; 17E0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 17E1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 17E2: PUSHI imm16
    mov rax, 0x0178
    push rax
; 17E5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 17E6: print
    pop rax
    call print_rax
; 17E7: PUSHI imm16
    mov rax, 0x0179
    push rax
; 17EA: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 17ED: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 17F0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 17F1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 17F2: PUSHI imm16
    mov rax, 0x0179
    push rax
; 17F5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 17F6: print
    pop rax
    call print_rax
; 17F7: PUSHI imm16
    mov rax, 0x017A
    push rax
; 17FA: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 17FD: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 1800: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 1801: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 1802: PUSHI imm16
    mov rax, 0x017A
    push rax
; 1805: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 1806: print
    pop rax
    call print_rax
; 1807: PUSHI imm16
    mov rax, 0x017B
    push rax
; 180A: PUSHI imm16
    mov rax, 0x00F1
    push rax
; 180D: PUSHI imm16
    mov rax, 0x00AD
    push rax
; 1810: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 1811: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 1812: PUSHI imm16
    mov rax, 0x017B
    push rax
; 1815: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 1816: print
    pop rax
    call print_rax
; 1817: PUSHI imm16
    mov rax, 0x017C
    push rax
; 181A: PUSHI imm16
    mov rax, 0x0095
    push rax
; 181D: PUSHI imm16
    mov rax, 0x00CA
    push rax
; 1820: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 1821: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 1822: PUSHI imm16
    mov rax, 0x017C
    push rax
; 1825: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 1826: print
    pop rax
    call print_rax
; 1827: PUSHI imm16
    mov rax, 0x017D
    push rax
; 182A: PUSHI imm16
    mov rax, 0x00D1
    push rax
; 182D: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 1830: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 1831: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 1832: PUSHI imm16
    mov rax, 0x017D
    push rax
; 1835: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 1836: print
    pop rax
    call print_rax
; 1837: PUSHI imm16
    mov rax, 0x017E
    push rax
; 183A: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 183D: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 1840: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 1841: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 1842: PUSHI imm16
    mov rax, 0x017E
    push rax
; 1845: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 1846: print
    pop rax
    call print_rax
; 1847: PUSHI imm16
    mov rax, 0x017F
    push rax
; 184A: PUSHI imm16
    mov rax, 0x008D
    push rax
; 184D: PUSHI imm16
    mov rax, 0x00AD
    push rax
; 1850: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 1851: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 1852: PUSHI imm16
    mov rax, 0x017F
    push rax
; 1855: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 1856: print
    pop rax
    call print_rax
; 1857: PUSHI imm16
    mov rax, 0x0180
    push rax
; 185A: PUSHI imm16
    mov rax, 0x0096
    push rax
; 185D: PUSHI imm16
    mov rax, 0x00CA
    push rax
; 1860: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 1861: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 1862: PUSHI imm16
    mov rax, 0x0180
    push rax
; 1865: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 1866: print
    pop rax
    call print_rax
; 1867: PUSHI imm16
    mov rax, 0x0181
    push rax
; 186A: PUSHI imm16
    mov rax, 0x00A1
    push rax
; 186D: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 1870: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 1871: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 1872: PUSHI imm16
    mov rax, 0x0181
    push rax
; 1875: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 1876: print
    pop rax
    call print_rax
; 1877: PUSHI imm16
    mov rax, 0x0182
    push rax
; 187A: PUSHI imm16
    mov rax, 0x00F1
    push rax
; 187D: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 1880: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 1881: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 1882: PUSHI imm16
    mov rax, 0x0182
    push rax
; 1885: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 1886: print
    pop rax
    call print_rax
; 1887: PUSHI imm16
    mov rax, 0x0183
    push rax
; 188A: PUSHI imm16
    mov rax, 0x008D
    push rax
; 188D: PUSHI imm16
    mov rax, 0x00AD
    push rax
; 1890: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 1891: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 1892: PUSHI imm16
    mov rax, 0x0183
    push rax
; 1895: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 1896: print
    pop rax
    call print_rax
; 1897: PUSHI imm16
    mov rax, 0x0184
    push rax
; 189A: PUSHI imm16
    mov rax, 0x00EA
    push rax
; 189D: PUSHI imm16
    mov rax, 0x00CA
    push rax
; 18A0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 18A1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 18A2: PUSHI imm16
    mov rax, 0x0184
    push rax
; 18A5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 18A6: print
    pop rax
    call print_rax
; 18A7: PUSHI imm16
    mov rax, 0x0185
    push rax
; 18AA: PUSHI imm16
    mov rax, 0x00A2
    push rax
; 18AD: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 18B0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 18B1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 18B2: PUSHI imm16
    mov rax, 0x0185
    push rax
; 18B5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 18B6: print
    pop rax
    call print_rax
; 18B7: PUSHI imm16
    mov rax, 0x0186
    push rax
; 18BA: PUSHI imm16
    mov rax, 0x0081
    push rax
; 18BD: PUSHI imm16
    mov rax, 0x00DE
    push rax
; 18C0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 18C1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 18C2: PUSHI imm16
    mov rax, 0x0186
    push rax
; 18C5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 18C6: print
    pop rax
    call print_rax
; 18C7: PUSHI imm16
    mov rax, 0x0187
    push rax
; 18CA: PUSHI imm16
    mov rax, 0x0082
    push rax
; 18CD: PUSHI imm16
    mov rax, 0x00AD
    push rax
; 18D0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 18D1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 18D2: PUSHI imm16
    mov rax, 0x0187
    push rax
; 18D5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 18D6: print
    pop rax
    call print_rax
; 18D7: PUSHI imm16
    mov rax, 0x0187
    push rax
; 18DA: PUSHI imm16
    mov rax, 0x00C7
    push rax
; 18DD: PUSHI imm16
    mov rax, 0x00CA
    push rax
; 18E0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 18E1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 18E2: PUSHI imm16
    mov rax, 0x0187
    push rax
; 18E5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 18E6: print
    pop rax
    call print_rax
; 18E7: PUSHI imm16
    mov rax, 0x0187
    push rax
; 18EA: PUSHI imm16
    mov rax, 0x00F4
    push rax
; 18ED: PUSHI imm16
    mov rax, 0x00FE
    push rax
; 18F0: xor
    pop rbx
    pop rax
    xor rax, rbx
    push rax
; 18F1: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 18F2: PUSHI imm16
    mov rax, 0x0187
    push rax
; 18F5: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 18F6: print
    pop rax
    call print_rax
; 18F7: PUSHI imm16
label_18F7:
    mov rax, 0x0019
    push rax
; 18FA: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 18FB: POP_RES2
    pop rax
    mov [check], rax
; 18FC: DONE
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