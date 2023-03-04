section .data
    resultado db '0',10,13 ;Lo inicializamos en cero

section .text
    global _start

_start:
; ------------------------------------------ SUMA-----------------------------------------------
 mov eax, 2 ; eax = 2
 mov ebx, 3 ; eax = 3
 add eax, ebx ; Suma el valor de ebx en eax
 add eax, 48 ; Suma 48 al registro eax para que imprima el caracter correcto en ASCII
 mov [resultado], eax ; Le estamos diciendo que modifique el valor del registro en si :)

; ------------------------------------------Impresion en pantalla -------------------------------
;Cargamos los registros para indicar que vamos a escribir en pantalla
 mov eax, 4
 mov ebx, 1
 mov ecx, resultado
 mov edx, 1 ;Solo se imprime un byte
 int 0x80 ;Salimos del programa

;-------------------------------------------FInalizacion de programa -----------------------------
 mov eax, 1
 mov ebx, 0
 int 0x80