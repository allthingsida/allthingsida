# Yoda challenge - FlareOn 10

Supplementary files for the Allthings IDA video: [Y0da CTF challenge #flareon10 - Full walkthrough + Techniques](https://youtu.be/r_ZSqbkFSsc).

![Payload](payload.jpg "That's the flag, not!")

Some scripts are still missing / work in progress. I will update this repo as I go.

What's the secret?
>`patience_y0u_must_h4v3`

What's the flag?
>`P0w3rfu1_y0u_h4v3_b3c0m3_my_y0ung_flareaw4n@flare-on.com`

# Files

- `y0da-new.i64`: The clean and documented IDA database of the CTF.
- `yoda-exes.zip`: Contains both the original CTF executable and the cleanly de-obfuscated binary. Pass: 'infected'. Note: your AV software might be upset at these files. They are safe, but you can always use the de-obfuscated binary.
- `gadgets.bin`: Contains the raw gadgets from the payload.
- `base32.py`: Contains the implementation of the custom base 32 encode/decode.
- `rop_func.bin`: This is the ROP chain dumped as a function.
- `stitcher.py`: Script that can be invoked to stitch a function together (using function chunks).
- `encrypted_flag.bin`: The scrambled flag bytes.
- `payload.jpg`: The RC4 decrypted payload from the resources. It contains the encoded flag and the ROP gadgets.
- `main.cpp`: Contains some test functions and the lifting of some algorithms (flag decryption and API hashing routines, etc.).

# Links

- https://github.com/gxwum7/rc4pp/tree/master
- https://github.com/huaesthetica63/RC4
- https://github.com/nabooru/rc4/tree/master
- https://github.com/Zunawe/md5-c/tree/main
- https://github.com/ESultanik/mtwister
- https://crackstation.net/
- https://learn.microsoft.com/en-us/windows/win32/api/namedpipeapi/nf-namedpipeapi-createpipe
- https://www.mandiant.com/resources/blog/announcing-tenth-flare-on-challenge
- https://github.com/hasherezade/pe-bear
- [https://twitter.com/\_marklech\_](https://twitter.com/_marklech_)
