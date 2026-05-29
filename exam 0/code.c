#include <stdio.h>

int setupQuality(int camera, int lens) {
    int quality = 0;
    quality += camera >> 1;
    
    if (quality < 50) {
        quality += lens << 2;
    }

    return quality;
}

void drawImage(int *a, int b) {
    if ((b ^0x1F) != 0) {
        *a = b ^ 2;
    } else {
        *a = b;
    }
}

int main(void) {
    int camera = 10;
    int lens = 5;
    int buffer = 0;

    int quality = setupQuality(camera, lens);
    drawImage(&buffer, quality);    

    // printf("Buffer: %d\n", buffer); // 27
    return 0;
}
