#include <stdio.h>
#include <unistd.h>
#include <string.h>

void unbuffered() {
    setbuf(stdin, NULL);
    setbuf(stdout, NULL);
}

void showflag() {
    puts("FLAG{we1c0me_to_AUP_midt3rm!}");
}
