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
  __int64 x1;
  unsigned __int64 x2;
  __int64 b1;
  __int64 b2;
  __int64 b3;
  __int64 b4;
  __int64 b5;
  __int64 b6;
  __int64 b7;
  __int64 b8;
  __int64 y1;
  unsigned __int64 y2;
  __int64 i;
  __int64 t1;
  __int64 t2;
  __int64 ok;
  __int64 cond;
  __int64 result;


int main()
{
  __int64 v;
/*
  w.u1 = 0xBBAALL;
  w.u2 = 0xDDCCLL;
  w.u3 = 0xFFEELL;
  w.u4 = 0xADDELL;
  w.u5 = 0xEFBELL;
  w.u6 = 0xFECALL;
  w.u7 = 0xBEBALL;
  w.u8 = 0xCDABLL;
*/
  klee_make_symbolic(&u1, sizeof(u1), "u1");
  klee_make_symbolic(&u2, sizeof(u2), "u2");
  klee_make_symbolic(&u3, sizeof(u3), "u3");
  klee_make_symbolic(&u4, sizeof(u4), "u4");
  klee_make_symbolic(&u5, sizeof(u5), "u5");
  klee_make_symbolic(&u6, sizeof(u6), "u6");
  klee_make_symbolic(&u7, sizeof(u7), "u7");
  klee_make_symbolic(&u8, sizeof(u8), "u8");

  klee_assume(u1 < 0x10000); // 16 bits
  klee_assume(u1 >= 0); // 16 bits
  klee_assume(u2 < 0x10000); // 16 bits
  klee_assume(u2 >= 0); // 16 bits
  klee_assume(u3 < 0x10000); // 16 bits
  klee_assume(u3 >= 0); // 16 bits
  klee_assume(u4 < 0x10000); // 16 bits
  klee_assume(u4 >= 0); // 16 bits
  klee_assume(u5 < 0x10000); // 16 bits
  klee_assume(u5 >= 0); // 16 bits
  klee_assume(u6 < 0x10000); // 16 bits
  klee_assume(u6 >= 0); // 16 bits
  klee_assume(u7 < 0x10000); // 16 bits
  klee_assume(u7 >= 0); // 16 bits
  klee_assume(u8 < 0x10000); // 16 bits
  klee_assume(u8 >= 0); // 16 bits

  b1 = 0x6144LL;
  b2 = 0x7534LL;
  b3 = 0x6962LL;
  b4 = 0x6C63LL;
  b5 = 0x3165LL;
  b6 = 0x6669LL;
  b7 = 0x6265LL;
  b8 = 0x6230LL;

  x1 = u1 | (u2 << 16) | (u3 << 32) | (u4 << 48);
  x2 = u5 | (u6 << 16) | (u7 << 32) | (u8 << 48);

  y1 = b1 | (b2 << 16) | (b3 << 32) | (b4 << 48);
  y2 = b5 | (b6 << 16) | (b7 << 32) | (b8 << 48);

  i = 0LL;
  cond = 1LL;
  ok = 0LL;
  result = 0LL;

  while ( cond == 1 )
  {
    if ( i < 8 )
    {
      t1 = (unsigned __int64)x1 >> (8 * (unsigned __int8)i);
      t2 = (unsigned __int64)y1 >> (8 * (unsigned __int8)i);
    }

    if ( i > 7 )
    {
      //t1 = x2 >> (8 * (unsigned __int8)i);
      t1 = x2 >> ((8 * (unsigned __int8)i) & 0x3f);
      //t2 = y2 >> (8 * (unsigned __int8)i);
      t2 = y2 >> ((8 * (unsigned __int8)i) & 0x3f);
    }

    t1 = (unsigned __int8)t1;
    t2 = (unsigned __int8)t2;

    if ( i == 2 )
    {
      v = t2;
      LOBYTE(v) = __ROL1__(v, 4);
      t2 = v;
    }

    if ( i == 9 )
    {
      v = t2;
      LOBYTE(v) = __ROR1__(v, 2);
      t2 = v;
    }

    if ( i == 13 )
    {
      v = t2;
      LOBYTE(v) = __ROL1__(v, 7);
      t2 = v;
    }

    if ( i == 15 )
    {
      v = t2;
      LOBYTE(v) = __ROL1__(v, 7);
      t2 = v;
    }
    if ( t1 != t2 )
      cond = 0LL;

    if ( t1 == t2 )
      ++ok;

    if ( ++i > 15 )
      cond = 0LL;
  }

  klee_assert( ok == 16 );

  return 0;
}