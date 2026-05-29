#include <stdio.h>

int croissantStorm(int dough);
int knead(int fold, int glide);

int main() {
    int bun = 3;
    int oven = 5;
    int result = knead(bun, oven);
    result = croissantStorm(result);
//    printf("Result: %d\n", result);
    return 0;
}

int croissantStorm(int dough) {
    int layers = 7;
    layers += dough;
    if (layers < 20) {
        layers = croissantStorm(layers);
    }
    return layers;
}

int knead(int fold, int glide) {
    int mix = fold * 2 + glide;
    return mix;
}

