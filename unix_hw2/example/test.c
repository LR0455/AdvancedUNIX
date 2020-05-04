#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>
#include <wait.h>
int main(int argc, char **argv) {
    pid_t pid = fork();

    if (pid == 0) {
        execvp("ls", argv);
        exit(-1);
    }
    else {
        waitpid(pid, 0, 0);
    }

}