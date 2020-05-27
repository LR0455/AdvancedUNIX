#include <stdio.h>
#include <stdlib.h>
int main() {
    int a[10] = {};
    for(int i = 0 ; i < 10 ; i ++) {
        a[i] = rand()%100;
        printf("%d ", a[i]);
    }
    puts("");

    for(int i = 0 ; i < 10 ; i ++)  
        for(int j = i+1 ; j < 10 ; j ++) 
            if (a[i] > a[j]) {
                int t = a[i];
                a[i] = a[j];
                a[j] = t;
            }
        
    for(int i = 0 ; i < 10 ; i ++) 
        printf("%d ", a[i]);
    puts("");


}
