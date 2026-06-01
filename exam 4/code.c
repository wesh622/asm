#include <stdio.h>

int between(int a, int b);
void inside(int* a, int b);
void outside(int a, int* b);

int main() {
    int a = 15;
    int b = 20;

    int result = between(a, b);
    // printf("Result of inside: %d\n", result);

    return 0;
}

int between(int a, int b) {
    int c = 0;
    int d = 0;
    int e = 0;

    inside(&c, a);
    outside(b, &d);
    e = c + d;
    return e;
}

void inside(int* a, int b) {
    if (b & 0x01) {
        *a = b << 2;
    } else {
        *a = b >> 2;
    }
}

void outside(int a, int* b) {
    if (a & 0x01) {
        *b = a << 2;
    } else {
        *b = a >> 2;
    }
}

