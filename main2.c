#include <stdlib.h>
#include <stdio.h>

int main() {
    int status = system("./task2HW");
    printf("Program zakończył się z kodem: %d\n", status);
    return 0;
}