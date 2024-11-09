// clang-11 -emit-llvm -c -g bc1-klee.cpp
// klee bc1-klee
// ktest-tool klee-out-8/test000002.ktest
#include <assert.h>
#include "defs.h"
#include <klee/klee.h>

  __int64 u1;
  __int64 u2;
  __int64 u3;
  __int64 u4;
  __int64 u5;
  __int64 u6;
  __int64 u7;
  __int64 u8;
  __int64 lu1;
  __int64 lu2;
  __int64 PRIME_LO;
  __int64 PRIME_HI;
  __int64 field_60;
  __int64 BASIS_LO;
  __int64 BASIS_HI;
  __int64 BASIS_;
  __int64 MODU;
  __int64 addler_a;
  __int64 addler_b;
  __int64 djb2_hash;
  __int64 magic1;
  __int64 rot_hash;
  __int64 magic2;
  __int64 val3;
  __int64 magic3;
  __int64 hash4;
  __int64 magic4;
  __int64 i;
  __int64 _ch;
  __int64 _temp;
  __int64 f_0xffffffff;
  __int64 nsuccess;
  __int64 ok;
  __int64 field_108;
  __int64 field_110;

int main()
{
    klee_make_symbolic(&u1, sizeof(u1), "u1");
    klee_make_symbolic(&u2, sizeof(u2), "u2");
    klee_make_symbolic(&u3, sizeof(u3), "u3");
    klee_make_symbolic(&u4, sizeof(u4), "u4");
    klee_make_symbolic(&u5, sizeof(u5), "u5");
    klee_make_symbolic(&u6, sizeof(u6), "u6");
    klee_make_symbolic(&u7, sizeof(u7), "u7");
    klee_make_symbolic(&u8, sizeof(u8), "u8");

klee_assume(u1 >= 0x2020); 
klee_assume(u1 <= 0x7E7E); 
klee_assume(u2 >= 0x2020); 
klee_assume(u2 <= 0x7E7E); 
klee_assume(u3 >= 0x2020); 
klee_assume(u3 <= 0x7E7E); 
klee_assume(u4 >= 0x2020); 
klee_assume(u4 <= 0x7E7E); 
klee_assume(u5 >= 0x2020); 
klee_assume(u5 <= 0x7E7E); 
klee_assume(u6 >= 0x2020); 
klee_assume(u6 <= 0x7E7E); 
klee_assume(u7 >= 0x2020); 
klee_assume(u7 <= 0x7E7E); 
klee_assume(u8 >= 0x2020); 
klee_assume(u8 <= 0x7E7E); 

  lu1 = u1 | (u2 << 16) | (u3 << 32) | (u4 << 48);
  lu2 = u5 | (u6 << 16) | (u7 << 32) | (u8 << 48);

  f_0xffffffff = 0xFFFFLL;
  _temp = f_0xffffffff;
  f_0xffffffff = _temp | (f_0xffffffff << 16);

  i = 0LL;

  nsuccess = 0LL;
  ok = 0LL;

  // def djb2_hash(data: str) -> int:
  //     """
  //     Compute the DJB2 hash for the given string.

  //     :param data: Input string
  //     :return: DJB2 hash as an integer
  //     """
  //     hash_value = 5381  # Seed value

  //     for char in data:
  //         hash_value = ((hash_value << 5) + hash_value) + ord(char)  # hash * 33 + ord(char)

  //     return hash_value & 0xFFFFFFFF  # Return as a 32-bit hash
  djb2_hash = 5381LL;
  // 0 -> 3
  while ( i < 4 )
  {
    _ch = (unsigned __int64)lu1 >> (8 * (unsigned __int8)i);
    _ch = (unsigned __int8)_ch;
    _temp = djb2_hash;
    djb2_hash = _ch + _temp + 32 * djb2_hash;
    ++i;
  }
  djb2_hash &= f_0xffffffff;

  magic1 = 0x7C8DF4CBLL;
//   klee_assert(magic1 == djb2_hash);
  if ( magic1 == djb2_hash )
      ++nsuccess;

  if ( nsuccess > 0 )
  {
    rot_hash = 0LL;
    // 4 -> 7
    while ( i < 8 )
    {
      _ch = (unsigned __int64)lu1 >> (8 * (unsigned __int8)i);
      _ch = (unsigned __int8)_ch;

      rot_hash = (unsigned int)__ROR4__(rot_hash, 13);
      rot_hash += _ch;
      ++i;
    }
    rot_hash &= f_0xffffffff;
    magic2 = 0x8B681D82LL;
    if ( magic2 == rot_hash )
      ++nsuccess;
  }

  if ( nsuccess > 1 )
  {
    addler_a = 1LL;
    addler_b = 0LL;

    val3 = 0LL;
    // def adler32(data: bytes) -> int:
    //     """
    //     Compute the Adler-32 checksum for the given data.

    //     :param data: Input data as bytes
    //     :return: Adler-32 checksum as an integer
    //     """
    //     MOD_ADLER = 65521  # Largest prime less than 2^16

    //     a = 1  # Initial value for A
    //     b = 0  # Initial value for B

    //     for byte in data:
    //         a = (a + byte) % MOD_ADLER
    //         b = (b + a) % MOD_ADLER

    //     return (b << 16) | a  # Combine A and B into a 32-bit checksum
    for ( i = 0LL; i < 8; ++i )
    {
      _ch = (unsigned __int64)lu2 >> (8 * (unsigned __int8)i);
      _ch = (unsigned __int8)_ch;
      addler_a = (_ch + addler_a) % 65521uLL;
      addler_b = (addler_a + addler_b) % 65521uLL;
    }

    val3 = addler_a | (addler_b << 16);
    val3 &= f_0xffffffff;

    magic3 = 0xF910374LL;
    if ( magic3 == val3 )
      ++nsuccess;
  }

  if ( nsuccess > 2 )
  {
    // def fnv1_32(data: bytes) -> int:
    //     """
    //     Compute the FNV1-32 hash for the given data.

    //     :param data: Input data as bytes
    //     :return: FNV1-32 hash as an integer
    //     """
    //     # Constants for FNV-1 32-bit
    //     FNV_OFFSET_BASIS = 0x811C9DC5
    //     FNV_PRIME = 0x01000193

    //     # Initialize the hash
    //     hash_value = FNV_OFFSET_BASIS

    //     # Process each byte in the input
    //     for byte in data:
    //         hash_value = (hash_value * FNV_PRIME) % (2**32)  # Multiply by FNV prime
    //         hash_value = hash_value ^ byte  # XOR with the byte

    //     return hash_value


    // FNV_PRIME = 0x01000193
    PRIME_LO = 0x193LL;
    PRIME_HI = 0x100LL;
    field_60 = PRIME_LO | (PRIME_HI << 16);

    // FNV_OFFSET_BASIS = 0x811C9DC5
    BASIS_LO = 0x9DC5LL;
    BASIS_HI = 0x811CLL;
    BASIS_ = BASIS_LO | (BASIS_HI << 16);

    // (2**32)
    MODU = 0x100000000LL;
    hash4 = BASIS_;

    for ( i = 0LL; i < 16; ++i )
    {
      if ( i < 8 )
        _ch = (unsigned __int64)lu1 >> ((8 * (unsigned __int8)i) & 0x3f);
      if ( i > 7 )
        _ch = (unsigned __int64)lu2 >> ((8 * (unsigned __int8)i) & 0x3f);

      _ch = (unsigned __int8)_ch;

      hash4 = field_60 * hash4 % (unsigned __int64)MODU;
      hash4 ^= _ch;
    }
    hash4 &= f_0xffffffff;
    magic4 = 0x31F009D2LL;
    if ( magic4 == hash4 )
      ++nsuccess;
  }

  if ( nsuccess == 4 )
    ok = 1LL;
klee_assert( nsuccess == 4 );

    return ok;
}