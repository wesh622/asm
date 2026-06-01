#include <stdio.h>

int starman(int bowie, int majorTom);
void groundControl(int* capsule, int gravity);
int planetEarth(int signal);

int main() {
    int bowie = 5;
    int majorTom = 3;

    int result = starman(bowie, majorTom);
    // printf("Transmission result: %d\n", result);

    return 0;
}

int starman(int bowie, int majorTom) {
    int orbit = 9;
    int message = orbit + bowie - majorTom;

    groundControl(&message, orbit);
    return planetEarth(message);
}

void groundControl(int* capsule, int gravity) {
    *capsule += gravity;
    *capsule ^= gravity;
}

int planetEarth(int signal) {
    if (signal & 0x01) {
        return signal << 1;
    } else {
        return signal >> 1;
    }
}

