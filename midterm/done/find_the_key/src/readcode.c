#include <stdio.h>
#include <string.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>

void readCode () {
    
    puts("\nThe FLAG file is hidden somewhere in the filesystem. Could you please find it for me?\n");
    puts("Implement find_the_key() function to find the regular file named FLAG and");
    puts("and dump its content to stanard output (descriptor 1).");
    puts("The file is placed somewhere inside `/usr/share/tree` directory.\n");

    puts("The prototype for your implemented function should be `void find_the_key()`\n");

    puts("Note: you have to include all the required header files by yourself.\n");

    puts("Please paste your codes below, and");
    puts("use a single line containing only '//EOF' (without quotes) to submit your codes.");
    puts("=====");

    fclose(fopen("ftk_func.c", "w"));

    char buf[1000] = {0};
    int fd = open("ftk_func.c", O_WRONLY);
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
