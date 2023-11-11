#include <cstdio>
#include <functional>
#include <stdio.h>
#include <memory>
#include <cinttypes>
#include <cstdlib>

template <bool as_unicode>
unsigned int hash_str(const char *str, unsigned int r1, unsigned int r2)
{
    unsigned int hash = 0;
    for (char c = *str; c; c = *++str)
    {
        if constexpr (as_unicode)
        {
            if (c >= 'a')
            {
                c -= 32;
            }
        }
        hash = _rotr(_rotr(hash, r1), r2) + c;
        if constexpr (as_unicode)
        {
            hash = _rotr(_rotr(hash, r1), r2);
        }
    }
    hash = _rotr(_rotr(hash, r1), r2);
    if constexpr (as_unicode)
    {
        hash = _rotr(_rotr(hash, r1), r2);
    }
    return hash;
}

unsigned int hash_api(const char *dllname, const char *funcname)
{
    return hash_str<true>(dllname, 10, 3) + hash_str<false>(funcname, 8, 5);
}

unsigned int __fastcall my_lcg_srand(unsigned int *new_state)
{
    *new_state = (0x41C64E6D * *new_state + 0x3039) & 0x7FFFFFFF;
    return *new_state;
}

int hash_test()
{
    const char *dllname;
    const char *funcname;

    dllname = "KERNEL32.DLL";
    funcname = "VirtualAlloc";
    // ws2_32_WSAStartup = 0x6B8029
    // 0x5BAE572D
    printf("%s.%s: %x\n", dllname, funcname, hash_api(dllname, funcname)); // 0xE553A458

    return -1;
}

void hash_seed_loop(int max = 0x7fffffff - 1)
{
    unsigned int seed = 0x10D4;

    for (int i = 0; i < max; ++i)
    {
        seed = my_lcg_srand(&seed);
        printf("%d/0x%x seed=%x!\n", i, i, seed);
    }
}

