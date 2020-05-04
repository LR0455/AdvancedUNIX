#include <stdio.h>
#include <sys/types.h>
#include <dlfcn.h>

int chdir(const char *path) {
    static uid_t (*chdir_fun)(const char*) = NULL; /* function pointer */
    // chdir in libc isn't exist, link
    if(chdir_fun == NULL) {
        void *handle = dlopen("libc.so.6", RTLD_LAZY);
        if(handle != NULL)
            chdir_fun = dlsym(handle, "chdir");
    }
    printf("inject success\n");
    // use chdir in libc
    int result;
    if(chdir_fun != NULL)
        result = chdir_fun(path);
    return result;
}