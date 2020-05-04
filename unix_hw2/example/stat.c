#include <sys/stat.h>
#include <stdio.h>
#define	FILE_NULL	"/dev/null"
int main() {
    struct stat st;
    stat(FILE_NULL, &st);
    printf("%ld\n", st.st_size);
    return 0;
}