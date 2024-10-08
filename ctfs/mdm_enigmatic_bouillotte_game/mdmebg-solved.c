/* This file was generated by the Hex-Rays decompiler version 8.4.0.240527.
   Copyright (c) 2007-2021 Hex-Rays <info@hex-rays.com>

   Detected compiler: GNU C++
*/

#include <defs.h>


//-------------------------------------------------------------------------
// Function declarations

void sub_618C477F3020();
void sub_618C477F3030();
void sub_618C477F3040();
void sub_618C477F3050();
void sub_618C477F3060();
void sub_618C477F3070();
void sub_618C477F3080();
void sub_618C477F3090();
void sub_618C477F30A0();
void sub_618C477F30B0();
void sub_618C477F30C0();
void sub_618C477F30D0();
void sub_618C477F30E0();
void sub_618C477F30F0();
// int puts(const char *s);
// int putc(int c, FILE *stream);
// int pause(void);
// void *malloc(size_t size);
// __int64 __printf_chk(_QWORD, const char *, ...); weak
// __int64 __isoc99_scanf(const char *, ...); weak
// __ssize_t getline(char **lineptr, size_t *n, FILE *stream);
// __int64 __sprintf_chk(_QWORD, _QWORD, _QWORD, const char *, ...); weak
__int64 sub_618C477F3390(void); // weak
__int64 sub_618C477F3410();
void __noreturn game_over();
void __fastcall menu_flag();
void term_proc();

//-------------------------------------------------------------------------
// Data declarations

char expected_bytes[] =
{
  '>',
  'P',
  '\v',
  '\xD9',
  '6',
  '\xDA',
  '\xA3',
  '`',
  '\xDA',
  '*',
  '\xD4',
  '\xEA',
  'F',
  '\xFF',
  'U',
  '\xE4',
  '*',
  '\xCD',
  '\xEB',
  'H',
  '\xC0',
  '8',
  '\xB2',
  '\t'
}; // weak
char xorbuf[24] =
{
  '}',
  '\x03',
  'I',
  '\x99',
  'Q',
  '\xB7',
  '\x1E',
  'H',
  '\xEF',
  ';',
  '\xDA',
  '\b',
  '\xBF',
  'w',
  '^',
  '\xDB',
  '\x96',
  '(',
  '\xF8',
  '\xDB',
  '\xD7',
  '\x0E',
  '\x0E',
  '\x1A'
};
FILE *stdout; // idb
FILE *stdin; // idb
_UNKNOWN hints_list;


//----- (0000618C477F3000) ----------------------------------------------------
__int64 (**init_proc())(void)
{
  __int64 (**result)(void); // rax

  result = &_gmon_start__;
  if ( &_gmon_start__ )
    return (__int64 (**)(void))_gmon_start__();
  return result;
}
// 618C477F7150: using guessed type __int64 _gmon_start__(void);

//----- (0000618C477F3020) ----------------------------------------------------
void sub_5A24313BA020()
{
  JUMPOUT(0LL);
}
// 618C477F3026: control flows out of bounds to 0

//----- (0000618C477F3030) ----------------------------------------------------
void sub_618C477F3030()
{
  sub_618C477F3020();
}

//----- (0000618C477F3040) ----------------------------------------------------
void sub_618C477F3040()
{
  sub_618C477F3020();
}

//----- (0000618C477F3050) ----------------------------------------------------
void sub_618C477F3050()
{
  sub_618C477F3020();
}

//----- (0000618C477F3060) ----------------------------------------------------
void sub_618C477F3060()
{
  sub_618C477F3020();
}

//----- (0000618C477F3070) ----------------------------------------------------
void sub_618C477F3070()
{
  sub_618C477F3020();
}

//----- (0000618C477F3080) ----------------------------------------------------
void sub_618C477F3080()
{
  sub_618C477F3020();
}

//----- (0000618C477F3090) ----------------------------------------------------
void sub_618C477F3090()
{
  sub_618C477F3020();
}

//----- (0000618C477F30A0) ----------------------------------------------------
void sub_618C477F30A0()
{
  sub_618C477F3020();
}

//----- (0000618C477F30B0) ----------------------------------------------------
void sub_618C477F30B0()
{
  sub_618C477F3020();
}

//----- (0000618C477F30C0) ----------------------------------------------------
void sub_618C477F30C0()
{
  sub_618C477F3020();
}

//----- (0000618C477F30D0) ----------------------------------------------------
void sub_618C477F30D0()
{
  sub_618C477F3020();
}

