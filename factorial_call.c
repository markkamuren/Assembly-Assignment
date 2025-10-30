#include <stdio.h>

int factorial(int n);  // assembly function declaration

int main() {
    int n = 5;
    int result = factorial(n);
    printf("Factorial of %d = %d\n", n, result);
    return 0;
}
