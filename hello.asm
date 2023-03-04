    section .data
    msg db 'Hello world! ^^', 0xa ; declara una cadena de caracteres y un salto de línea Ox para hexadecimal0
    len equ $ - msg ; define la longitud de la cadena como la dirección actual menos la dirección de la cadena

    section .text
      global _start ;Directives :)

      ;Esta seccion muestra el mensaje en consola
    _start: ;se establece el punto de entrada
      mov edx,len
      mov ecx,msg ;Direccion de la cadena de caracteres
      mov ebx,1 ; establece ebx en 1 para indicar la salida estándar
      mov eax,4 ; establece eax en 4 para indicar la llamada del sistema "write"
      int 0x80 ; hace la llamada al sistema para escribir la cadena en la salida estándar
      mov eax,1 ; establece eax en 1 para indicar la llamada del sistema "exit"
      int 0x80 ; hace la llamada al sistema para salir del programa