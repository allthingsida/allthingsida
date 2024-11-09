#include <stdio.h>

#include  "../klee/defs.h"

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
  __int64 b1;
  __int64 b2;
  __int64 b3;
  __int64 b4;
  __int64 b5;
  __int64 b6;
  __int64 b7;
  __int64 b8;
  __int64 lb1;
  __int64 lb2;
  __int64 i;
  __int64 repeat;
  __int64 count;
  __int64 ok;
  __int64 uw;
  __int64 bw;
  __int64 _key;
  __int64 min_int;
  __int64 c1;
  __int64 c2;
  __int64 seed;
  __int64 key;
  __int64 val;
};


int main()
{
  mem_t w;
  
  w.u1 = 0xBBAALL;
  w.u2 = 0xDDCCLL;
  w.u3 = 0xFFEELL;
  w.u4 = 0xADDELL;
  w.u5 = 0xEFBELL;
  w.u6 = 0xFECALL;
  w.u7 = 0xBEBALL;
  w.u8 = 0xCDABLL;

  w.b1 = 0xA059LL;
  w.b2 = 0x6A4DLL;
  w.b3 = 0xDE23LL;
  w.b4 = 0x24C0LL;
  w.b5 = 0x64E2LL;
  w.b6 = 0x59B1LL;
  w.b7 = 0x7207LL;
  w.b8 = 0x7F5CLL;

  w.lu1 = w.u1 | (w.u2 << 16) | (w.u3 << 32) | (w.u4 << 48);
  w.lu2 = w.u5 | (w.u6 << 16) | (w.u7 << 32) | (w.u8 << 48);

  w.lb1 = w.b1 | (w.b2 << 16) | (w.b3 << 32) | (w.b4 << 48);
  w.lb2 = w.b5 | (w.b6 << 16) | (w.b7 << 32) | (w.b8 << 48);

  w.i = 0LL;

  w.repeat = 1LL;
  w.count = 0LL;
  w.ok = 0LL;

  w.c1 = 214013LL;
  w.c2 = 2531011LL;
  w.min_int = 0x80000000LL;

  w.seed = 0x1337LL;

  while ( w.repeat == 1 )
  {
    if ( w.i < 8 )
    {
      w.uw = (unsigned __int64)w.lu1 >> (8 * (unsigned __int8)w.i);
      w.bw = (unsigned __int64)w.lb1 >> (8 * (unsigned __int8)w.i);
    }
    if ( w.i > 7 )
    {
      w.uw = (unsigned __int64)w.lu2 >> (8 * (unsigned __int8)w.i);
      w.bw = (unsigned __int64)w.lb2 >> (8 * (unsigned __int8)w.i);
    }
    w.uw = (unsigned __int8)w.uw;
    w.bw = (unsigned __int8)w.bw;

    w.seed = (w.c2 + w.seed * w.c1) % (unsigned __int64)w.min_int;
    w._key = w.seed;
    w._key = (unsigned __int64)w.seed >> (8 * (unsigned __int8)(w.i % 4uLL));
    w.key = (unsigned __int8)w._key;

    w.val = w.key ^ w.bw;
    printf("%c", (int)(w.val & 0xff));

    ++w.i;
    if (w.i == 16)
        w.repeat = 0LL;
  }
  if ( w.count == 16 )
    w.ok = 1LL;

  if ( w.count != 16 )
    w.ok = 0LL;

}