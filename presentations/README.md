# Presentations

Here you will find presentations from various conferences and events I attended.

## [Starcraft: Emulating a buffer overflow for fun and profit - Elias Bachaalany](StarCraft_EUD_Emulator.pdf)

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

- [StarCraft EUD Emulator.pdf](StarCraft_EUD_Emulator.pdf)
- [Presentation video + backstory](https://youtu.be/fcdUEpI0gyE)
