#include <stdio.h>
#include <stdint.h>

//extern uint64_t func(uint64_t n);
extern int funkcdod(int64_t *tab, size_t rozmiar);

int main() {
    //printf("Result for %d is %lu\n", 4, func(5));
    // Przykładowa tablica 
    int64_t tablica[] = {10, 20, 30, 40, 50};
    size_t rozmiar = sizeof(tablica) / sizeof(tablica[0]);
       
    // Wywołanie funkcji
    int suma = funkcdod(tablica, rozmiar);
       
    printf("Suma elementów tablicy: %d\n", suma);
return 0;
}