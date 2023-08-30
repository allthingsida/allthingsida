# Introduction

>Madame de Maintenon (AKA "IDA lady") is locked in a castle and needs help to escape. Do you think you could free her? Be careful, you might get lost or caught by vicious guardians. Traps are laid along the way, so keep your eyes open, your mind sharp, and capture the flag.

One password is: `Fr33_M4dam3-De/M4inten0n`

- [Solution script](solution.py)
- [Wrong password picture](wrong.png)
- [Correct password picture](correct.png)
- [Download the CTF binary](free-madame-de-maintenon-challenge.zip)
- [Hex-Ray's blog](https://hex-rays.com/blog/free-madame-de-maintenon-ctf-challenge/)
- [Annotated IDA database](challenge.i64)

## Needed Ubuntu packages

sudo apt-get install libsdl2-image-2.0-0

## ChatGPT 4 - Prompt

Write a Python Z3 solver program for the following snippet. These are my addition requirements:

- The c_pass is 24 bytes long. It comes from the command line
- Add individual constraints code line for each class for allowed characters: A-Z, a-z, 0-9 and punctuation characters (+, -, *, /, %, &, |, ^, !, ~, <, >, =, ., ,, ?, :, ;, (, ), [, ], {, }, _, #, @, $, `)
- Get the result and make a string
- Print the string and offer to iterate for the next possible solution
- Be very careful with the casts below. When comparing against numbers, be explicit about their types (wrap them in correct Z3 objects)

Here's the code:

```c++
    if ( *(unsigned __int16 *)&c_pass[16]
       + *(unsigned __int16 *)&c_pass[22]
       - *(unsigned __int16 *)&c_pass[8]
       - *(unsigned __int16 *)&c_pass[14] != 7380 )
      goto bad_pass;

    if ( *(unsigned __int16 *)&c_pass[20]
       + *(unsigned __int16 *)&c_pass[6]
       + *(unsigned __int16 *)&c_pass[2]
       - *(unsigned __int16 *)&c_pass[10] != 55449 )
      goto bad_pass;

    q_16 = *(_QWORD *)&c_pass[16];
    if ( (*(_QWORD *)&c_pass[16] ^ *(_QWORD *)c_pass) != 0xA04233A475D1B72 )
      goto bad_pass;

    if ( *(_DWORD *)&c_pass[20]
       + 2 * *(_DWORD *)c_pass
       - 4 * *(_DWORD *)&c_pass[8]
       - (*(_DWORD *)&c_pass[16] >> 3)
       - (*(_DWORD *)&c_pass[4] >> 3) != 78988956 )
      goto bad_pass;

    if ( (*(_QWORD *)&c_pass[8] ^ q_16) != 0x231F0B21595D0455 )
      goto bad_pass;
```