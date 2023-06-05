#include <stdio.h>

// Funkcja z assemblera
void function_from_as();


// Zmienne globalne w C
unsigned short c_short = 5;
char s[] = "String z C";
char* c_pointer =s;

// Zmienne as
extern short as_short;
extern char* as_pointer;




int main(){
    function_from_as();
    printf("%u\n", as_short);
    printf("%s\n", &as_pointer);

    
    return 0;

}