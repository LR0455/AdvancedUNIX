#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>
#include <stdio.h>

void orw() {
    int fd = open("/home/orw/FLAG", O_RDONLY);
    char buf[1000] = {0};
    read(fd, buf, sizeof(buf));
    puts(buf);
}

