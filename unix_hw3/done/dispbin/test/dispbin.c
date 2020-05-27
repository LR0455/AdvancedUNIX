#include <stdio.h>

int main(){
    int a = rand()%1000;
    printf("%d\n", a);

    while(a) {
        printf("%d", a%2);
        a /= 2;
    }
    puts("");    
}
