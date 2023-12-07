#include <stdio.h>

extern int add_func(int a, int b);

int main() {
    int result = add_func(10, 20);
    printf("Result: %d\n", result);
    return 0;
}
