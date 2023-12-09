#include <string.h>
#include <stdio.h>
#include <openssl/rsa.h>
#include <openssl/aes.h>
#include <openssl/pem.h>
#include <openssl/bn.h>

#include "tables_impl.cpp"

union userinput_u
{
    struct
    {
        char part1[10];
        char part2[246];
    };
    char s[256];
};

int g_flag1 = 0, g_flag2 = 0, g_flag3=0;

char g_rsa_key[512 + 1] = {};
userinput_u g_user_input = {0};
char g_user_input2[200] = {};
char g_user_input3[200] = {};
char g_user_input4[200] = {};

void check_flags()
{
  BIGNUM *n = 0;
  BIGNUM *e = 0;
  unsigned char dst_buf[256] = {};

  RSA *rsa = RSA_new();
  BN_hex2bn(&n, g_rsa_key);
  BN_hex2bn(&e, "3");
  RSA_set0_key(rsa, n, e, 0);

  RSA_public_encrypt(256, (const unsigned char *)&g_user_input.s[0], dst_buf, rsa, RSA_NO_PADDING);

  if (memcmp(dst_buf, g_enc_buf_flag, 256) == 0)
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

void decrypt_string(
    unsigned char* output_buffer,
    size_t output_buffer_size,
    unsigned char* input_buffer,
    size_t input_buffer_size,
    AES_KEY aes_key)
{
    unsigned char* p_s = output_buffer;
    unsigned char* p_enc_buf = input_buffer;

    memset(output_buffer, 0, output_buffer_size);

    do
    {
        AES_decrypt(p_enc_buf, p_s, &aes_key);
        p_enc_buf += 16;
        p_s += 16;
    } while (p_enc_buf != input_buffer + input_buffer_size);
}

void alarm_print(const char *s)
{
  puts(s);
  exit(0);
}

void read_input(char *buf)
{
  if ( g_flag1 )
    memcpy(g_rsa_key, g_rsa_key1, sizeof(g_rsa_key));

  if ( g_flag2 )
    memcpy(g_rsa_key, g_rsa_key2, sizeof(g_rsa_key));

  int i = 0;
  while ( 1 )
  {
    unsigned char _ch = getc(stdin);
    if ( _ch == '\n' || !_ch )
      break;

    if ( (_ch - 32) > 94 )                     // ~
      alarm_print("The other patrons of the library are alarmed by the weird noises you're making?!!?");

    buf[i++] = _ch;
    if ( i == 199 )
      return;
  }
  buf[i] = 0;
}

// 'Search the book for clues'
int check_scrambled_password(char *str)
{
    return strcmp(str, "Search the book for clues") == 0;
}

// 'Check books on the next shelf'
int check_xored_password(const char *user_input)
{
    return strcmp(user_input, "Check books on the next shelf") == 0;
}

int check_turn_over_page(char *user_input)
{
    unsigned char user_key[32] = {};
    memcpy(user_key, g_user_input3, sizeof(user_key));

    AES_KEY aes_key;
    AES_set_decrypt_key(user_key, 256, &aes_key);

    unsigned char decrypted_str[1536];
    memcpy(decrypted_str, g_enc_turn_over_the_page, sizeof(decrypted_str));

    decrypt_string(
        decrypted_str,
        sizeof(decrypted_str),
        g_enc_turn_over_the_page,
        sizeof(g_enc_turn_over_the_page),
        aes_key);

    return strncmp(user_input, (char *)g_enc_turn_over_the_page, strlen(user_input)) == 0;
}

void aes_decrypt_puts(char *user_key, unsigned char *e_buf)
{
    AES_KEY aes_key;
    AES_set_decrypt_key((unsigned char *)user_key, 0x100, &aes_key);

    char decrypted_str[1537] = {};
    decrypt_string(
        (unsigned char *)decrypted_str,
        sizeof(decrypted_str),
        e_buf,
        0x600,
        aes_key);

    check_flags();
    puts(decrypted_str);
}

void prompt_1()
{
  puts(
    "You have heard that a rival historian recently discovered a copy of a chapter of the diary of Madame de Maintenon at the local library. But being unable to solve the mystery, returned it in frustration. Having long been fascinated by her history, you can't wait to investigate. What do you do?");

  char user_input[200] = {};
  read_input(user_input);
  strncpy(g_user_input.s, user_input, 200);

  // Head to the library
  if ( strlen(user_input) <= 18 || memcmp("Head to the library", user_input, 19) )
  {
    alarm_print(
      "without a clear plan of action, your thoughts eventually pass on to more pressing matters, and you return to watching subway surfer tik-toks. May another, more focussed mind, solve this mystery.");
  }

  // Decrypt new hint with user input as key
  char user_key[32] = {};
  strncpy(user_key, g_user_input.s, 19); //;!

  AES_KEY aes_key;
  AES_set_decrypt_key((unsigned char *)user_key, 256, &aes_key);

  char decrypted_str[1536];
  decrypt_string(
    (unsigned char *)decrypted_str,
    sizeof(decrypted_str),
    g_enc_hint1,
    sizeof(g_enc_hint1),
    aes_key);

  check_flags();
  puts(decrypted_str);
}

void prompt_2()
{
    char user_input[200] = {};
    puts("What do you do?\n");

    read_input(user_input);
    strncpy(g_user_input2, user_input, 200);

    if ( !check_xored_password(user_input) )
    {
      alarm_print(
        "You were unable to locate the second page of the diary, after many hours of searching you give up and return home");
    }

    memcpy(g_enc_buf_flag, g_enc_buf2, sizeof(g_enc_buf_flag)); //;!swap

    char user_key[32] = {};
    strncpy(user_key, g_user_input2, 29);

    AES_KEY aes_key;
    AES_set_decrypt_key((unsigned char *)user_key, 0x100, &aes_key);

    char decrypted_str[1536] = {};
    decrypt_string(
        (unsigned char *)&decrypted_str[0],
        sizeof(decrypted_str),
        g_enc_hint2,
        sizeof(g_enc_hint2),
        aes_key);

    check_flags();
    puts(decrypted_str);
}

int prompt_3()
{
  puts("What do you do?\n");

  char user_input[200];
  read_input(user_input);

  if ( !check_scrambled_password(user_input) )
  {
    alarm_print(
      "Where could the third page possibly be? How could your fellow historian have been so careless with such a priceless artifact???");
  }

  strncpy(g_user_input3, user_input, 200);

  memcpy(g_enc_buf_flag, g_enc_buf3, sizeof(g_enc_buf_flag)); //;!swap

  char user_key[32] = {};
  AES_KEY aes_key;
  strncpy(user_key, g_user_input3, 25); //;!
  AES_set_decrypt_key((unsigned char *)user_key, 0x100, &aes_key);

  char decrypted_str[1536] = {};
  decrypt_string(
    (unsigned char *)&decrypted_str[0],
    sizeof(decrypted_str),
    g_enc_hint3,
    sizeof(g_enc_hint3),
    aes_key);

  check_flags();
  return puts(decrypted_str);
}

void prompt_4()
{
  puts("What do you do?\n");

  char user_input[200] = {};
  read_input(user_input);

  if ( !check_turn_over_page(user_input) )
  {
    alarm_print("You're so close to the final page! You survey all three pages you discovered in despair. So close yet so far.");
  }

  strncpy(g_user_input4, user_input, 200);

  memcpy(g_enc_buf3, g_enc_buf2, sizeof(g_enc_buf3)); //;!swap

  unsigned char user_key[32] = {};
  strncpy((char *)user_key, g_user_input4, 19); //;!key
  AES_KEY rsa_key;
  AES_set_decrypt_key(user_key, 0x100, &rsa_key);

  char decrypted_str[1536] = {};
  decrypt_string(
    (unsigned char *)&decrypted_str[0],
    sizeof(decrypted_str),
    g_enc_hint4,
    sizeof(g_enc_hint4),
    rsa_key);
    
  check_flags();
  puts(decrypted_str);
}

int main()
{
  puts(
    "You have heard rumours that the diary of Madame de Maintenon contained the secrets to a legendary plot.\n"
    "Good luck on your journey to uncovering the truth behind this mystery!");

  prompt_1();
  prompt_2();
  prompt_3();
  prompt_4();

  if (g_flag1 && g_flag2 && g_flag3)
  {
      // !!REACH HERE!!
      char str[32];
      auto user_key = strncpy(str, g_user_input.part2, 32);
      aes_decrypt_puts(user_key, g_enc_hint_final);
  }
  return 0;
}
