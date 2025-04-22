section .text
global funkcdod

; int funkcja(int64_t *tab, size_t dlugosc)
; RDI - wskaźnik na tablicę (int64_t *tab)
; RSI - długość tablicy (size_t dlugosc)
funkcdod:
    xor rax, rax        ; Zerujemy rejestr RAX (będzie przechowywać sumę)
    xor rcx, rcx        ; Zerujemy rejestr RCX (będzie licznikiem pętli)
    cmp rsi, 0          ; Sprawdzamy czy długość tablicy jest równa 0
    je .koniec          ; Jeśli tak, kończymy funkcję (suma = 0)

.petla:
    add rax, [rdi + rcx*8]  ; Dodajemy element tablicy do sumy (każdy element ma 8 bajtów)
    inc rcx                  ; Zwiększamy licznik pętli
    cmp rcx, rsi             ; Porównujemy licznik z długością tablicy
    jl .petla                ; Jeśli licznik < długość, kontynuujemy pętlę

.koniec:
    ret                      ; Zwracamy wartość z RAX (suma elementów)