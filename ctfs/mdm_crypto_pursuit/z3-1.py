"""
Write Python Z3 Solver code to figure out how to return TRUE from this function:

_BOOL8 __fastcall check2(unsigned __int8 *str)
{
  int ok; // [rsp+14h] [rbp-4h]

  ok = (*str + 0xF) == 0x62;
  if ( (str[1] ^ 0x3B) == 0x5E )
    ++ok;
  if ( (str[2] + 0x39) == 0x9A )
    ++ok;
  if ( (str[3] ^ 0x38) == 0x4A )
    ++ok;
  if ( (str[4] ^ 0x74) == 0x17 )
    ++ok;
  if ( (str[5] ^ 0x3B) == 0x53 )
    ++ok;
  if ( (str[6] + 3) == 0x23 )
    ++ok;
  if ( (str[7] - 0x43) == 0x31 )
    ++ok;
  if ( (str[8] + 9) == 0x71 )
    ++ok;
  if ( (str[9] + 0xC) == 0x71 )
    ++ok;
  if ( (str[0xA] + 0x5A) == 0x7A )
    ++ok;
  if ( (str[0xB] - 0x10) == 0x52 )
    ++ok;
  if ( (str[0xC] + 0x7B) == 0xEA )
    ++ok;
  if ( (str[0xD] ^ 0x29) == 0x46 )
    ++ok;
  if ( (str[0xE] - 0x7F) == 0xEC )
    ++ok;
  if ( (str[0xF] ^ 2) == 0x22 )
    ++ok;
  if ( (str[0x10] + 0x54) == 0xBA )
    ++ok;
  if ( (str[0x11] ^ 0xB0) == 0xDF )
    ++ok;
  if ( (str[0x12] + 0x66) == 0xD8 )
    ++ok;
  if ( (str[0x13] - 0x6D) == 0xB3 )
    ++ok;
  if ( (str[0x14] ^ 0x20) == 0x43 )
    ++ok;
  if ( (str[0x15] + 0x6F) == 0xDB )
    ++ok;
  if ( (str[0x16] + 0x18) == 0x8D )
    ++ok;
  if ( (str[0x17] + 9) == 0x6E )
    ++ok;
  if ( (str[0x18] + 0x30) == 0xA3 )
    ++ok;
  if ( (str[0x19] - 0x13) == 0xED )
    ++ok;
  if ( (str[0x1A] - 0x3D) == 0xC3 )
    ++ok;
  if ( (str[0x1B] - 0x6D) == 0x93 )
    ++ok;
  if ( (str[0x1C] - 0x76) == 0x8A )
    ++ok;
  if ( (str[0x1D] + 0x7E) == 0x7E )
    ++ok;
  if ( (str[0x1E] + 0x2A) == 0x2A )
    ++ok;
  if ( (str[0x1F] ^ 0x5C) == 0x5C )
    ++ok;
  return ok == 32;
}

Make sure you emit all the constraints in the function
"""
from z3 import *

# Create a new solver
s = Solver()

# Create an array of 8-bit BitVecs for each character in the string
str_chars = [BitVec(f'str[{i}]', 8) for i in range(32)]

# Define the constraints based on the given function
constraints = [
    str_chars[0] + 0xF == 0x62,
    str_chars[1] ^ 0x3B == 0x5E,
    str_chars[2] + 0x39 == 0x9A,
    str_chars[3] ^ 0x38 == 0x4A,
    str_chars[4] ^ 0x74 == 0x17,
    str_chars[5] ^ 0x3B == 0x53,
    str_chars[6] + 3 == 0x23,
    str_chars[7] - 0x43 == 0x31,
    str_chars[8] + 9 == 0x71,
    str_chars[9] + 0xC == 0x71,
    str_chars[10] + 0x5A == 0x7A,
    str_chars[11] - 0x10 == 0x52,
    str_chars[12] + 0x7B == 0xEA,
    str_chars[13] ^ 0x29 == 0x46,
    str_chars[14] - 0x7F == 0xEC,
    str_chars[15] ^ 2 == 0x22,
    str_chars[16] + 0x54 == 0xBA,
    str_chars[17] ^ 0xB0 == 0xDF,
    str_chars[18] + 0x66 == 0xD8,
    str_chars[19] - 0x6D == 0xB3,
    str_chars[20] ^ 0x20 == 0x43,
    str_chars[21] + 0x6F == 0xDB,
    str_chars[22] + 0x18 == 0x8D,
    str_chars[23] + 9 == 0x6E,
    str_chars[24] + 0x30 == 0xA3,
    str_chars[25] - 0x13 == 0xED,
    str_chars[26] - 0x3D == 0xC3,
    str_chars[27] - 0x6D == 0x93,
    str_chars[28] - 0x76 == 0x8A,
    str_chars[29] + 0x7E == 0x7E,
    str_chars[30] + 0x2A == 0x2A,
    str_chars[31] ^ 0x5C == 0x5C,
]

# Add all constraints to the solver
s.add(constraints)

# Check if the constraints are satisfiable
if s.check() == sat:
    # If satisfiable, get the model and extract the solution
    m = s.model()
    solution = [m.evaluate(str_chars[i]).as_long() for i in range(32)]
    # Print out the solution as a string
    solution_str = ''.join(chr(solution[i]) for i in range(32))
    print("Solution as string:", solution_str)
else:
    print("No solution found")
