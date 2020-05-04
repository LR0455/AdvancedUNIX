#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <dlfcn.h>
#include <stdarg.h>
#include <string.h>
//#include <math.h>
//#include <unistd.h>

int reject(char *func_name) {
    const char reject_func[10][10] = {"execl", "execle", "execlp", "execv", "execve", "execvp", "system"};
    for (int k = 0 ; k < 7 ; k ++) {
        bool same = true;
        int fl = strlen(func_name), rl = strlen(reject_func[k]);
        if (fl != rl) continue;
        for (int i = 0; i < fl; i++)
            if (func_name[i] != reject_func[k][i]) {
                same = false;
                break;
            }
        if (same) return 1;
    }
    return 0;
}
char invalid_path[100];
bool valid(const char *path) {
    char *exist;
    char *cwd = getenv("BASE_DIR"), cwd_path[100];
    exist = realpath(cwd, cwd_path);
    if (exist == NULL)
        return false;
    char real_path[100];
    exist = realpath(path, real_path);
    if (exist == NULL) // not exist
        return false;
    // cwd=. real_path=./abc
    strcpy(invalid_path, path);
    return (strncmp(cwd_path, real_path, strlen(cwd_path)) == 0);
}

#define EXEC_REJECT 1
#define INVALID_DIR 2
#define ARGV(...) __VA_ARGS__
#define FUNC(type, func_name, func_argv, argv, path_valid, print_err, ret_err)        \
    static type (*func_name##_ptr)(func_argv) = NULL; /* function pointer */          \
    type func_name(func_argv) {                                                       \
        void *handle = dlopen("libc.so.6", RTLD_LAZY);                                \
        if(handle != NULL)                                                            \
            func_name##_ptr = dlsym(handle, #func_name);                              \
        if(reject(#func_name) == 1) {                                                 \
            print_err                                                                 \
	        return ret_err;                                                           \
        }                                                                             \
        if (path_valid) {                                                             \
            print_err                                                                 \
            return ret_err;                                                           \
	    }                                                                             \
	    printf("%s",#func_name);\
	    type result;                                                                  \
        if (func_name##_ptr != NULL)                                                  \
            result = func_name##_ptr(argv);                                           \
        return result;                                                                \
    }

void err_msg(const char* name, const char* cmd, int flag);

FUNC(int, chdir,ARGV(const char *path), ARGV(path), !valid(path), err_msg("chdir", invalid_path, INVALID_DIR);, -1);
FUNC(int, chmod,ARGV(const char *pathname, mode_t mode), ARGV(pathname, mode), !valid(pathname),err_msg("chmode", invalid_path, INVALID_DIR);, -1);
FUNC(int, chown,ARGV(const char *pathname, uid_t owner, gid_t group), ARGV(pathname, owner, group), !valid(pathname),err_msg("chown", invalid_path, INVALID_DIR);, -1);
FUNC(int, creat,ARGV(const char *pathname, mode_t mode), ARGV(pathname, mode), !valid(pathname),err_msg("creat", invalid_path, INVALID_DIR);, -1);
FUNC(int, creat64,ARGV(const char *pathname, mode_t mode), ARGV(pathname, mode), !valid(pathname),err_msg("creat", invalid_path, INVALID_DIR);, -1);

FUNC(FILE *, fopen,ARGV(const char *pathname, const char *mode), ARGV(pathname, mode), !valid(pathname),err_msg("fopen", invalid_path, INVALID_DIR);, NULL);
FUNC(FILE *, fopen64,ARGV(const char *pathname, const char *mode), ARGV(pathname, mode), !valid(pathname),err_msg("fopen", invalid_path, INVALID_DIR);, NULL);

FUNC(int, link,ARGV(const char *oldpath, const char *newpath), ARGV(oldpath, newpath), !valid(oldpath) || !valid(newpath),err_msg("link", invalid_path, INVALID_DIR);, -1);

FUNC(int, mkdir,ARGV(const char *pathname, mode_t mode), ARGV(pathname, mode),!valid(pathname),err_msg("mkdir", invalid_path, INVALID_DIR);, -1);

FUNC(int, open,ARGV(const char *pathname, int flags), ARGV(pathname, flags), !valid(pathname),err_msg("open", invalid_path, INVALID_DIR);, -1);
FUNC(int, open64,ARGV(const char *pathname, int flags), ARGV(pathname, flags), !valid(pathname),err_msg("open", invalid_path, INVALID_DIR);, -1);
FUNC(int, openat,ARGV(int dirfd, const char *pathname, int flags), ARGV(dirfd, pathname, flags), !valid(pathname),err_msg("openat", invalid_path, INVALID_DIR);, -1);
FUNC(int, openat64,ARGV(int dirfd, const char *pathname, int flags), ARGV(dirfd, pathname, flags), !valid(pathname),err_msg("openat", invalid_path, INVALID_DIR);, -1);
FUNC(struct DIR*, opendir,ARGV(const char *name), ARGV(name), !valid(name),err_msg("opendir", invalid_path, INVALID_DIR);, NULL);

FUNC(ssize_t, readlink,ARGV(const char *pathname, char *buf, size_t bufsiz), ARGV(pathname, buf, bufsiz), !valid(pathname),err_msg("readlink", invalid_path, INVALID_DIR);, -1);
FUNC(int, remove,ARGV(const char *pathname), ARGV(pathname), !valid(pathname),err_msg("remove", invalid_path, INVALID_DIR);, -1);
FUNC(int, rename,ARGV(const char *oldpath, const char *newpath), ARGV(oldpath, newpath), !valid(oldpath) || !valid(newpath),err_msg("rename", invalid_path, INVALID_DIR);, -1);
FUNC(int, rmdir,ARGV(const char *pathname), ARGV(pathname), !valid(pathname),err_msg("rmdir", invalid_path, INVALID_DIR);, -1);

FUNC(int, __xstat,ARGV(int vers, const char *name, struct stat *buf), ARGV(vers, name, buf), !valid(name),err_msg("__xstat", invalid_path, INVALID_DIR);, -1);
FUNC(int, __xstat64,ARGV(int vers, const char *name, struct stat *buf), ARGV(vers, name, buf), !valid(name),err_msg("__xstat", invalid_path, INVALID_DIR);, -1);
FUNC(int, symlink,ARGV(const char *target, const char *linkpath), ARGV(target, linkpath), !valid(target) || !valid(linkpath),err_msg("symlink", invalid_path, INVALID_DIR);, -1 );

FUNC(int, unlink,ARGV(const char *pathname), ARGV(pathname), !valid(pathname),err_msg("unlink", invalid_path, INVALID_DIR);,-1);

FUNC(int, execl,ARGV(const char *path), ARGV(path),!valid(path), err_msg("execl", path, EXEC_REJECT);,-1);
FUNC(int, execle,ARGV(const char *file), ARGV(file),!valid(file), err_msg("execle", file, EXEC_REJECT);, -1);
FUNC(int, execlp,ARGV(const char *file), ARGV(file),!valid(file), err_msg("execlp", file, EXEC_REJECT);,-1);
FUNC(int, execv,ARGV(const char *path, char *const argv[]), ARGV(path, argv),!valid(path), err_msg("execv", path, EXEC_REJECT);, -1);
FUNC(int, execve,ARGV(const char *filename, char *const argv[], char *const envp[]), ARGV(filename, argv, envp),!valid(filename), err_msg("execve", filename, EXEC_REJECT);, -1);
FUNC(int, execvp,ARGV(const char *file, char *const argv[]), ARGV(file, argv),!valid(file), err_msg("execvp", file, EXEC_REJECT);, -1);

FUNC(int, system,ARGV(const char *command), ARGV(command),!valid("."), err_msg("system", command, EXEC_REJECT);,-1);

static FILE* tty = NULL;
void err_msg(const char* name, const char* cmd, int flag) {
    if (tty == NULL) {
        if (fopen_ptr == NULL) {
            void *handle = dlopen("libc.so.6", RTLD_LAZY);
            fopen_ptr = dlsym(handle, "fopen");
        }
        tty = fopen_ptr("/dev/tty", "w");
    }

    if (flag == EXEC_REJECT)
        fprintf(tty, "[sandbox] %s(%s): not allowed\n", name, cmd);
    if (flag == INVALID_DIR)
        fprintf(tty, "[sandbox] %s: access to %s is not allowed\n", name, cmd);

}

