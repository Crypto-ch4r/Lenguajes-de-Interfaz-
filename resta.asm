section .data
    resultado db 'El resultado es: ',10,13

section .text
    global _start

_start:
    mov eax, 8 
    mov ebx, 5
    sub eax, ebx
    add eax, 48
    mov [resultado],eax

    mov eax, 4
    mov ebx, 1
    mov ecx, resultado
    mov edx, 1
    int 0x80

    mov eax, 1
    xor ebx, ebx
    int 0x80