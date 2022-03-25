;--------TAREA_9-----------------PEDIR_Y_COPIAR_CADENA-------------------------------------------MAXIMILIANO_RUIZ_MANJARREZ------
;GITHUB: https://github.com/maxexee/universidad_Programas/tree/master/plf_Programas-------------------------------------
;--------------------------------------------------------------------------------------------------------------------------------

.model  small;SEGMENTO DE --MODELO/MODEL--.
    
.stack;SEGMENTO DE --PILA/STACK--.

.data;SEGMENTO DE --DATOS/DATA--.
    
    msj1    db  "Ingresa una peque",164,"a cadena:   ",13,10,"$"
    msj2    db  100 dup(" "),   "$"
    msj3    db  "Cadena copiada!",13,10,"$"
    msj4    db  100 dup(" "),   "$"

.code;SEGMENTO DE --CODIGO/CODE--.
inicio:

    mov ax, @data
    mov ds, ax
    mov es, ax;SE AGREGA UNA NUEVA INSTRUCCION, LA CUAL CONSTA DE PASAR LO DEL REGISTRO --AX-- AL REGISTRO --ES--.
 
;--------------------------------------------------------------------------------------------------------------------------------

    ;IMPRIMIMOS EL --MSJ1--.
    mov ah, 09h
    lea dx, msj1
    int 21h

    ;GUARDAMOS LO QUE EL USUARIO INGRESA EN LA VARIABLE --MSJ2--.
    mov ah, 3fh
    mov cx, 100
    mov dx, offset  [msj2]
    int 21h
    
    ;ESTE SEGMENTO ES DONDE SE HACE LA COPIA DEL --MSJ2-- AL --MSJ4--.
    cld         ;ESTE COMANDO PONE LA BANDERA EN CERO.
    mov cx, 100 ;LE DAMOS AL REGISTRO --CX-- UN ESPACIO DEL MISMO TAMA?O QUE EL DE LAS VARIABLES DEL SEGMENTO DE --DATA--.
    lea di, msj4;CARGAMOS EL --MSJ4--.
    lea si, msj2;CARGAMOS EL --MSJ2--.
    rep movsb   ;SE USAN LAS INTRUCCIONES --REP-- Y --MOVSB--. ESTO HACE QUE SE COPIE DEL --MSJ2-- AL --MSJ4--.
    
    ;IMPRIMIMOS EL --MSJ3--.
    mov ah, 09h
    lea dx, msj3
    int 21h
    
    ;IMPRIMIMOS EL --MSJ4--.
    mov ah, 09h
    lea dx, msj4
    int 21h
    
;--------------------------------------------------------------------------------------------------------------------------------
    mov ah, 4ch
    int 21h
    
end inicio