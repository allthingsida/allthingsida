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
    mov rax, 0xA059
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
    mov rax, 0x6A4D
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
    mov rax, 0xDE23
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
    mov rax, 0x24C0
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
    mov rax, 0x64E2
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
    mov rax, 0x59B1
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
    mov rax, 0x7207
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
    mov rax, 0x7F5C
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
    mov rax, 0x0015
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
    mov rax, 0x0016
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
    mov rax, 0x0017
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
    mov rax, 0x001C
    push rax
; 011B: PUSHI imm16
    mov rax, 0x43FD
    push rax
; 011E: PUSHI imm16
    mov rax, 0x0003
    push rax
; 0121: PUSHI imm16
    mov rax, 0x0010
    push rax
; 0124: shl
    pop rbx
    pop rax
    mov cl, bl
    shl rax, cl
    push rax
; 0125: or
    pop rbx
    pop rax
    or rax, rbx
    push rax
; 0126: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0127: PUSHI imm16
    mov rax, 0x001D
    push rax
; 012A: PUSHI imm16
    mov rax, 0x9EC3
    push rax
; 012D: PUSHI imm16
    mov rax, 0x0026
    push rax
; 0130: PUSHI imm16
    mov rax, 0x0010
    push rax
; 0133: shl
    pop rbx
    pop rax
    mov cl, bl
    shl rax, cl
    push rax
; 0134: or
    pop rbx
    pop rax
    or rax, rbx
    push rax
; 0135: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0136: PUSHI imm16
    mov rax, 0x001B
    push rax
; 0139: PUSHI imm16
    mov rax, 0x0001
    push rax
; 013C: PUSHI imm16
    mov rax, 0x001F
    push rax
; 013F: shl
    pop rbx
    pop rax
    mov cl, bl
    shl rax, cl
    push rax
; 0140: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0141: PUSHI imm16
    mov rax, 0x001E
    push rax
; 0144: PUSHI imm16
    mov rax, 0x1337
    push rax
; 0147: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0148: PUSHI imm16
label_0148:
    mov rax, 0x0015
    push rax
; 014B: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 014C: PUSHI imm16
    mov rax, 0x0001
    push rax
; 014F: EQUAL
    pop rbx
    pop rax
    cmp rax, rbx
    setz al
    movzx rax, al
    push rax
; 0150: JUMP_IF_FALSE imm16
    pop rax
    test rax, rax
    jz label_0262
; 0153: PUSHI imm16
    mov rax, 0x0014
    push rax
; 0156: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0157: PUSHI imm16
    mov rax, 0x0008
    push rax
; 015A: LESS
    pop rbx
    pop rax
    cmp rax, rbx
    setl al
    movzx rax, al
    push rax
; 015B: JUMP_IF_FALSE imm16
    pop rax
    test rax, rax
    jz label_0180
; 015E: PUSHI imm16
    mov rax, 0x0018
    push rax
; 0161: PUSHI imm16
    mov rax, 0x0008
    push rax
; 0164: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0165: PUSHI imm16
    mov rax, 0x0008
    push rax
; 0168: PUSHI imm16
    mov rax, 0x0014
    push rax
; 016B: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 016C: mul
    pop rbx
    pop rax
    mul rbx
    push rax
; 016D: shr
    pop rbx
    pop rax
    mov cl, bl
    shr rax, cl
    push rax
; 016E: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 016F: PUSHI imm16
    mov rax, 0x0019
    push rax
; 0172: PUSHI imm16
    mov rax, 0x0012
    push rax
; 0175: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0176: PUSHI imm16
    mov rax, 0x0008
    push rax
; 0179: PUSHI imm16
    mov rax, 0x0014
    push rax
; 017C: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 017D: mul
    pop rbx
    pop rax
    mul rbx
    push rax
; 017E: shr
    pop rbx
    pop rax
    mov cl, bl
    shr rax, cl
    push rax
; 017F: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0180: PUSHI imm16
label_0180:
    mov rax, 0x0014
    push rax
; 0183: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0184: PUSHI imm16
    mov rax, 0x0007
    push rax
; 0187: GREATER
    pop rbx
    pop rax
    cmp rax, rbx
    setg al
    movzx rax, al
    push rax
; 0188: JUMP_IF_FALSE imm16
    pop rax
    test rax, rax
    jz label_01AD
