from z3 import *

# Define password as a list of 24 8-bit integers
c_pass = [BitVec('c_pass[%d]' % i, 8) for i in range(24)]

# Create a Z3 solver instance
s = Solver()

# Allowed characters: A-Z, a-z, 0-9 and punctuation characters
allowed_chars = \
    list(range(ord('A'), ord('Z')+1)) + \
    list(range(ord('a'), ord('z')+1)) + \
    list(range(ord('0'), ord('9')+1)) + \
    [ord(ch) for ch in '+-*/%&|^!~<>=.,?:;()[\]{}_#@$,`\0']

for byte in c_pass:
    # Add individual constraints for each byte
    s.add(Or([byte == ch for ch in allowed_chars]))

# Convert list of bytes to words and qwords
def to_words(c_pass):
    return [Concat(c_pass[i+1], c_pass[i]) for i in range(0, 24, 2)]

def to_dwords(c_pass):
    return [Concat(c_pass[i+3], c_pass[i+2], c_pass[i+1], c_pass[i]) for i in range(0, 24, 4)]

def to_qwords(c_pass):
    return [Concat(c_pass[i+7], c_pass[i+6], c_pass[i+5], c_pass[i+4], c_pass[i+3], c_pass[i+2], c_pass[i+1], c_pass[i]) for i in range(0, 24, 8)]

words  = to_words(c_pass)
dwords = to_dwords(c_pass)
qwords = to_qwords(c_pass)

# Constraints from the problem
s.add(words[8] + words[11] - words[4] - words[7] == BitVecVal(7380, 16))
s.add(words[10] + words[3] + words[1] - words[5] == BitVecVal(55449, 16))
s.add(qwords[2] ^ qwords[0] == BitVecVal(721740573498481522, 64))
s.add(dwords[5] + 2*dwords[0] - 4*dwords[2] - (dwords[4] >> 3) - (dwords[1] >> 3) == BitVecVal(78988956, 32))
s.add(qwords[1] ^ qwords[2] == BitVecVal(2530753753466602581, 64))

# Iterate over possible solutions
while s.check() == sat:
    m = s.model()

    # Print the result as a string
    res = ''.join([chr(m.evaluate(c_pass[i]).as_long()) for i in range(24)])
    print(f'Password [[{res}]]')

    # Ask to iterate for the next possible solution
    if input('Find another solution? (yes/no)') == 'no':
        break

    # Add constraint to exclude current solution
    s.add(Or([c != m.evaluate(c) for c in c_pass]))

