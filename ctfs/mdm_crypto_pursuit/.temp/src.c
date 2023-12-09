struct userinput_t
{
  char part1[10];
  char part2[190];
};

_BOOL8 __fastcall check_scrambled_password(unsigned __int8 *str)
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


_BOOL8 __fastcall check_turn_over_page(char *user_input)
{
  unsigned __int8 *p_decrypted_str; // r14
  unsigned __int8 *p_out; // rsi
  const unsigned __int8 *p_in; // rdi
  size_t len; // rax
  char user_key[32]; // [rsp+0h] [rbp-748h] BYREF
  AES_KEY aes_key; // [rsp+20h] [rbp-728h] BYREF
  unsigned __int8 decrypted_str[1536]; // [rsp+120h] [rbp-628h] BYREF
  char v10; // [rsp+720h] [rbp-28h] BYREF

  qmemcpy(decrypted_str, g_enc_turn_over_the_page, sizeof(decrypted_str));

  *user_key = _mm_load_si128(g_user_input3);
  *&user_key[0x10] = _mm_load_si128(&g_user_input3[0x10]);

  p_decrypted_str = decrypted_str;
  AES_set_decrypt_key(user_key, 256, &aes_key);
  do
  {
    p_out = p_decrypted_str;
    p_in = p_decrypted_str;
    p_decrypted_str += 0x10;
    AES_decrypt(p_in, p_out, &aes_key);
  }
  while ( &v10 != p_decrypted_str );

  qmemcpy(g_enc_turn_over_the_page, decrypted_str, sizeof(g_enc_turn_over_the_page));

  len = strlen(user_input);
  return strncmp(user_input, g_enc_turn_over_the_page, len) == 0;
}

void __fastcall aes_decrypt_puts(char *user_key, unsigned __int8 *e_buf)
{
  char *p; // rbx
  unsigned __int8 *p_out; // rsi
  char c_userkey[32]; // [rsp+0h] [rbp-748h] BYREF
  AES_KEY rsa_key; // [rsp+20h] [rbp-728h] BYREF
  char decrypted_str[1537]; // [rsp+120h] [rbp-628h] BYREF

  memset(decrypted_str, 0, 0x600);
  strncpy(c_userkey, user_key, 32uLL);
  AES_set_decrypt_key(user_key, 0x100, &rsa_key);
  p = decrypted_str;
  do
  {
    p_out = p;
    p += 0x10;
    AES_decrypt(e_buf, p_out, &rsa_key);
    e_buf += 0x10;
  }
  while ( p != &decrypted_str[0x600] );

  check_flags();
  puts(decrypted_str);
}

void __fastcall prompt_1()
{
  char *p_buf; // rdx
  int v1; // ecx
  unsigned int str_len; // eax
  unsigned __int8 *p_s; // rbx
  unsigned __int8 *p_enc_buf; // r12
  const unsigned __int8 *p; // rdi
  char user_key[32]; // [rsp+0h] [rbp-838h] BYREF
  char dest[32]; // [rsp+20h] [rbp-818h] BYREF
  char user_input[200]; // [rsp+40h] [rbp-7F8h] BYREF
  AES_KEY aes_key; // [rsp+110h] [rbp-728h] BYREF
  char decrypted_str[1536]; // [rsp+210h] [rbp-628h] BYREF

  memset(user_input, 0, sizeof(user_input));
  puts(
    "You have heard that a rival historian recently discovered a copy of a chapter of the diary of Madame de Maintenon at"
    " the local library. But being unable to solve the mystery, returned it in frustration. Having long been fascinated b"
    "y her history, you can't wait to investigate. What do you do?");

  read_input(user_input);

  p_buf = user_input;

  // String length
  do...

  if...

  // Head to the library + strlen
  if ( (&p_buf[-__CFADD__(str_len, str_len) - 3] - user_input) <= 18 || memcmp("Head to the library", user_input, 19uLL) )
    alarm_print(
      "without a clear plan of action, your thoughts eventually pass on to more pressing matters, and you return to watch"
      "ing subway surfer tik-toks. May another, more focussed mind, solve this mystery.");

  strncpy(g_user_input, user_input, 200uLL);

  // Decrypt new hint with user input as key
  memset(user_key, 0, sizeof(user_key));
  p_s = decrypted_str;
  strncpy(user_key, g_user_input, 19uLL);
  memset(decrypted_str, 0, sizeof(decrypted_str));
  strncpy(dest, user_key, 32uLL);
  AES_set_decrypt_key(user_key, 256, &aes_key);
  p_enc_buf = &g_enc_hint1;
  do
  {
    p = p_enc_buf;
    p_enc_buf += 0x10;
    AES_decrypt(p, p_s, &aes_key);
    p_s += 0x10;
  }
  while ( p_enc_buf != &g_enc_hint1 + 0x600 );

  check_flags();
  puts(decrypted_str);
}

