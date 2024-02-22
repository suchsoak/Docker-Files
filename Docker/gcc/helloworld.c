#include <stdio.h>

#define ANSI_COLOR_RED     "\x1b[31m"
#define ANSI_COLOR_RESET   "\x1b[0m"

int main(){

    printf(ANSI_COLOR_RED);  
    printf("Hello World!!\n\n");  
    printf(ANSI_COLOR_RESET);  
    return 0;
}