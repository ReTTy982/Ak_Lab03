# Lab03 laczenie C z as

# Zad1
# Napisac kod w as ktory najpierw wywola funkcje scanf, potem printf raz. 
# char *, short 

# nm

# Zad2

# W as           gcc -O3
# as wyswietlic w C
# xor %eax, %eax
# cpuid
# rdtsc



# Zad3
# Plik w C zmienne globalne char *, short
# Plik w as, uzyc zmiennych z C
# Plik w as ze zmiennymi char *, short
# Plik w C uzyc zmiennych z as

# Zad4
# Pomiar czasu trwania :
# Operacja na rejestrze
# Operacja na pamieci
# Czas dzialania funkcji printf
# z enterem na koncu i bez 




.data

scanf_str: .asciz "%d%s"
printf_str: .asciz "%d , %printf_str"

# scanf_str: .ascii "%c, %4s"
# printf_str: .string "%c'\n %s"

x: .long 1
y: .long 2

as_short: .space 4 
test: .space 4
tekst: .ascii

.text

.global main

main:

push %ebp
movl %esp, %ebp

push $as_short
push $test
push $scanf_str
call scanf

push as_short
push $test
push $printf_str
call printf

movl %ebp, %esp
pop %ebp
ret





