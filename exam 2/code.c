#include <stdio.h>

int sinisterPlan(int genome, int deviation);
void modifyDNA(int* strand, int catalyst);
int evolve(int mutation);

int main() {
    int nathaniel = 6;
    int essex = 4;

    int outcome = sinisterPlan(nathaniel, essex);
    // printf("Mutation outcome: %d\n", outcome);

    return 0;
}

int sinisterPlan(int genome, int deviation) {
    int chamber = 13;
    int spliced = chamber - genome + deviation;

    modifyDNA(&spliced, chamber);
    return evolve(spliced);
}

void modifyDNA(int* strand, int catalyst) {
    *strand += catalyst;
    *strand ^= (catalyst >> 1);
}

int evolve(int mutation) {
    if ((mutation & 0x01) != 0) {
        return mutation;
    } else {
        return evolve(mutation - 1);
    }
}
