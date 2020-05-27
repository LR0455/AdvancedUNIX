#include <stdio.h>
#include <string.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>

void readCode () {
    
    puts("\nPlease implement envvar() function that modifies /proc/self/environ for the current process.");
    puts("The envvar() should perform the following operations:\n");

    puts("1. assign a variable SECRET with a correct value that can bypass server checks, and");
    puts("   add the variable into /proc/self/environ of the current process.\n");
    
    puts("2. request the parent process to check for the variable SECRET by");
    puts("   printing out the message \"checkenv\" (without quotes) to standard output\n");
    
    puts("3. receive the check result from the parent process by");
    puts("   reading the message from standard input - it can be either \"pass\" or \"fail\"\n");
    
    puts("Please read the mainfile.c file for more details on how environment variables are checked.\n");
    puts("The prototype of your implemented function should be `void envvar(int)`\n");
    puts("Note: You have to include all the required header files by yourself.\n");
    puts("      Your source code will be compiled and then linked against the mainfile.c (using g++ compiler).");
    
    puts("Please paste your codes below, and");
    puts("use a single line containing only '//EOF' (without quotes) to submit your codes.");
    puts("====");

    fclose(fopen("env_func.c", "w"));

    char buf[1000] = {0};
    int fd = open("env_func.c", O_WRONLY);
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
