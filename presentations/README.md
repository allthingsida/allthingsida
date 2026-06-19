# Presentations

Here you will find presentations from various conferences and events I attended.

## [SELECT * FROM binary - Vibe Reversing Across IDA, Ghidra, and Binary Ninja](./select_from_binary_vibe_re/vibe_re_xsql.pdf) | [REcon 2026 (Montreal)](https://cfp.recon.cx/recon-2026/talk/YACFKE/)

Vibe coding lets you describe the code you want and the agent writes it. Can we reverse-engineer the same way? This talk introduces the xSQL family — idasql, ghidrasql, bnsql, r2sql — tools that expose a live RE engine as SQL virtual tables, turning the binary into a database you can SELECT, UPDATE, and JOIN across IDA, Ghidra, and Binary Ninja.

Topics covered:

- libxsql: the C++ foundation that maps any tool's internals to SQLite virtual tables
- The xSQL family: idasql, ghidrasql, bnsql, r2sql
- libghidra: a C++/Python/Rust RPC bridge for Ghidra
- AI integration: skills that let an agent drive the tools via SQL
- Live demos: vibe reversing — describe what you want, the agent finds it

### Resources

- [Slides](./select_from_binary_vibe_re/vibe_re_xsql.pdf)

## [StarCraft: Emulating a buffer overflow for fun and profit - Elias Bachaalany](StarCraft_EUD_Emulator.pdf) | REcon 2018 (Brussels)

StarCraft 1.16.1 and older had a buffer overflow bug in the map parsing code. The hackers in South Korea leveraged the buffer overflow to create mods for the game. The mods became so popular that if we fix the buffer overflows we kill all the mods.

This talk shares the technical difficulties faced while solving this problem and also illustrates the various reverse engineering techniques used along the way:

- How I approached the problem and how the reverse engineering efforts helped solving them
- How I developed the tracers and instrumentation tools needed for the job
- How the emulator was designed

<br/>
<u>Notes for clarity:</u>
<br/>
While the title of this talk refers to the exploit as a "buffer overflow", in more accurate terms it is an "Out-of-Bounds Access" leading to a read/write anywhere. The original title was chosen to make it more relatable.

### Resources

- [StarCraft EUD Emulator.pdf](./StarCraft%20EUD%20Emulator/StarCraft_EUD_Emulator.pdf)
- [Presentation video](https://youtu.be/fcdUEpI0gyE)

## [Inside IDA's Bochs Debugger Plugin: The lost REcon 2012 talk](./Inside%20the%20IDA%20Bochs%20Debugger%20Plugin/allthingsida-Designing_a_minimal_operating_system.pdf)

Back in 2012, I presented a talk, at the REcon (Montreal) conference, entitled "Designing a minimal operating system to emulate 32/64bits x86 code snippets, shellcode or malware in Bochs". This talk was never released and perhaps was lost or never recorded.

The Bochs software emulator served as the backend for the IDA Bochs Plugin. On MS Windows, Bochs ships with "bochsdbg.exe" which provides a command line interpreter based debugger with which the IDA Bochs plugins communicates via stdio redirection. While this is not enough, a complete system was devised to complete the full integration with IDA: a minimal operating system (boot sector + 32/64 bits minimal operating system) and the Bochs debugger plugin (disk image creation system + execution engine). At the end, we could debug Windows executables, shellcode/executable binary code and full Bochs disk images (say Windows XP Bochs images, etc.). The Bochs IDA plugin was released with IDA 5.4 back around November of 2008.

We touch upon various topics:

- System design
- Debugging 16 bits DOS code and 64bits ring0 code with IDA
- A light introduction to master boot record
- IDT/GDT
- Minimal operating system that mimics the Windows environment
- Advanced configurations of the Bochs debugger plugin
- File format design
- Guest to host and host to guest communication
- ...and more

### Resources

- [Slides](./Inside%20the%20IDA%20Bochs%20Debugger%20Plugin/allthingsida-Designing_a_minimal_operating_system.pdf)
- [Presentation Video](https://www.youtube.com/watch?v=r5T6JYcPmD0)
