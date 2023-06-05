#include <stdio.h>
#include <unistd.h>

unsigned long long timestamp();


int main(){
    unsigned long long tsp1,tsp2;



    int i;
    for (i =0; i<10;i++){
        tsp1 = timestamp();
        wait(1);
        tsp2 = timestamp();
        printf("Ilosc cykli: %llu\n", tsp2-tsp1);

    }






    return 0;

}