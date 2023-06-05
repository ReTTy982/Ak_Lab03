#include <stdio.h>
#include <unistd.h>

unsigned long long timestamp();


int main()
{
    unsigned long long tstamp1, tstamp2;
    tstamp1 = timestamp();
    sleep(1);
    tstamp2 = timestamp();

    printf("Cykle: %llu\n", tstamp2 -tstamp1);
    return 0;
}