; 018B: PUSHI imm16
    mov rax, 0x0018
    push rax
; 018E: PUSHI imm16
    mov rax, 0x0009
    push rax
; 0191: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0192: PUSHI imm16
    mov rax, 0x0008
    push rax
; 0195: PUSHI imm16
    mov rax, 0x0014
    push rax
; 0198: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0199: mul
    pop rbx
    pop rax
    mul rbx
    push rax
; 019A: shr
    pop rbx
    pop rax
    mov cl, bl
    shr rax, cl
    push rax
; 019B: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 019C: PUSHI imm16
    mov rax, 0x0019
    push rax
; 019F: PUSHI imm16
    mov rax, 0x0013
    push rax
; 01A2: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 01A3: PUSHI imm16
    mov rax, 0x0008
    push rax
; 01A6: PUSHI imm16
    mov rax, 0x0014
    push rax
; 01A9: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 01AA: mul
    pop rbx
    pop rax
    mul rbx
    push rax
; 01AB: shr
    pop rbx
    pop rax
    mov cl, bl
    shr rax, cl
    push rax
; 01AC: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 01AD: PUSHI imm16
label_01AD:
    mov rax, 0x0018
    push rax
; 01B0: PUSHI imm16
    mov rax, 0x0018
    push rax
; 01B3: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 01B4: PUSHI imm16
    mov rax, 0x00FF
    push rax
; 01B7: and
    pop rbx
    pop rax
    and rax, rbx
    push rax
; 01B8: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 01B9: PUSHI imm16
    mov rax, 0x0019
    push rax
; 01BC: PUSHI imm16
    mov rax, 0x0019
    push rax
; 01BF: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 01C0: PUSHI imm16
    mov rax, 0x00FF
    push rax
; 01C3: and
    pop rbx
    pop rax
    and rax, rbx
    push rax
; 01C4: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 01C5: PUSHI imm16
    mov rax, 0x001E
    push rax
; 01C8: PUSHI imm16
    mov rax, 0x001C
    push rax
; 01CB: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 01CC: PUSHI imm16
    mov rax, 0x001E
    push rax
; 01CF: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 01D0: mul
    pop rbx
    pop rax
    mul rbx
    push rax
; 01D1: PUSHI imm16
    mov rax, 0x001D
    push rax
; 01D4: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 01D5: add
    pop rbx
    pop rax
    add rax, rbx
    push rax
; 01D6: PUSHI imm16
    mov rax, 0x001B
    push rax
; 01D9: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 01DA: mod
    pop rbx
    pop rax
    xor rdx, rdx
    div rbx
    push rdx
; 01DB: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 01DC: PUSHI imm16
    mov rax, 0x001A
    push rax
; 01DF: PUSHI imm16
    mov rax, 0x001E
    push rax
; 01E2: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 01E3: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 01E4: PUSHI imm16
    mov rax, 0x001A
    push rax
; 01E7: PUSHI imm16
    mov rax, 0x001E
    push rax
; 01EA: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 01EB: PUSHI imm16
    mov rax, 0x0008
    push rax
; 01EE: PUSHI imm16
    mov rax, 0x0014
    push rax
; 01F1: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 01F2: PUSHI imm16
    mov rax, 0x0004
    push rax
; 01F5: mod
    pop rbx
    pop rax
    xor rdx, rdx
    div rbx
    push rdx
; 01F6: mul
    pop rbx
    pop rax
    mul rbx
    push rax
; 01F7: shr
    pop rbx
    pop rax
    mov cl, bl
    shr rax, cl
    push rax
; 01F8: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 01F9: PUSHI imm16
    mov rax, 0x001F
    push rax
; 01FC: PUSHI imm16
    mov rax, 0x001A
    push rax
; 01FF: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0200: PUSHI imm16
    mov rax, 0x00FF
    push rax
; 0203: and
    pop rbx
    pop rax
    and rax, rbx
    push rax
; 0204: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0205: PUSHI imm16
    mov rax, 0x0020
    push rax
; 0208: PUSHI imm16
    mov rax, 0x0018
    push rax
; 020B: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 020C: PUSHI imm16
    mov rax, 0x001F
    push rax
; 020F: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
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
    mov rax, 0x0020
    push rax
; 0215: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0216: PUSHI imm16
    mov rax, 0x0019
    push rax
