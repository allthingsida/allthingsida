# CatBert CTF challenge - notes

Here you will find notes and supporting files for the CatBert CTF challenge walkthrough video: [https://youtu.be/B1hE2z5JmLo](https://youtu.be/B1hE2z5JmLo).

## Files

- `angr` - Standalone driver C program with the VM interpreter.
- `angr/bin` - Angr scripts for the challenge.
- `ctf_files` - Challenge files.
- `cuda` - CUDA Adler 32 hash brute force.
- `disasm` - VM specs + disassembler + disassemble as x64 assembly.
- `disasm/bytecodes` - All CTF bytecodes in pseudo code format (IDB database + ASM + .o files).
- `eufi` - EUFI tools and ShellPkg binaries and PDB. Unzip with the 'allthingsida' password.
- `files` - The encrypted and decrypted flag files and EFI programs.
- `idb` - The IDA Pro database for Catbert.
- `klee` - Decompiled bytecode and adapted to KLEE for symbolic execution.
- `pictures` - A series of screenshots.
- `src` - Misc source code to parse the C4TB files, generate code, compute flags, etc.

## Passwords / Flags

1. DaCubicleLife101
2. G3tDaJ0bD0neM4te
3. VerYDumBpassword
4. BrainNumbFromVm!

## Klee notes

Pulling the docker image and running it.

```bash
docker pull klee/klee:2.3
docker run -it  --name klee_instance1 -v %cd%/work:/home/klee/work klee/klee:2.3

docker start klee_instance1
# OR
docker attach klee_instance1
```

Running klee example.
```bash
clang-11 bc11-klee.cpp -emit-llvm -c -g
klee bc1-klee
ktest-tool klee-out-8/test000002.ktest
```

## Links

- https://github.com/binarly-io/efiXplorer

- UEFI Tool - https://github.com/LongSoft/UEFITool/releases
- Adler32 - 'password' hash https://devel0pment.de/?p=587
- CUDA - https://developer.nvidia.com/cuda-downloads?target_os=Windows&target_arch=x86_64&target_version=10&target_type=exe_local
- The PigletVM - https://github.com/vkazanov/bytecode-interpreters-post/?tab=readme-ov-file

EDK 2
- https://github.com/tianocore/tianocore.github.io/wiki/Getting-Started-with-EDK-II
- https://medium.com/@kartikaybhardwaj77/writing-your-first-uefi-firmware-hello-world-with-edk-ii-ef153e8424e4
- https://github.com/louisbyun/Creating-a-Simple-UEFI-Application-with-EDK2-and-Visual-Studio-2022-A-Beginner-s-Guide
- https://medium.com/@kartikaybhardwaj77/mastering-uefi-driver-development-with-edk2-a-step-by-step-guide-061f44eca3b6
