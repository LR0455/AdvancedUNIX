#include <stdio.h>
#include <unistd.h>
#include <dirent.h>
int main() {
    DIR *d = opendir(".");
    struct dirent *r = NULL;
    if (d == NULL)
         return 0;
    while((r=readdir(d)) != NULL)
        printf("%s\n", r->d_name);
}