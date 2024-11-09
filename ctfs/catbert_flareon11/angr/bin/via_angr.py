import angr
import claripy
import sys
import argparse

# Parse command-line arguments
parser = argparse.ArgumentParser(description='Solve the bytecode challenge.')
parser.add_argument('--alpha', action='store_true', help='Constrain bytes to be printable characters.')
args = parser.parse_args()

# Path to your binary
binary_path = './bytecode2_angr.exe'

# Load the binary
project = angr.Project(binary_path, auto_load_libs=False)

# Indices to make symbolic (respecting the given order)
indices = [5, 4, 12, 11, 19, 18, 26, 25, 33, 32, 40, 39, 47, 46, 54, 53]

# Addresses
main_address = 0x140001000       # Entrypoint of the binary
bytecode_address = 0x140003000   # Address of the 'bytecode' array
success_address = 0x14000101F    # Address indicating success
fail_address = 0x140001033       # Address indicating failure

# Create an initial state starting at 'main' with zero-filled unconstrained registers
initial_state = project.factory.blank_state(
    addr=main_address,
    add_options={angr.options.ZERO_FILL_UNCONSTRAINED_REGISTERS}
)

# Make the bytes at specified indices symbolic and apply constraints if '--alpha' is passed
byte_vars = {}
for idx in indices:
    var = claripy.BVS(f'byte_{idx}', 8)
    byte_vars[idx] = var
    initial_state.memory.store(bytecode_address + idx, var)
    if args.alpha:
        # Constrain the byte to be a printable ASCII character
        initial_state.solver.add(var >= 0x20)  # Space
        initial_state.solver.add(var <= 0x7e)  # '~'

# Define the simulation manager
simgr = project.factory.simulation_manager(initial_state)

# Define the success and failure conditions
def is_successful(state):
    return state.addr == success_address

def should_abort(state):
    return state.addr == fail_address

# Explore the binary to find a state where we reach the success address
simgr.explore(find=is_successful, avoid=should_abort)

# If a solution is found, extract the values
if simgr.found:
    found_state = simgr.found[0]
    solution = {}
    solution_string = ''
    for idx in indices:
        byte_var = byte_vars[idx]
        value = found_state.solver.eval(byte_var)
        solution[idx] = value
        solution_string += chr(value)
    print("Solution found:")
    for idx in indices:
        value = solution[idx]
        print(f'Index {idx}: {value:#04x}')
    print(f'Solution string: {solution_string}')
else:
    print("No solution found.")
