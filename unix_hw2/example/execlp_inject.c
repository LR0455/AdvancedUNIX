#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <dlfcn.h>
//#include <unistd.h>
#include <stdarg.h>

int execlp(const char *file, ...) {
    static int (*execlp_fun)(const char *file, const char *arg, ...) = NULL; /* function pointer */
    // chdir in libc isn't exist, link
    if(execlp_fun == NULL) {
        void *handle = dlopen("libc.so.6", RTLD_LAZY);
        if(handle != NULL)
            execlp_fun = dlsym(handle, "execlp");
    }
    printf("inject success\n");
    va_list valist;
    va_start(valist, file);
    // use opendir in libc
    int result;
    if (execlp_fun != NULL)
        result = execlp_fun(file, "ls");
    return result;
}