#include <stdio.h>
#include <unistd.h>
#include <string.h>

void unbuffered() {
    setbuf(stdin, NULL);
    setbuf(stdout, NULL);
}

void showflag() {
    puts("FLAG{buffer_5ize_i5_critic@1!}");
}