//----- (0000618C477F30E0) ----------------------------------------------------
void sub_618C477F30E0()
{
  sub_618C477F3020();
}

//----- (0000618C477F30F0) ----------------------------------------------------
void sub_618C477F30F0()
{
  sub_618C477F3020();
}

//----- (0000618C477F31E0) ----------------------------------------------------
__int64 __fastcall main(int argc, char **argv, char **envp)
{
  int choice; // [rsp+Ch] [rbp-6Ch] BYREF
  void (*menu_choices[5])(void); // [rsp+10h] [rbp-68h]
  unsigned __int64 _sec; // [rsp+48h] [rbp-30h]

  _sec = __readfsqword(0x28u);
  setvbuf(stdout, 0LL, 2, 0LL);

  puts(
    "You enter the room and see a beautifully decorated table with Madame de Maintenon and several other prominent royalt"
    "ies seated around it, ready to play Bouillotte. She gives you a smile and gestures to an empty seat.");
  pause();

  menu_choices[0] = menu_examine_bookshelf;
  menu_choices[1] = (void (*)(void))main;
  menu_choices[2] = menu_ignore_card_focus_game;
  menu_choices[3] = menu_flag;
  menu_choices[4] = menu_ask_mdm_about_the_card;

  puts(
    "MDM deals the first hand, and as the cards are laid out, you notice something peculiar:\n"
    "one of the cards has an unusual marking - a faint engraving that reads:\n"
    "\n"
    "\"Search for the book where the key lies.\"");

  pause();
  puts("\nChoices:\n\n  1. Examine the bookshelf\n  2. Ignore the card and focus on the game\n  3. Ask MDM about the card");
  pause();
  while ( 1 )
  {
    __printf_chk(1LL, "Make your choice: ");
    if ( (unsigned int)__isoc99_scanf("%d", &choice) == 1 && (unsigned int)(choice - 1) <= 2 )
      break;
    puts("\nThat's not a valid option.");
  }
  menu_choices[2 * choice - 2]();               // 0=-2, 1=0, 2=2, 3=4, 4=6
  return 0LL;
}
// 618C477F3180: using guessed type __int64 __printf_chk(_QWORD, const char *, ...);
// 618C477F31A0: using guessed type __int64 __isoc99_scanf(const char *, ...);

//----- (0000618C477F3300) ----------------------------------------------------
unsigned int install_alarm()
{
  signal(SIGALRM, alarm_handler);
  return alarm(1u);
}

//----- (0000618C477F3330) ----------------------------------------------------
// positive sp value has been detected, the output may be wrong!
void __fastcall __noreturn start(__int64 a1, __int64 a2, void (*a3)(void))
{
  __int64 v3; // rax
  int v4; // esi
  __int64 v5; // [rsp-8h] [rbp-8h] BYREF
  char *retaddr; // [rsp+0h] [rbp+0h] BYREF

  v4 = v5;
  v5 = v3;
  _libc_start_main((int (__fastcall *)(int, char **, char **))main, v4, &retaddr, 0LL, 0LL, a3, &v5);
  __halt();
}
// 618C477F333A: positive sp value 8 has been found
// 618C477F3341: variable 'v3' is possibly undefined

//----- (0000618C477F3360) ----------------------------------------------------
void *sub_1360()
{
  return &unk_618C477F7068;
}

//----- (0000618C477F3390) ----------------------------------------------------
__int64 sub_5A24313BA390()
{
  return 0LL;
}
// 618C477F3390: using guessed type __int64 sub_5A24313BA390();

//----- (0000618C477F33D0) ----------------------------------------------------
void *sub_13D0()
{
  void *result; // rax

  if ( !LOBYTE(hints_list[0]) )
  {
    if ( &__cxa_finalize )
      _cxa_finalize(off_618C477F7008);
    result = sub_618C477F3360();
    LOBYTE(hints_list[0]) = 1;
  }
  return result;
}

//----- (0000618C477F3410) ----------------------------------------------------
// attributes: thunk
__int64 sub_618C477F3410()
{
  return sub_618C477F3390();
}
// 618C477F3390: using guessed type __int64 sub_618C477F3390(void);

//----- (0000618C477F3420) ----------------------------------------------------
void __noreturn game_over()
{
  puts("Game Over!");
  pause();
  exit(1);
}

//----- (0000618C477F3450) ----------------------------------------------------
void __fastcall __noreturn menu_examine_bookshelf()
{
  puts(
    "You approach the bookshelf and find a book titled \"The Art of Playing Cards.\" You open it, and a hidden mechanism "
    "triggers the book, releasing a cloud of chloroform gas. You fall asleep and miss the rest of the game.");

  game_over();
}

