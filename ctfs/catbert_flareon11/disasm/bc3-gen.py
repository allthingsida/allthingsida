import itertools

# Constants from the C program
MAGIC1 = 0x7C8DF4CB
MAGIC2 = 0x8B681D82
MAGIC3 = 0x0F910374
MAGIC4 = 0x31F009D2
MOD_ADLER = 65521

#   djb2_hash = 5381LL;
#   // 0 -> 3
#   while ( i < 4 )
#   {
#     _ch = (unsigned __int64)lu1 >> (8 * (unsigned __int8)i);
#     _ch = (unsigned __int8)_ch;
#     _temp = djb2_hash;
#     djb2_hash = _ch + _temp + 32 * djb2_hash;
#     ++i;
#   }
#   djb2_hash &= f_0xffffffff;

# DJB2 hash function
def djb2_hash(data):
    hash_value = 5381
    for byte in data:
        hash_value = (hash_value * 32 + byte + hash_value) & 0xFFFFFFFF
    return hash_value

# Rotational hash function
def rotate_right(value, shift, bits=32):
    return ((value >> shift) | (value << (bits - shift))) & ((1 << bits) - 1)

def rotational_hash(data):
    hash_value = 0
    for byte in data:
        hash_value = rotate_right(hash_value, 13, 32)
        hash_value = (hash_value + byte) & 0xFFFFFFFF
    return hash_value

# Adler-32 checksum
def adler32(data):
    a = 1
    b = 0
    for byte in data:
        a = (a + byte) % MOD_ADLER
        b = (b + a) % MOD_ADLER
    return (b << 16) | a

# FNV-1 hash
def fnv1_32(data):
    FNV_OFFSET_BASIS = 0x811C9DC5
    FNV_PRIME = 0x01000193
    hash_value = FNV_OFFSET_BASIS
    for byte in data:
        hash_value = (hash_value * FNV_PRIME) & 0xFFFFFFFF
        hash_value ^= byte
    return hash_value

# Brute force search
def brute_force_password():
    charset = [ord(c) for c in "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789_!@#$%^&*()"]

    # Find valid lu1_1 parts (first 4 bytes)
    valid_lu1_1 = []
    for lu1 in itertools.product(charset, repeat=4):
        if djb2_hash(lu1) == MAGIC1:
            valid_lu1_1.append(lu1)

    # Find valid lu1_2 parts (last 4 bytes)
    valid_lu1_2 = [] 
    for lu1 in itertools.product(charset, repeat=4):
        if rotational_hash(lu1) == MAGIC2:
            valid_lu1_2.append(lu1)
            break

    # Find valid lu2 parts (last 8 bytes)
    # valid_lu_2 = []
    # for lu2 in itertools.product(charset, repeat=8):
    #     if adler32(lu2) == MAGIC3:
    #         valid_lu_2.append(lu2)
    #         break
    # NOTE: impossible to bruteforce adler32
    # A Google search on MAGIC3 reveals that it is the Adler-32 checksum of the string "password"
    # There are many other 8 byte strings that have the same Adler-32 checksum (For example 'atixzzha')
    valid_lu_2 = [ tuple([ord(c) for c in "password"]) ]

    # Combine valid parts and check final condition
    for lu1_1 in valid_lu1_1:
        for lu1_2 in valid_lu1_2:
            for lu2 in valid_lu_2:
                # Password length is 16
                password = lu1_1 + lu1_2 + lu2
                if fnv1_32(password) == MAGIC4:
                    return ''.join(chr(c) for c in password)

    return None

def test1():
    # Combine valid parts and check final condition
    valid_lu1_1 = [ [ord(x) for x in 'VerY'] ]
    valid_lu1_2 = [ [ord(x) for x in 'DumB'] ]
    valid_lu_2 = [ [ord(x) for x in 'password'] ]
    for lu1_1 in valid_lu1_1:
        for lu1_2 in valid_lu1_2:
            for lu2 in valid_lu_2:
                password = lu1_1 + lu1_2 + lu2
                if fnv1_32(password) == MAGIC4:
                    return ''.join(chr(c) for c in password)

if __name__ == "__main__":
    # result = adler32([ord(c) for c in "atixzzha"])
    # print("%x" % result)
    #print(test1())

    result = brute_force_password()
    if result:
        print(f"Password found: {result}")
    else:
        print("Password not found.")
