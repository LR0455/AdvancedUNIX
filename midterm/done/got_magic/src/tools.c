#include <stdio.h>
#include <unistd.h>
#include <string.h>

void unbuffered() {
    setbuf(stdin, NULL);
    setbuf(stdout, NULL);
}

void showflag() {
    puts("FLAG{Use_fu11_RELR0_w0uld_B_5afer!}");
}
