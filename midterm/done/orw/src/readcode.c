#include <stdio.h>
#include <string.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>

void readCode () {
    puts("\nThe FLAG file is storead in /home/orw/FLAG. Could you please read it out for me?\n");
    puts("Implement orw() function to read the flag and and dump its content to stanard output (descriptor 1).\n");
    puts("The prototype for your implemented function should be `void orw()`\n");
    puts("Note: you have to include all the required header files by yourself.\n");
    puts("Please paste your codes below, and");
    puts("use a single line containing only '//EOF' (without quotes) to submit your codes.");
    puts("=====");
   
    fclose(fopen("orw_func.c", "w"));

    char buf[1000] = {0};
    int fd = open("orw_func.c", O_WRONLY);
    while( gets(buf) ) {
        if (strcmp(buf, "//EOF") == 0)
            break;
        sprintf(buf, "%s\n", buf);
        write(fd, buf, strlen(buf));
    }
}

int main () {
    readCode();
}