void __fastcall prompt_2()
{
  unsigned __int8 *in_; // rbx
  unsigned __int8 *p_decrypted_str; // r12
  const unsigned __int8 *p_in; // rdi
  char user_key[32]; // [rsp+0h] [rbp-838h] BYREF
  char aes_key_string[32]; // [rsp+20h] [rbp-818h] BYREF
  char user_input[200]; // [rsp+40h] [rbp-7F8h] BYREF
  AES_KEY aes_key; // [rsp+110h] [rbp-728h] BYREF
  char decrypted_str[1536]; // [rsp+210h] [rbp-628h] BYREF

  memset(user_input, 0, sizeof(user_input));
  puts("What do you do?\n");
  read_input(user_input);

  if ( !check_xored_password(user_input) )
    alarm_print(
      "You were unable to locate the second page of the diary, after many hours of searching you give up and return home");

  strncpy(g_user_input2, user_input, 200uLL);

  *g_enc_buf_flag = _mm_load_si128(g_enc_buf2);
  *&g_enc_buf_flag[0x10] = _mm_load_si128(&g_enc_buf2[0x10]);
  *&g_enc_buf_flag[0x20] = _mm_load_si128(&g_enc_buf2[0x20]);
  in_ = &g_enc_hint2;
  *&g_enc_buf_flag[0x30] = _mm_load_si128(&g_enc_buf2[0x30]);
  *&g_enc_buf_flag[0x40] = _mm_load_si128(&g_enc_buf2[0x40]);
  *&g_enc_buf_flag[0x50] = _mm_load_si128(&g_enc_buf2[0x50]);
  *&g_enc_buf_flag[0x60] = _mm_load_si128(&g_enc_buf2[0x60]);
  *&g_enc_buf_flag[0x70] = _mm_load_si128(&g_enc_buf2[0x70]);
  *&g_enc_buf_flag[0x80] = _mm_load_si128(&g_enc_buf2[0x80]);
  *&g_enc_buf_flag[0x90] = _mm_load_si128(&g_enc_buf2[0x90]);
  *&g_enc_buf_flag[0xA0] = _mm_load_si128(&g_enc_buf2[0xA0]);
  *&g_enc_buf_flag[0xB0] = _mm_load_si128(&g_enc_buf2[0xB0]);
  *&g_enc_buf_flag[0xC0] = _mm_load_si128(&g_enc_buf2[0xC0]);
  *&g_enc_buf_flag[0xD0] = _mm_load_si128(&g_enc_buf2[0xD0]);
  *&g_enc_buf_flag[0xE0] = _mm_load_si128(&g_enc_buf2[0xE0]);
  *&g_enc_buf_flag[0xF0] = _mm_load_si128(&g_enc_buf2[0xF0]);

  memset(user_key, 0, sizeof(user_key));
  strncpy(user_key, g_user_input2, 29uLL);
  memset(decrypted_str, 0, sizeof(decrypted_str));

  strncpy(aes_key_string, user_key, 32uLL);
  AES_set_decrypt_key(user_key, 0x100, &aes_key);
  p_decrypted_str = decrypted_str;
  do
  {
    p_in = in_;
    in_ += 16;
    AES_decrypt(p_in, p_decrypted_str, &aes_key);
    p_decrypted_str += 16;
  }
  while ( in_ != &g_enc_hint2 + 0x600 );

  check_flags();
  puts(decrypted_str);
}

