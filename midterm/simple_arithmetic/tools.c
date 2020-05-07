#include <stdio.h>
#include <unistd.h>
#include <string.h>

void unbuffered() {
    setbuf(stdin, NULL);
    setbuf(stdout, NULL);
}

void showflag() {
    printf("FLAG{h0w_f@st_can_U_do_simP1e_inteGer_@rithm@tic!}");
}