//----- (0000618C477F3470) ----------------------------------------------------
void __fastcall alarm_handler(int signum)
{
  char *p; // rax
  char b_last; // si
  char _ch5; // cl

  if ( MEMORY[0x618C477F70C8] )
  {
    p = &xorbuf[6];
    b_last = g_last;
    _ch5 = xorbuf[5];
    do
      *p++ = _ch5;
    while ( p != &xorbuf[36] );

    xorbuf[5] = b_last;
  }
  // Set an alarm after 1 second
  alarm(1u);
}
// 618C477F7063: using guessed type char g_last;
// 618C477F70C8: using guessed type __int64 g_b_alarm_triggered;

//----- (0000618C477F34C0) ----------------------------------------------------
// local variable allocation has failed, the output may be wrong!
void __fastcall menu_flag()
{
  // [COLLAPSED LOCAL DECLARATIONS. PRESS NUMPAD "+" TO EXPAND]

  _sec = __readfsqword(0x28u);

  puts("\n");
  puts(
    "Looking around, you notice a painting on the wall depicting a historical scene. Behind the painting, you find a small chest.");
  pause();
  puts(
    "\n"
    "Choices:\n"
    "\n"
    "  1. Ignore the painting and the chest and search for more clues\n"
    "  2. Inspect the chest\n"
    "  3. Examine the painting closely");

  pause();
  while ( 1 )
  {
    __printf_chk(1LL, "Make your choice: ");
    if ( (unsigned int)__isoc99_scanf("%d", &_choice) == 1 && (unsigned int)(_choice - 1) <= 2 )
      break;
    puts("\nThat's not a valid option.");
  }

  if ( _choice == 2 )
  {
    puts(
      "Upon closer inspection, you trigger another trap. A mechanism locks the chest, and you cannot reveal what is hidden inside.");
    game_over();
  }

  if ( _choice != 3 )
  {
    puts(
      "You don’t pay much attention to the painting and continue searching. However, this decision leads you to miss essential clues.");
    game_over();
  }

  __printf_chk(
    1LL,
    "You decide to examine the painting on the wall closely. As you study it, you notice that one of the characters is ho"
    "lding a small scroll. You slide your finger up and hear a click from the chest lock.\n"
    "You open the chest and find a parchment with a partially revealed flag fragment: ");
  pause();

  hints_list[2] = "CTF{WH4";

  puts("CTF{WH4");
  pause();
  puts("\n");

  puts(
    "Returning to the table, Madame de Maintenon gives you a glance. She taps her fan against the table three times, and "
    "a hidden compartment opens. Inside, you find an old, ornate key with the initials \"SK\".");
  pause();

  puts(
    "Nearby, you see a carved wooden box that matches the key. You use the key to open the box and find another parchment"
    " with a ciphered message.");
  pause();

  puts(
    "\n"
    "Choices:\n"
    "\n"
    "  1. Attempt to decrypt the message\n"
    "  2. Ignore the parchment and search the room for other clues\n"
    "  3. Examine the box closely");
  pause();
  while ( 1 )
  {
    __printf_chk(1LL, "Make your choice: ");
    if ( (unsigned int)__isoc99_scanf("%d", &_choice) == 1 )
    {
      _choice_m1 = _choice - 1;
      if ( (unsigned int)(_choice - 1) <= 2 )
        break;
    }
    puts("\nThat's not a valid option.");
  }

  if ( (_choice_m1 & 1) != 0 )
  {
    puts(
      "Deciding to focus on other potential clues in the room, you begin a thorough search. As you move around the room, "
      "you inadvertently trigger a hidden mechanism. The walls start to close in, and you realize too late that this was "
      "a trap designed to eliminate those who stray too far away from the puzzle.");
    game_over();
  }

  if ( (_choice_m1 & 2) != 0 )
  {
    puts(
      "You decide to examine the intricately carved wooden box closely. As you inspect it, you notice subtle engravings a"
      "nd symbols. You take a closer look and find they form another ciphered message! You found... another piece of the flag?");
    hints_list[3] = (const char *)malloc(128uLL);
    __sprintf_chk(
      hints_list[3],
      1LL,
      128LL,
      "%d, %d, %d, %d, %d, %d, %d",
      (unsigned __int8)expected_bytes[7],
      (unsigned __int8)expected_bytes[8],
      (unsigned __int8)expected_bytes[9],
      (unsigned __int8)expected_bytes[10],
      (unsigned __int8)expected_bytes[11],
      (unsigned __int8)expected_bytes[12],
      (unsigned __int8)expected_bytes[13]);
    puts(hints_list[3]);
  }
  else
  {
    __printf_chk(
      1LL,
      "You carefully examine the ciphered message and attempt to decrypt it. After some effort, you manage to decipher the message: ");
    hints_list[4] = "Listen for the alarm";
    puts("Listen for the alarm");
  }

  puts("\n");

  puts(
    "Using the clues, you inspect the artifacts again. On the back of one of the books, you find a stamp stating: bouillotte_game.exe.");

  pause();

  puts(
    "\n"
    "Choices:\n"
    "\n"
    "  1. Analyze the binary for hidden clues\n"
    "  2. Search the room for a physical key\n"
    "  3. Ask another player for help");
  pause();
  while ( 1 )
  {
    __printf_chk(1LL, "Make your choice: ");
    if ( (unsigned int)__isoc99_scanf("%d", &_choice) == 1 && (unsigned int)(_choice - 1) <= 2 )
      break;
    puts("\nThat's not a valid option.");
  }

  _correct_count = _choice - 1;                 // 1 - 1 = 0
  if ( _choice != 1 )
  {
    if ( _choice == 2 )
      puts(
        "You spend valuable time searching the room for a physical key but find nothing. Meanwhile, other players advance"
        ", and you miss your chance to gather the final clue.");
    else
      puts(
        "The player you ask speaks only Latin and doesn’t understand what you are asking. Thus, you waste time and lose the game.");

    game_over();
  }

  _hint_idx = 1LL;
  __printf_chk(
    1LL,
    "You decide to use IDA Pro to analyze the binary file. As you open it and delve into the code, you encounter several "
    "challenges due to obfuscated functions and complex control flow patterns. Despite your efforts, the binary proves ex"
    "ceptionally intricate, and deciphering its true intent proves elusive. However, amidst the complexity, you manage to"
    " extract a partial clue: ");
  pause();

  hints_list[5] = (const char *)malloc(128uLL);
  __sprintf_chk(
    hints_list[5],
    1LL,
    128LL,
    "%d, %d, %d, %d, %d, %d, %d",
    (unsigned __int8)expected_bytes[0],
    (unsigned __int8)expected_bytes[1],
    (unsigned __int8)expected_bytes[2],
    (unsigned __int8)expected_bytes[3],
    (unsigned __int8)expected_bytes[4],
    (unsigned __int8)expected_bytes[5],
    (unsigned __int8)expected_bytes[6]);

  __printf_chk(1LL, "%s\n\n", hints_list[5]);

  puts("Armed with the pieces you’ve gathered:");
  pause();
  do
  {
    p_clue_str = hints_list[_hint_idx];

    if ( p_clue_str )
      __printf_chk(1LL, "  %d. %s\n", (unsigned int)_hint_idx, p_clue_str);

    ++_hint_idx;
  }
  while ( _hint_idx != 7 );

  puts("\nChoices:\n\n  1. Assemble the Flag with the pieces you’ve found\n  2. Look for more clues");
  pause();
  while ( 1 )
  {
    __printf_chk(1LL, "Make your choice: ");
    if ( (unsigned int)__isoc99_scanf("%d", &_choice) == 1 )
    {
      trigger_alarm = _choice;
      if ( (unsigned int)(_choice - 1) <= 1 )
        break;
    }
    puts("\nThat's not a valid option.");
  }

  msg = "Synthesizing the deciphered fragments, you methodically arranged them into the complete flag:\n";
  if ( _choice != 1 )
    msg = "Despite having assembled most of the flag, you opt to continue looking for additional clues. While your dedica"
          "tion is commendable, MDM subtly reminds you that time is of the essence. Realizing the completeness of your fi"
          "ndings, you swiftly consolidate the fragments into the final flag.\n";
  __printf_chk(1LL, msg);

  pause();

  __printf_chk(1LL, "Flag: ");
  __isoc99_scanf("%*[ \n]");
  lineptr = 0LL;
  *(_QWORD *)&_choice = 0LL;
  v6 = getline(&lineptr, (size_t *)&_choice, stdin);
  _flag_len = v6;
  for ( i = (int)v6 - 1; (int)i >= 0; --_flag_len )
  {
    _ch = lineptr[i];
    if ( _ch != ' ' && _ch != '\n' )
      break;
    lineptr[i--] = 0;
  }

  pause();
  _correct_flag_len = 24LL;

  MEMORY[0x618C477F70C8] = trigger_alarm;

  __printf_chk(1LL, "MDM ponders at the flag you've unveiled");
  if ( _flag_len <= 24 )
    _correct_flag_len = _flag_len;

  if ( !_flag_len )
  {
    putc('\n', stdout);
    goto not_right;
  }

  _i = 0LL;
  do
  {
    _correct_count += ((unsigned __int8)xorbuf[_i] ^ lineptr[_i]) == (unsigned __int8)expected_bytes[_i];

    for ( j = 0LL; j != 36; ++j )
      xorbuf[j] += j;

    ++_i;
    putc('.', stdout);
    pause();
  }
  while ( _correct_flag_len != _i );

  putc('\n', stdout);

  if ( _correct_count != 24 )
  {
not_right:
    puts("Hmm, that's not quite right. Are you sure?");
    game_over();
  }

  msg_1 = "Congratulations! You’ve successfully unveiled MDM’s hidden flag. Your attention to detail has not only solved "
          "the challenge but also earned the admiration of the participants and MDM herself!\n";

  if ( MEMORY[0x618C477F70C8] != 1 )
    msg_1 = "Congratulations! You have triumphed over the challenges presented by MAdame de Maintenon’s intricate puzzle."
            " She acknowledges your prowess with a nod of approval, making your success in this endeavor.\n";

  __printf_chk(1LL, msg_1);

  puts("Now, send the flag ASAP to marketing@hex-rays.com");
}
// 618C477F34C0: variables would overlap: lvar "_choice" ^40.4(user-defined) and stkvar "_choice" ^40.8(has user info)
// 618C477F3180: using guessed type __int64 __printf_chk(_QWORD, const char *, ...);
// 618C477F31A0: using guessed type __int64 __isoc99_scanf(const char *, ...);
// 618C477F31D0: using guessed type __int64 __sprintf_chk(_QWORD, _QWORD, _QWORD, const char *, ...);
// 618C477F70C8: using guessed type __int64 g_b_alarm_triggered;

