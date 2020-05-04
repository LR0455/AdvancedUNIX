#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <dlfcn.h>
#include <dirent.h>

DIR* opendir(const char *name) {
    static DIR* (*opendir_fun)(const char*) = NULL; /* function pointer */
    // chdir in libc isn't exist, link
    if(opendir_fun == NULL) {
        void *handle = dlopen("libc.so.6", RTLD_LAZY);
        if(handle != NULL)
            opendir_fun = dlsym(handle, "opendir");
    }
    printf("inject success\n");
    // use opendir in libc
    DIR *result;
    if (opendir_fun != NULL)
        result = opendir_fun(name);
    return result;
}