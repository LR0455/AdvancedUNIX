#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>
#include <sys/types.h>
#include <wait.h>
#include <stdbool.h>
#include <memory.h>
#include <errno.h>

void set_libc(char *file) {
    setenv("LD_PRELOAD", file, true);
}
void set_base_dir(char *path) {
    setenv("BASE_DIR", path, true);
}
__attribute__((constructor)) static void set_default_libc() {
    set_libc("./sandbox.so");
    set_base_dir(".");
}

int main(int argc, char **argv) {
    if (argc == 1) {
        printf("no command given.\n");
        return 0;
    }
    int arg_opt_pos = 0;
    bool cmd_arg = false;
    char inval_opt = 0;
    for (int i = 0; i < argc; i++) {
        if (strcmp(argv[i], "-h") == 0) {
            printf("usage: ./sandbox [-p sopath] [-d basedir] [--] cmd [cmd args ...]\n"
                   "        -p: set the path to sandbox.so, default = ./sandbox.so\n"
                   "        -d: the base directory that is allowed to access, default = .\n"
                   "        --: separate the arguments for sandbox and for the executed command\n");
            return 1;
        }
        else if (strcmp(argv[i], "-p") == 0)
            set_libc(argv[i+1]), arg_opt_pos = i+1;
        else if (strcmp(argv[i], "-d") == 0)
            set_base_dir(argv[i+1]), arg_opt_pos = i+1;
        else if (strcmp(argv[i], "--") == 0)
            arg_opt_pos = i, cmd_arg = true;
        else if (argv[i][0] == '-')
            inval_opt = argv[i][1];
    }
    if (inval_opt && !cmd_arg) {
        printf("./sandbox: invalid option -- '%c'\n"
               "usage: ./sandbox [-p sopath] [-d basedir] [--] cmd [cmd args ...]\n"
               "        -p: set the path to sandbox.so, default = ./sandbox.so\n"
               "        -d: the base directory that is allowed to access, default = .\n"
               "        --: seperate the arguments for sandbox and for the executed command\n", inval_opt);
        return 0;
    }
    char **exec_arg;
    int exec_arg_size = argc - (arg_opt_pos+1) + 1;
    exec_arg = malloc(sizeof(char*) * exec_arg_size);
    memset(exec_arg, 0, sizeof(char*) * exec_arg_size);
    int i, j;
    for (i = arg_opt_pos + 1, j = 0 ; i < argc ; i ++, j ++) {
        exec_arg[j] = argv[i];
    }
    for (i = 0 ; i < exec_arg_size - 1 ; i ++)
        printf("%s ", exec_arg[i]);
    printf("\n");

    execvp(exec_arg[0], exec_arg);

    return 0;
}
