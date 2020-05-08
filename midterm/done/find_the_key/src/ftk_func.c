#include <sys/types.h>
#include <dirent.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <sys/stat.h>
#include <fcntl.h>

void my_ftk(char *file) {
    DIR *d = opendir(file);
    if (d == NULL) return;
    
    struct dirent *det;
    while((det = readdir(d)) != NULL) {
        if (det->d_type == DT_DIR) {
            if (strcmp(det->d_name, ".") == 0) continue;
            if (strcmp(det->d_name, "..") == 0) continue;
            
            char buf[1000] = {0};
            sprintf(buf, "%s/%s", file, det->d_name);
            my_ftk(buf);
        }
        else if (det->d_type == DT_REG) {
            if (strcmp(det->d_name, "FLAG") == 0) {
                sprintf(file, "%s/%s", file, det->d_name);
                int fd = open(file, O_RDONLY);
                char buf[1000] = {0};
                read(fd, buf, sizeof(buf));
                puts(buf);
                return;
            }
        }
    }

}

void find_the_key() {
    my_ftk("/usr/share/tree");
}
