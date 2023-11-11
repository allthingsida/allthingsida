def base32_encode(data: bytes, table: str) -> str:
    if len(table) != 32:
        raise ValueError("Table must contain exactly 32 characters")

    encoded = []
    bits = 0
    bit_count = 0

    for byte in data:
        bits = (bits << 8) | byte
        bit_count += 8

        while bit_count >= 5:
            index = (bits >> (bit_count - 5)) & 0x1F
            encoded.append(table[index])
            bit_count -= 5

    if bit_count > 0:
        encoded.append(table[(bits << (5 - bit_count)) & 0x1F])

    return ''.join(encoded)


def base32_decode(data: str, table: str) -> bytes:
    if len(table) != 32:
        raise ValueError("Table must contain exactly 32 characters")

    decoded = bytearray()
    bits = 0
    bit_count = 0

    for char in data:
        if char not in table:
            raise ValueError(f"Character {char} not in table")
        
        index = table.index(char)
        bits = (bits << 5) | index
        bit_count += 5

        while bit_count >= 8:
            decoded.append((bits >> (bit_count - 8)) & 0xFF)
            bit_count -= 8

    return bytes(decoded)

# Test
table = "Q4T23aSwLnUgHPOIfyKBJVM5+DXZC/Re"
sample_data = b"Hello, World!"
encoded = base32_encode(sample_data, table)
decoded = base32_decode(encoded, table)
#print(encoded)

decoded = base32_decode('OIZC4eMC/UnTPfDDMMaHeQXUHMPZy4LfSgg/HnB5SXVOIyKOBIHMe45B2KBCe5T/HRfRHZ4SKJe3eLJHeMe5IM5QQJ', table)
print(decoded)
