#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <dlfcn.h>
#include <unistd.h>

int __xstat(int vers, const char *name, struct stat *buf) {
    printf("A\n");
    static int (*statdir_fun)(int vers, const char*, struct stat*) = NULL; /* function pointer */
    // chdir in libc isn't exist, link
    if(statdir_fun == NULL) {
        void *handle = dlopen("libc.so.6", RTLD_LAZY);
        if(handle != NULL)
            statdir_fun = dlsym(handle, "__xstat");
    }
    printf("inject success\n");
    // use opendir in libc
    int result;
    if (statdir_fun != NULL)
        result = statdir_fun(vers, name, buf);
    return result;
}