; 0219: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 021A: EQUAL
    pop rbx
    pop rax
    cmp rax, rbx
    setz al
    movzx rax, al
    push rax
; 021B: PUSHI imm16
    mov rax, 0x0000
    push rax
; 021E: EQUAL
    pop rbx
    pop rax
    cmp rax, rbx
    setz al
    movzx rax, al
    push rax
; 021F: JUMP_IF_FALSE imm16
    pop rax
    test rax, rax
    jz label_0229
; 0222: PUSHI imm16
    mov rax, 0x0015
    push rax
; 0225: PUSHI imm16
    mov rax, 0x0000
    push rax
; 0228: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0229: PUSHI imm16
label_0229:
    mov rax, 0x0020
    push rax
; 022C: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 022D: PUSHI imm16
    mov rax, 0x0019
    push rax
; 0230: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0231: EQUAL
    pop rbx
    pop rax
    cmp rax, rbx
    setz al
    movzx rax, al
    push rax
; 0232: JUMP_IF_FALSE imm16
    pop rax
    test rax, rax
    jz label_0241
; 0235: PUSHI imm16
    mov rax, 0x0016
    push rax
; 0238: PUSHI imm16
    mov rax, 0x0016
    push rax
; 023B: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 023C: PUSHI imm16
    mov rax, 0x0001
    push rax
; 023F: add
    pop rbx
    pop rax
    add rax, rbx
    push rax
; 0240: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0241: PUSHI imm16
label_0241:
    mov rax, 0x0014
    push rax
; 0244: PUSHI imm16
    mov rax, 0x0014
    push rax
; 0247: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0248: PUSHI imm16
    mov rax, 0x0001
    push rax
; 024B: add
    pop rbx
    pop rax
    add rax, rbx
    push rax
; 024C: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 024D: PUSHI imm16
    mov rax, 0x0014
    push rax
; 0250: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0251: PUSHI imm16
    mov rax, 0x000F
    push rax
; 0254: GREATER
    pop rbx
    pop rax
    cmp rax, rbx
    setg al
    movzx rax, al
    push rax
; 0255: JUMP_IF_FALSE imm16
    pop rax
    test rax, rax
    jz label_025F
; 0258: PUSHI imm16
    mov rax, 0x0015
    push rax
; 025B: PUSHI imm16
    mov rax, 0x0000
    push rax
; 025E: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 025F: JUMP imm16
label_025F:
    jmp label_0148
; 0262: PUSHI imm16
label_0262:
    mov rax, 0x0016
    push rax
; 0265: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0266: PUSHI imm16
    mov rax, 0x0010
    push rax
; 0269: EQUAL
    pop rbx
    pop rax
    cmp rax, rbx
    setz al
    movzx rax, al
    push rax
; 026A: JUMP_IF_FALSE imm16
    pop rax
    test rax, rax
    jz label_0274
; 026D: PUSHI imm16
    mov rax, 0x0017
    push rax
; 0270: PUSHI imm16
    mov rax, 0x0001
    push rax
; 0273: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 0274: PUSHI imm16
label_0274:
    mov rax, 0x0016
    push rax
; 0277: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 0278: PUSHI imm16
    mov rax, 0x0010
    push rax
; 027B: EQUAL
    pop rbx
    pop rax
    cmp rax, rbx
    setz al
    movzx rax, al
    push rax
; 027C: PUSHI imm16
    mov rax, 0x0000
    push rax
; 027F: EQUAL
    pop rbx
    pop rax
    cmp rax, rbx
    setz al
    movzx rax, al
    push rax
; 0280: JUMP_IF_FALSE imm16
    pop rax
    test rax, rax
    jz label_028A
; 0283: PUSHI imm16
    mov rax, 0x0017
    push rax
; 0286: PUSHI imm16
    mov rax, 0x0000
    push rax
; 0289: STORE
    pop rax
    pop rbx
    and rbx, 0xFFFF
    shl rbx, 3
    mov qword [memory + rbx], rax
; 028A: PUSHI imm16
label_028A:
    mov rax, 0x0017
    push rax
; 028D: LOAD
    pop rax
    shl rax, 3
    mov rax, qword [memory + rax]
    push rax
; 028E: POP_RES2
    pop rax
    mov [check], rax
; 028F: DONE
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