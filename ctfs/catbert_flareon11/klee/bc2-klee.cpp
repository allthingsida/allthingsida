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
  __int64 t1;
  __int64 t2;
  __int64 b1;
  __int64 b2;
  __int64 b3;
  __int64 b4;
  __int64 b5;
  __int64 b6;
  __int64 b7;
  __int64 b8;
  __int64 t3;
  __int64 t4;
  __int64 t5;
  __int64 mismatch;
  __int64 count;
  __int64 ok;
  __int64 field_C0;
  __int64 v2;
  __int64 field_D0;
  __int64 field_D8;
  __int64 field_E0;
  __int64 field_E8;
  __int64 l33t;
  __int64 field_F8;
  __int64 v1;
  __int64 field_108;
  __int64 field_110;
  __int64 field_118;
  __int64 field_120;
  __int64 field_128;
  __int64 field_130;
  __int64 field_138;
  __int64 field_140;
  __int64 field_148;
  __int64 field_150;
  __int64 field_158;

int main()
{
//   u1 = 0xBBAALL;
//   u2 = 0xDDCCLL;
//   u3 = 0xFFEELL;
//   u4 = 0xADDELL;
//   u5 = 0xEFBELL;
//   u6 = 0xFECALL;
//   u7 = 0xBEBALL;
//   u8 = 0xCDABLL;
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

  b1 = 0xA059LL;
  b2 = 0x6A4DLL;
  b3 = 0xDE23LL;
  b4 = 0x24C0LL;
  b5 = 0x64E2LL;
  b6 = 0x59B1LL;
  b7 = 0x7207LL;
  b8 = 0x7F5CLL;

  t1 = u1 | (u2 << 16) | (u3 << 32) | (u4 << 48);
  t2 = u5 | (u6 << 16) | (u7 << 32) | (u8 << 48);
  t3 = b1 | (b2 << 16) | (b3 << 32) | (b4 << 48);
  t4 = b5 | (b6 << 16) | (b7 << 32) | (b8 << 48);
  t5 = 0LL;

  mismatch = 1LL;
  count = 0LL;
  ok = 0LL;

  field_E0 = 214013LL;
  field_E8 = 2531011LL;
  field_D8 = 0x80000000LL;

  l33t = 0x1337LL;

  while ( mismatch == 1 )
  {
    if ( t5 < 8 )
    {
      field_C0 = (unsigned __int64)t1 >> (8 * (unsigned __int8)t5);
      v2 = (unsigned __int64)t3 >> (8 * (unsigned __int8)t5);
    }
    if ( t5 > 7 )
    {
      field_C0 = (unsigned __int64)t2 >> ((8 * (unsigned __int8)t5) & 0x3f);
      v2 = (unsigned __int64)t4 >> (8 * ((unsigned __int8)t5) & 0x3f);
    }
    field_C0 = (unsigned __int8)field_C0;
    v2 = (unsigned __int8)v2;
    l33t = (field_E8 + l33t * field_E0) % (unsigned __int64)field_D8;
    field_D0 = l33t;
    field_D0 = (unsigned __int64)l33t >> (8 * (unsigned __int8)(t5 % 4uLL));
    field_F8 = (unsigned __int8)field_D0;
    v1 = field_F8 ^ field_C0;

    if ( v1 != v2 )
      mismatch = 0LL;

    if ( v1 == v2 )
      ++count;

    if ( ++t5 > 15 )
      mismatch = 0LL;
  }

  klee_assert( count == 16 );


  return 0;
}