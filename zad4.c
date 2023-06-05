#include <stdio.h>
#include <unistd.h>

unsigned long long timestamp();
void memory_test();
void register_test();


int main()
{
    unsigned long long tsc1, tsc2;

    tsc1 = timestamp();
    memory_test();
    tsc2 = timestamp();

    printf("Dostęp do pamięci: %llu\n", tsc2 - tsc1);

    tsc1 = 0;
    tsc2 = 0;


    tsc1 = timestamp();
    register_test();
    tsc2 = timestamp();

    printf("Dostęp do rejestru: %llu\n", tsc2 - tsc1);



}