#include <stdio.h>
#include <unistd.h>
#include <string.h>

void unbuffered() {
    setbuf(stdin, NULL);
    setbuf(stdout, NULL);
}

void showflag() {
    puts("FLAG{d0uble_free_c0uld_b_misu5ed!S3t_NULL_to_freed_P0inters!}");
}