void decrypt_flag(const unsigned char *buffer, int sz, char *flag)
{
    auto LOBYTE = [](unsigned int x)
    { return (unsigned char)(x & 0xFF); };

    unsigned char tmp;
    for (int index = 0; index < sz; ++index)
    {
        tmp = buffer[index];
        tmp = (0x20 * tmp) | ((int)tmp >> 3);
        tmp -= 0x54;
        tmp ^= LOBYTE(index);
        tmp -= 4;
        tmp ^= LOBYTE(index);
        tmp = ~tmp;
        tmp -= LOBYTE(index);
        tmp = (0x20 * tmp) | ((int)tmp >> 3);
        tmp += LOBYTE(index);
        tmp = (tmp << 6) | ((int)tmp >> 2);
        tmp = ~tmp;
        tmp = (4 * tmp) | ((int)tmp >> 6);
        tmp += LOBYTE(index);
        tmp = ~tmp;
        tmp ^= 0xDu;
        tmp = -tmp;
        tmp += 0x7B;
        tmp ^= 0xBFu;
        tmp += 0x3D;
        tmp ^= LOBYTE(index);
        tmp += 0x60;
        tmp = (8 * tmp) | ((int)tmp >> 5);
        tmp += LOBYTE(index);
        tmp = ~tmp;
        tmp -= 0x18;
        tmp ^= LOBYTE(index);
        tmp -= LOBYTE(index);
        tmp ^= LOBYTE(index);
        tmp += 0xD;
        tmp ^= LOBYTE(index);
        tmp = (tmp << 6) | ((int)tmp >> 2);
        tmp ^= LOBYTE(index);
        tmp = -tmp;
        tmp += 0x3B;
        tmp = ~tmp;
        tmp = (2 * tmp) | ((int)tmp >> 7);
        ++tmp;
        tmp = (2 * tmp) | ((int)tmp >> 7);
        tmp -= LOBYTE(index);
        tmp ^= 0x8Fu;
        tmp += 0x70;
        tmp = ~tmp;
        tmp -= 0x36;
        tmp = (tmp << 6) | ((int)tmp >> 2);
        tmp = ~tmp;
        tmp -= 0x18;
        tmp = -tmp;
        tmp -= 0x56;
        tmp ^= LOBYTE(index);
        tmp = (4 * tmp) | ((int)tmp >> 6);
        tmp ^= LOBYTE(index);
        tmp += LOBYTE(index);
        tmp = ~tmp;
        tmp = (8 * tmp) | ((int)tmp >> 5);
        tmp ^= 0x40u;
        tmp += 0x66;
        tmp = ~tmp;
        tmp += LOBYTE(index);
        tmp ^= 0x16u;
        tmp += 0x7F;
        tmp = ~tmp;
        tmp ^= LOBYTE(index);
        tmp += 0x4E;
        tmp = (tmp << 6) | ((int)tmp >> 2);
        tmp = -tmp;
        tmp += 0x70;
        tmp = ~tmp;
        tmp -= 0x28;
        tmp = -tmp;
        tmp -= LOBYTE(index);
        tmp = -tmp;
        tmp = (tmp << 6) | ((int)tmp >> 2);
        tmp += 0x24;
        tmp = (2 * tmp) | ((int)tmp >> 7);
        tmp ^= 0x7Cu;
        tmp = (tmp << 6) | ((int)tmp >> 2);
        tmp = -tmp;
        tmp -= 0x6A;
        tmp ^= 0xA3u;
        tmp = ~tmp;
        tmp -= LOBYTE(index);
        tmp = (4 * tmp) | ((int)tmp >> 6);
        tmp ^= 0xCBu;
        tmp = ~tmp;
        tmp -= 0x1A;
        tmp ^= 0xB6u;
        tmp = ~tmp;
        tmp = -tmp;
        tmp += 0x4F;
        tmp = ~tmp;
        tmp = -tmp;
        tmp = ~tmp;
        tmp = -tmp;
        tmp ^= 0xE1u;
        tmp -= 0x71;
        tmp = (tmp << 7) | ((int)tmp >> 1);
        tmp += 0x5A;
        tmp = -tmp;
        tmp += LOBYTE(index);
        tmp ^= 0x78u;
        tmp = -tmp;
        tmp ^= 0xEBu;
        tmp = ~tmp;
        tmp ^= LOBYTE(index);
        tmp += LOBYTE(index);
        tmp ^= LOBYTE(index);
        tmp = -tmp;
        tmp ^= 0x25u;
        tmp = (2 * tmp) | ((int)tmp >> 7);
        tmp += LOBYTE(index);
        tmp ^= 0xC9u;
        tmp -= LOBYTE(index);
        tmp ^= LOBYTE(index);
        tmp += LOBYTE(index);
        tmp = (0x20 * tmp) | ((int)tmp >> 3);
        tmp = -tmp;
        tmp ^= LOBYTE(index);
        tmp -= 0x49;
        tmp = ~tmp;
        tmp -= 0x1E;
        tmp ^= LOBYTE(index);
        tmp = -tmp;
        tmp += LOBYTE(index);
        tmp = (8 * tmp) | ((int)tmp >> 5);
        tmp ^= 0x20u;
        tmp -= LOBYTE(index);
        tmp ^= 0x22u;
        tmp -= 0x58;
        tmp = -tmp;
        tmp ^= LOBYTE(index);
        tmp -= LOBYTE(index);
        tmp = (4 * tmp) | ((int)tmp >> 6);
        tmp = -tmp;
        tmp -= LOBYTE(index);
        tmp = ~tmp;
        tmp -= 0x1C;
        tmp = ~tmp;
        tmp ^= LOBYTE(index);
        tmp -= LOBYTE(index);
        tmp = ~tmp;
        tmp += LOBYTE(index);
        tmp ^= LOBYTE(index);
        tmp = ~tmp;
        tmp ^= 0xC2u;
        tmp -= LOBYTE(index);
        tmp = ~tmp;
        tmp += LOBYTE(index);
        tmp = ~tmp;
        tmp = -tmp;
        tmp = (2 * tmp) | ((int)tmp >> 7);

        flag[index] = tmp & 0xff;
    }
}

int main(int argc, char *argv[])
{
    // P0w3rfu1_y0u_h4v3_b3c0m3_my_y0ung_flareaw4n@flare-on.com
    static unsigned char data[57] = 
    {
        0x7f, 0x2b, 0xd8, 0xf5, 0xc3, 0x44, 0x6d, 0xb7, 0x75, 0x95, 0x89, 0xa7, 0xb9, 0xc3, 0x2c, 0x3f,
        0x9e, 0x91, 0xb8, 0xdc, 0x6e, 0x55, 0xa7, 0x51, 0xe6, 0x2c, 0x59, 0xbc, 0x9c, 0x12, 0x98, 0x06,
        0x8b, 0xa0, 0x50, 0x79, 0x18, 0xaa, 0x29, 0x4e, 0x84, 0x96, 0x5f, 0xa6, 0x37, 0x9f, 0xed, 0x9a,
        0x33, 0x3c, 0xed, 0x34, 0x2d, 0x63, 0x7f, 0x6c, 0x5a
    };

    char flag[200] = {0};
    decrypt_flag(data, sizeof(data), flag);
    printf("%s\n", flag);
    return 0;
}
