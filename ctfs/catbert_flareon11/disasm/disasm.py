import argparse
import os
from vmspecs import specs as opcodes

# Function to parse bytecode from a file
def parse_bytecode(filename):
    with open(filename, "rb") as file:
        sig = int.from_bytes(file.read(4), "little")
        if sig != 0x42543443:  # 'BT4C'
            raise ValueError("Invalid file signature")

        data_size = int.from_bytes(file.read(4), "little")
        pos_bytecode = int.from_bytes(file.read(4), "little")
        bytecode_size = int.from_bytes(file.read(4), "little")

        file.seek(pos_bytecode)
        bytecode = bytearray(file.read(bytecode_size))

    return bytecode

# Function to parse arguments
def parse_arguments(byte_stream, pc, opcode_info):
    args = {}
    for arg_name in opcode_info['arguments']:
        if arg_name == 'imm16':
            if pc + 1 >= len(byte_stream):
                raise ValueError(f"Not enough bytes for imm16 at position {pc}")
            arg_bytes = byte_stream[pc:pc+2]
            imm16 = int.from_bytes(arg_bytes, byteorder='big')
            pc += 2
            args['imm16'] = imm16
        else:
            raise ValueError(f"Unknown argument type: {arg_name}")
    return pc, args

def disassemble(byte_stream):
    pc = 0  # Program counter
    instructions = []

    while pc < len(byte_stream):
        old_pc = pc
        opcode_byte = byte_stream[pc]
        pc += 1  # Move past the opcode byte

        if opcode_byte not in opcodes:
            raise ValueError(f"Unknown opcode: {opcode_byte} at position {pc-1}")

        opcode_info = opcodes[opcode_byte]
        mnemonic = opcode_info['name']
        args = []

        # Parse arguments
        pc, args = parse_arguments(byte_stream, pc, opcode_info)

        # Build the disassembled instruction
        if args:
            instruction = f"{mnemonic} {' '.join(args)}"
        else:
            instruction = mnemonic

        print(f"{old_pc:04X}: {instruction} ; {opcode_info['description']}")
        instructions.append(instruction)

    return instructions

def generate_assembly(byte_stream):
    pc = 0  # Program counter
    address_labels = {}  # Maps program counters to labels for jumps

    # Set of opcodes that are jump instructions
    jump_opcodes = {
        opcode for opcode, info in opcodes.items() if info['name'].startswith('jmp')
    }

    # First pass: Identify all jump targets to create labels
    pc_temp = 0
    while pc_temp < len(byte_stream):
        opcode_byte = byte_stream[pc_temp]
        pc_temp += 1

        if opcode_byte not in opcodes:
            raise ValueError(f"Unknown opcode: {opcode_byte} at position {pc_temp-1}")

        opcode_info = opcodes[opcode_byte]

        # Parse arguments
        pc_temp, args = parse_arguments(byte_stream, pc_temp, opcode_info)

        # If the opcode is a jump instruction, record the target address
        if opcode_byte in jump_opcodes and 'imm16' in args:
            target_address = args['imm16']
            if target_address not in address_labels:
                address_labels[target_address] = f"label_{target_address:04X}"

    # Second pass: Generate assembly code
    pc = 0 
    assembly_lines = []
    while pc < len(byte_stream):
        old_pc = pc
        opcode_byte = byte_stream[pc]
        pc += 1  # Move past the opcode byte

        if opcode_byte not in opcodes:
            raise ValueError(f"Unknown opcode: {opcode_byte} at position {pc-1}")

        opcode_info = opcodes[opcode_byte]
        assembly_instructions = opcode_info['assembly']
        placeholders = {}

        # Parse arguments
        pc, args = parse_arguments(byte_stream, pc, opcode_info)

        # Handle jump instructions
        if opcode_byte in jump_opcodes and 'imm16' in args:
            target_address = args['imm16']
            label = address_labels.get(target_address, f"label_{target_address:04X}")
            placeholders['imm16'] = label
        else:
            # Regular imm16 argument
            for arg_name, arg_value in args.items():
                placeholders[arg_name] = f"0x{arg_value:04X}"

        # Build the disassembled instruction
        mnemonic = opcode_info['name']
        if args:
            instruction = f"{mnemonic} {' '.join(args)}"
        else:
            instruction = mnemonic

        # Emit original PC as a comment
        assembly_lines.append(f"; {old_pc:04X}: {instruction}")

        # Check if current position has a label
        if lbl := address_labels.get(old_pc):
            assembly_lines.append(f"{lbl}:")

        # Replace placeholders in assembly instructions
        for instr in assembly_instructions:
            # Replace placeholders
            for placeholder, value in placeholders.items():
                instr = instr.replace(placeholder, value)
            instr = instr.split(';')[0].strip()
            assembly_lines.append(f"    {instr}")
            
    # Append the main label for program start
    assembly_header = [
        "[bits 64]"
    ]

    assembly_code = [        
        "section .text",
        "global _start",
        "_start:"
    ] + assembly_lines

    # Append the data section if needed
    data_section = [
        "section .data",
        "memory: times 65536 dq 0",
        "check: dq 0"
    ]

    # Append any additional labels or functions (e.g., print_rax)
    extra_code = [
        "label_ret:",
        "    ; Handle VM return",
        "    ret",
        "",
        "print_rax:",
        "    ; Implement the print function",
        "    ret",
        "",
    ]

    # Combine all parts
    full_assembly = '\n'.join(assembly_header + assembly_code + extra_code + data_section)
    return full_assembly


def main():
    parser = argparse.ArgumentParser(description="Disassemble or decompile bytecode.")
    parser.add_argument('--disasm', action='store_true', help="Display the disassembly")
    parser.add_argument('--disasmx64', action='store_true', help="Generate x64 assembly code")
    parser.add_argument('--output', '-o', type=str, help="Output file (default: stdout)")
    parser.add_argument('--input', '-i', type=str, required=True, help="Input file to read bytecode from")
    args = parser.parse_args()

    bytecode = parse_bytecode(args.input)

    output = []

    if args.disasm:
        instructions = disassemble(bytecode)
        if not args.output:
            output.append("Disassembly:")
        output.extend(instructions)

    if args.disasmx64:
        assembly_code = generate_assembly(bytecode)
        if not args.output:
            output.append("Assembly Code:")
        output.append(assembly_code)

    output_text = '\n'.join(output)

    if args.output:
        with open(args.output, 'w') as f:
            f.write(output_text)
    else:
        print(output_text)

if __name__ == '__main__':
    main()