int prompt_3()
{
  unsigned __int8 *v0; // rbx
  unsigned __int8 *v1; // r12
  const unsigned __int8 *v2; // rdi
  char user_key[32]; // [rsp+0h] [rbp-838h] BYREF
  char c_userkey[32]; // [rsp+20h] [rbp-818h] BYREF
  unsigned __int8 user_input[200]; // [rsp+40h] [rbp-7F8h] BYREF
  AES_KEY rsa_key; // [rsp+110h] [rbp-728h] BYREF
  char decrypted_str[1536]; // [rsp+210h] [rbp-628h] BYREF

  memset(user_input, 0, sizeof(user_input));
  puts("What do you do?\n");
  read_input(user_input);

  // Search the book for clues
  if ( !check_scrambled_password(user_input) )
    alarm_print(
      "Where could the third page possibly be? How could your fellow historian have been so careless with such a priceless artifact???");

  strncpy(g_user_input3, user_input, 200uLL);

  *g_enc_buf_flag = _mm_load_si128(g_enc_buf3);
  *&g_enc_buf_flag[0x10] = _mm_load_si128(&g_enc_buf3[0x10]);
  *&g_enc_buf_flag[0x20] = _mm_load_si128(&g_enc_buf3[0x20]);
  v0 = &g_enc_hint3;
  *&g_enc_buf_flag[0x30] = _mm_load_si128(&g_enc_buf3[0x30]);
  *&g_enc_buf_flag[0x40] = _mm_load_si128(&g_enc_buf3[0x40]);
  *&g_enc_buf_flag[0x50] = _mm_load_si128(&g_enc_buf3[0x50]);
  *&g_enc_buf_flag[0x60] = _mm_load_si128(&g_enc_buf3[0x60]);
  *&g_enc_buf_flag[0x70] = _mm_load_si128(&g_enc_buf3[0x70]);
  *&g_enc_buf_flag[0x80] = _mm_load_si128(&g_enc_buf3[0x80]);
  *&g_enc_buf_flag[0x90] = _mm_load_si128(&g_enc_buf3[0x90]);
  *&g_enc_buf_flag[0xA0] = _mm_load_si128(&g_enc_buf3[0xA0]);
  *&g_enc_buf_flag[0xB0] = _mm_load_si128(&g_enc_buf3[0xB0]);
  *&g_enc_buf_flag[0xC0] = _mm_load_si128(&g_enc_buf3[0xC0]);
  *&g_enc_buf_flag[0xD0] = _mm_load_si128(&g_enc_buf3[0xD0]);
  *&g_enc_buf_flag[0xE0] = _mm_load_si128(&g_enc_buf3[0xE0]);
  *&g_enc_buf_flag[0xF0] = _mm_load_si128(&g_enc_buf3[0xF0]);

  memset(user_key, 0, sizeof(user_key));
  strncpy(user_key, g_user_input3, 25uLL);
  memset(decrypted_str, 0, sizeof(decrypted_str));

  strncpy(c_userkey, user_key, 32uLL);

  AES_set_decrypt_key(user_key, 0x100, &rsa_key);
  v1 = decrypted_str;
  do
  {
    v2 = v0;
    v0 += 16;
    AES_decrypt(v2, v1, &rsa_key);
    v1 += 16;
  }
  while ( v0 != &g_enc_hint3 + 0x600 );
  check_flags();
  return puts(decrypted_str);
}

int __fastcall prompt_4()
{
  unsigned __int8 *v0; // rbx
  unsigned __int8 *p_out; // r12
  const unsigned __int8 *v2; // rdi
  char user_key[32]; // [rsp+0h] [rbp-838h] BYREF
  char c_userkey[32]; // [rsp+20h] [rbp-818h] BYREF
  char user_input[200]; // [rsp+40h] [rbp-7F8h] BYREF
  AES_KEY rsa_key; // [rsp+110h] [rbp-728h] BYREF
  char decrypted_str[1536]; // [rsp+210h] [rbp-628h] BYREF

  memset(user_input, 0, sizeof(user_input));
  puts("What do you do?\n");
  read_input(user_input);

  if ( !check_turn_over_page(user_input) )
    alarm_print("You're so close to the final page! You survey all three pages you discovered in despair. So close yet so far.");

  strncpy(g_user_input4, user_input, 200uLL);

  *g_enc_buf3 = _mm_load_si128(g_enc_buf2);
  *&g_enc_buf3[0x10] = _mm_load_si128(&g_enc_buf2[0x10]);
  *&g_enc_buf3[0x20] = _mm_load_si128(&g_enc_buf2[0x20]);
  v0 = &g_enc_str4;
  *&g_enc_buf3[0x30] = _mm_load_si128(&g_enc_buf2[0x30]);
  *&g_enc_buf3[0x40] = _mm_load_si128(&g_enc_buf2[0x40]);
  *&g_enc_buf3[0x50] = _mm_load_si128(&g_enc_buf2[0x50]);
  *&g_enc_buf3[0x60] = _mm_load_si128(&g_enc_buf2[0x60]);
  *&g_enc_buf3[0x70] = _mm_load_si128(&g_enc_buf2[0x70]);
  *&g_enc_buf3[0x80] = _mm_load_si128(&g_enc_buf2[0x80]);
  *&g_enc_buf3[0x90] = _mm_load_si128(&g_enc_buf2[0x90]);
  *&g_enc_buf3[0xA0] = _mm_load_si128(&g_enc_buf2[0xA0]);
  *&g_enc_buf3[0xB0] = _mm_load_si128(&g_enc_buf2[0xB0]);
  *&g_enc_buf3[0xC0] = _mm_load_si128(&g_enc_buf2[0xC0]);
  *&g_enc_buf3[0xD0] = _mm_load_si128(&g_enc_buf2[0xD0]);
  *&g_enc_buf3[0xE0] = _mm_load_si128(&g_enc_buf2[0xE0]);
  *&g_enc_buf3[0xF0] = _mm_load_si128(&g_enc_buf2[0xF0]);

  memset(user_key, 0, sizeof(user_key));
  strncpy(user_key, g_user_input4, 19uLL);

  memset(decrypted_str, 0, sizeof(decrypted_str));
  strncpy(c_userkey, user_key, 32uLL);
  AES_set_decrypt_key(user_key, 0x100, &rsa_key);
  p_out = decrypted_str;
  do
  {
    v2 = v0;
    v0 += 16;
    AES_decrypt(v2, p_out, &rsa_key);
    p_out += 16;
  }
  while ( v0 != &g_enc_str4 + 0x600 );
  check_flags();
  return puts(decrypted_str);
}