//----- (0000618C477F3AD0) ----------------------------------------------------
void __fastcall menu_ask_mdm_about_the_card()
{
  puts(
    "Madame de Maintenon raises an eyebrow and smiles. \"Patience my dear, Patience. All will be revealed in time\" - she"
    " says. You gain her favor but miss a precious opportunity to find a better clue.");
  pause();
  menu_flag();
}

//----- (0000618C477F3B00) ----------------------------------------------------
void __fastcall menu_ignore_card_focus_game()
{
  __printf_chk(
    1LL,
    "You decide to ignore the card and focus on the game. As the game progresses, you notice another clue in the cards. T"
    "his time, it is a sequence of numbers written in the margins of the cards dealt to you: ");
  pause();

  hints_list[1] = (char *)malloc(128uLL);

  __sprintf_chk(
    hints_list[1],
    1LL,
    128LL,
    "%d, %d, %d, %d, %d, %d, %d",
    (unsigned __int8)xorbuf[0],
    (unsigned __int8)xorbuf[1],
    (unsigned __int8)xorbuf[2],
    (unsigned __int8)xorbuf[3],
    (unsigned __int8)xorbuf[4],
    (unsigned __int8)xorbuf[5],
    (unsigned __int8)xorbuf[6]);
  __printf_chk(1LL, "%s\n\n", hints_list[1]);

  menu_flag();
}
// 618C477F3180: using guessed type __int64 __printf_chk(_QWORD, const char *, ...);
// 618C477F31D0: using guessed type __int64 __sprintf_chk(_QWORD, _QWORD, _QWORD, const char *, ...);

//----- (0000618C477F3BC0) ----------------------------------------------------
void __fastcall roll_margin_numbers()
{
  __int64 i; // rax

  for ( i = 0LL; i != 36; ++i )
    xorbuf[i] += i;
}

//----- (0000618C477F3BE0) ----------------------------------------------------
void sub_1BE0()
{
  char *v0; // rax
  char v1; // si
  char v2; // cl

  if ( MEMORY[0x618C477F70C8] )
  {
    v0 = &xorbuf[6];
    v1 = g_last;
    v2 = xorbuf[5];
    do
      *v0++ = v2;
    while ( v0 != &xorbuf[36] );
    xorbuf[5] = v1;
  }
}
// 618C477F7063: using guessed type char byte_5063;
// 618C477F70C8: using guessed type __int64 qword_50C8;

//----- (0000618C477F3C24) ----------------------------------------------------
void term_proc()
{
  ;
}

// nfuncs=61 queued=31 decompiled=31 lumina nreq=0 worse=0 better=0
// ALL OK, 31 function(s) have been successfully decompiled
