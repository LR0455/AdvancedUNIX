#include <stdio.h>
#include <unistd.h>
int main() {
    chdir("..");
    printf("current working directory: %s\n", getcwd(NULL, 0));
}