void __fastcall check_flags()
{
  RSA *rsa; // r12
  BIGNUM *n; // [rsp+0h] [rbp-128h] BYREF
  BIGNUM *e; // [rsp+8h] [rbp-120h] BYREF
  unsigned __int8 dst_buf[256]; // [rsp+10h] [rbp-118h] BYREF

  n = 0LL;
  e = 0LL;
  memset(dst_buf, 0, sizeof(dst_buf));

  rsa = RSA_new();
  BN_hex2bn(&n, g_rsa_key);
  BN_hex2bn(&e, "3");
  RSA_set0_key(rsa, n, e, 0LL);
  RSA_public_encrypt(256, g_user_input, dst_buf, rsa, RSA_NO_PADDING);

  if ( !memcmp(dst_buf, g_enc_buf_flag, 256uLL) )
  {
    if ( g_flag1 )
    {
      if ( g_flag2 )
        g_flag3 = 1;
      else
        g_flag2 = 1;
    }
    else
    {
      g_flag1 = 1;
    }
  }
}

void __fastcall __noreturn alarm_print(const char *a1)
{
  puts(a1);
  exit(0);
}

void __fastcall read_input(unsigned __int8 *buf)
{
  __int64 i; // rbx
  BYTE _ch; // al

  if ( g_flag1 )
    qmemcpy(g_rsa_key, c_rsa_key1, sizeof(g_rsa_key));

  if ( g_flag2 )
    qmemcpy(g_rsa_key, c_rsa_key2, sizeof(g_rsa_key));

  i = 0LL;
  while ( 1 )
  {
    _ch = getc(stdin);
    if ( _ch == '\n' || !_ch )
      break;

    if ( (_ch - 32) > 94u )                     // ~
      alarm_print("The other patrons of the library are alarmed by the weird noises you're making?!!?");

    buf[i++] = _ch;
    if ( i == 199 )
      return;
  }
  buf[i] = 0;
}

// 'Check books on the next shelf'
unsigned int __fastcall check_xored_password(const char *user_input)
{
  char *v_user_input; // rax
  char *p_xor_buf; // rdx
  char x_key; // cl
  char *c_v_user_input; // rdi
  __int64 j; // rax
  char ch_1; // dl
  char expected_xored_string[16]; // [rsp+0h] [rbp-148h]
  _QWORD v1[2]; // [rsp+10h] [rbp-138h]
  char s_xor_buf1[32]; // [rsp+20h] [rbp-128h] BYREF
  char c_user_input[256]; // [rsp+40h] [rbp-108h] BYREF

  v1[0] = 0xED3BF4E402F3B0CFLL;
  *s_xor_buf1 = _mm_load_si128(g_xor_buf1);
  LODWORD(v1[1]) = 0x90EC7F44;
  *&s_xor_buf1[0x10] = _mm_load_si128(&g_xor_buf1[0x10]);
  BYTE4(v1[1]) = 0x9F;
  *expected_xored_string = _mm_load_si128(g_enc_str1);
  v_user_input = strncpy(c_user_input, user_input, 0x100uLL);

  p_xor_buf = &s_xor_buf1[1];
  x_key = 0x44;
  c_v_user_input = v_user_input;
  while ( 1 )
  {
    *v_user_input ^= x_key;
    if ( ++v_user_input == &c_user_input[29] )
      break;
    x_key = *p_xor_buf++;
  }

  j = 0LL;
  for ( ch_1 = 7; ; ch_1 = expected_xored_string[j] )
  {
    if ( c_v_user_input[j] != ch_1 )
      goto bad;

    if ( ++j == 29 )
      break;
  }
  // Check books on the next shelf
  if ( strlen(user_input) > 29 )
bad:
    alarm_print("You were unable to locate the next page of the diary");
  return 1;
}

void __fastcall main(int a1, char **a2, char **a3)
{
  char *p_e_flag; // rax
  char str[32]; // [rsp-20h] [rbp-28h] BYREF

  puts(aYouHaveHeardRu);

  prompt_1();
  prompt_2();
  prompt_3();
  prompt_4();

  if ( g_flag1 && g_flag2 )
  {
    if ( g_flag3 )
    {
      p_e_flag = strncpy(str, g_user_input.part2, 32uLL);
      aes_decrypt_puts(p_e_flag, &g_enc_hint_final);
    }
  }
}
