 section .data
    ln db 10,13
    lonln equ 2
    msg db 'El resultado es: '


 section .bss
    resultado resb 1

 section .text
    global _start
    
 _start:
  mov bl, 128
  ror bl, 1 ;Desplazamiento a la derecha con ror

  add bl, 48
  mov [resultado], bl

  mov eax, 4
  mov ebx, 1
  mov ecx, msg
  mov edx, 17
  int 0x80

  mov eax, 4
  mov ebx, 1
  mov ecx, resultado
  mov edx, 1
  int 0x80

  mov eax, 4
  mov ebx, 1
  mov ecx, ln
  mov edx, lonln
  int 0x80

  mov eax, 1
  mov ebx, 0
  int 0x80
