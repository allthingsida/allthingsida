#include "windowthreadhotkey.h"
#include <conio.h>

extern "C" void do_eject()
{
    printf("ejecting...\n");
}

int main() {
    CWindowThreadHotkey w;
    w.start();
    printf("hello....press any key to exit()\n");
    _getch();
    w.stop();
    return -1;
}
