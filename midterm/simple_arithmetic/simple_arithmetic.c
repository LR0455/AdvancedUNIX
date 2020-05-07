#include "tools.c"
#include <stdio.h>
#include <stdlib.h>

int main() {
    unbuffered();

    puts("Welcome to the simple arithmetic test!");
    puts("Please complete the following 100 simple integer arithmetic problems!");
    puts("========");

    char opt[4] = {'+', '-', '*', '/'};
    for (int i = 0 ; i < 1000 ; i ++) {
        int a = (rand() % 1000000) + 1, b = (rand() % 10000) + 1;
        int opt_idx = rand() % 4;

        if (opt[opt_idx] == '/')
            a = b * ((rand()%10000)+1);
            
        printf("%d %c %d =? \n", a, opt[opt_idx], b);
       
        char ans[1000] = {0};
        scanf("%s", ans);
        int ans_num = atoi(ans);
        
        int res;
        if (opt[opt_idx] == '*')
            res = a*b;
        if (opt[opt_idx] == '/')
            res = a/b;
        if (opt[opt_idx] == '+')
            res = a+b;
        if (opt[opt_idx] == '-')
            res = a-b;

        if (res != ans_num)
            exit(0);         
    }
    showflag();
}

