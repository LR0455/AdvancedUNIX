#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <setjmp.h>

void unbuffered() {
    setbuf(stdin, NULL);
    setbuf(stdout, NULL);
}

void showflag() {
    puts("FLAG{0verlapped_c0ntent_c0u1d_b_c0rrupted!}");
}
