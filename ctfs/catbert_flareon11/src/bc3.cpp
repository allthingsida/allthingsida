#include <assert.h>
#include "../klee/defs.h"

struct mem_t
{
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
  __int64 magic1_djb2;
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
};

mem_t w;

int main()
{
  w.u1 = 0xBBAALL;
  w.u2 = 0xDDCCLL;
  w.u3 = 0xFFEELL;
  w.u4 = 0xADDELL;
  w.u5 = 0xEFBELL;
  w.u6 = 0xFECALL;
  w.u7 = 0xBEBALL;
  w.u8 = 0xCDABLL;

  w.lu1 = w.u1 | (w.u2 << 16) | (w.u3 << 32) | (w.u4 << 48);
  w.lu2 = w.u5 | (w.u6 << 16) | (w.u7 << 32) | (w.u8 << 48);

  w.f_0xffffffff = 0xFFFFLL;
  w._temp = w.f_0xffffffff;
  w.f_0xffffffff = w._temp | (w.f_0xffffffff << 16);

  w.i = 0LL;

  w.nsuccess = 0LL;
  w.ok = 0LL;

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
  w.djb2_hash = 5381LL;
  // 0 -> 3
  while ( w.i < 4 )
  {
    w._ch = (unsigned __int64)w.lu1 >> (8 * (unsigned __int8)w.i);
    w._ch = (unsigned __int8)w._ch;
    w._temp = w.djb2_hash;
    w.djb2_hash = w._ch + w._temp + 32 * w.djb2_hash;
    ++w.i;
  }
  w.djb2_hash &= w.f_0xffffffff;

  w.magic1_djb2 = 0x7C8DF4CBLL;
  if ( w.magic1_djb2 == w.djb2_hash )
    ++w.nsuccess;

  if ( w.nsuccess > 0 )
  {
    w.rot_hash = 0LL;
    // 4 -> 7
    while ( w.i < 8 )
    {
      w._ch = (unsigned __int64)w.lu1 >> (8 * (unsigned __int8)w.i);
      w._ch = (unsigned __int8)w._ch;

      w.rot_hash = (unsigned int)__ROR4__(w.rot_hash, 13);
      w.rot_hash += w._ch;
      ++w.i;
    }
    w.rot_hash &= w.f_0xffffffff;
    w.magic2 = 0x8B681D82LL;
    if ( w.magic2 == w.rot_hash )
      ++w.nsuccess;
  }

  if ( w.nsuccess > 1 )
  {
    w.addler_a = 1LL;
    w.addler_b = 0LL;

    w.val3 = 0LL;
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
    for ( w.i = 0LL; w.i < 8; ++w.i )
    {
      w._ch = (unsigned __int64)w.lu2 >> (8 * (unsigned __int8)w.i);
      w._ch = (unsigned __int8)w._ch;
      w.addler_a = (w._ch + w.addler_a) % 65521uLL;
      w.addler_b = (w.addler_a + w.addler_b) % 65521uLL;
    }

    w.val3 = w.addler_a | (w.addler_b << 16);
    w.val3 &= w.f_0xffffffff;

    w.magic3 = 0xF910374LL;
    if ( w.magic3 == w.val3 )
      ++w.nsuccess;
  }

  if ( w.nsuccess > 2 )
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
    w.PRIME_LO = 0x193LL;
    w.PRIME_HI = 0x100LL;
    w.field_60 = w.PRIME_LO | (w.PRIME_HI << 16);

    // FNV_OFFSET_BASIS = 0x811C9DC5
    w.BASIS_LO = 0x9DC5LL;
    w.BASIS_HI = 0x811CLL;
    w.BASIS_ = w.BASIS_LO | (w.BASIS_HI << 16);

    // (2**32)
    w.MODU = 0x100000000LL;
    w.hash4 = w.BASIS_;

    for ( w.i = 0LL; w.i < 16; ++w.i )
    {
      if ( w.i < 8 )
        w._ch = (unsigned __int64)w.lu1 >> (8 * (unsigned __int8)w.i);
      if ( w.i > 7 )
        w._ch = (unsigned __int64)w.lu2 >> (8 * (unsigned __int8)w.i);

      w._ch = (unsigned __int8)w._ch;

      w.hash4 = w.field_60 * w.hash4 % (unsigned __int64)w.MODU;
      w.hash4 ^= w._ch;
    }
    w.hash4 &= w.f_0xffffffff;
    w.magic4 = 0x31F009D2LL;
    if ( w.magic4 == w.hash4 )
      ++w.nsuccess;
  }
  if ( w.nsuccess == 4 )
    w.ok = 1LL;

  return 0;
}