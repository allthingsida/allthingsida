# Introduction

From the [blog post](https://hex-rays.com/blog/madame-de-maintenons-cryptographic-pursuit-unmasking-the-traitors/):

<blockquote>
In the heart of Versailles, an unexpected discovery sent ripples through the palace. 
Madame de Maintenon (the IDA Lady), the secret wife of Louis XIV, stumbled upon an unusual letter, containing a hidden plot for a coup.
This letter, with its strange symbols, triggered a quest for answers. 
With unwavering determination, Madame de Maintenon (aka Françoise d’Aubigné or Marquise de Maintenon), set out to 
uncover its secrets – very much like you, the adventurous participants of this CTF challenge. 
Each passing day brought new discoveries. Clues emerged, and with every piece found, the suspense deepened. 
Francoise’s journey reflects your own – a testament to preservance and intellect. 
As you delve into the story, remember that your goal is to uncover the location of the traitors, 
just as she sought the truth behind the enigmatic letter.
</blockquote>

In this folder, you will find the files I generated while solving the challenge. Mind you, I did not fully solve the challenge. I stopped at the second stage, which involves exploiting a vulnerabity in the RSA uses in the CTF. Even if I solved this challenge fully, unfortunately, I found no interesting uses cases that I can employ to show the power / features of IDA. Nonetheless, I still provided the fully documented IDB and source code of the CTF if you want to play with it.

Here are the walkthroughs I found online by [@Robert Yates](https://twitter.com/yates82/status/1731063546413298141) and [@Farenain](https://x.com/Farenain/status/1730497488136622092?s=20). Good job guys:

- [https://github.com/robert-yates/miscellaneous/blob/master/ctf-notes/hex-rays-2/hex-rays-ctf2.md#what-do-we-have](https://github.com/robert-yates/miscellaneous/blob/master/ctf-notes/hex-rays-2/hex-rays-ctf2.md#what-do-we-have)
- [https://farena.in/reverse%20engineering/ctf/hexrays-challenge2/](https://farena.in/reverse%20engineering/ctf/hexrays-challenge2/)

# Resources

- [CTF source code](./ctfsrc.cpp) (work in progress)
- [Fully reverse engineered database](madame.i64)
- [Z3 solver](z3-1.py) for the second check
- [The complete dialog / hints](dialog.md) for stage 1
- [Download the CTF binary](madame-binary.zip)
- [CTF Blog post](https://hex-rays.com/blog/madame-de-maintenons-cryptographic-pursuit-unmasking-the-traitors/)
- [Temporary/scratch/test files](.temp/)