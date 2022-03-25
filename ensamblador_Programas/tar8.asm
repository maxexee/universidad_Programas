;--------TAREA_8-----------------IMPRIMIR_NOMBRE_EN_V-------------------------------------------MAXIMILIANO_RUIZ_MANJARREZ------
;GITHUB:https://github.com/maxexee/universidad_Programas/tree/master/plf_Programas-------------------------------------
;--------------------------------------------------------------------------------------------------------------------------------

.model  small;SEGMENTO DE --MODELO/MODEL--.
    
.stack;SEGMENTO DE --PILA/STACK--.
    
.data;SEGMENTO DE --DATOS/DATA--.

    msg     db  "Ensamblador es importante para entender los malwares.   $"        
    msg2    db  "Pantalla limpiada  $"


.code;SEGMENTO DE --CODIGO/CODE--.
inicio:

    mov ax, @data
    mov ds, ax
    
;--------------------------------------------------------------------------------------------------------------------------------

;CODIGO PARA CAMBIAR EL FONDO DEL --MS-DOS/CONSOLA--.
;ESTABLECEMOS EL AREA, EN DONDE LOS PRIMERO DOS DIGITOS SON EL RECORRIDO Y LOS SEGUIENTES DOS, EL TAMA?O DE PANTALLA. 
;--DD00H-- (D=DIGITO) DEFINE QUE EL TAMA?O ES PANTALLA COMPLETA.
    mov ax, 0600h
;SE DEFINE EN COLOR, EN SU ESTRUCTURA DE SIETE BITS, LA CUAL ES 1 111 1111 (TEXTO PARPADEA O NO, COLOR DE FONDO, COLOR DE TEXTO).
    mov bh, 01100000b
;ESTABLECER EL AREA DE DIBUJO, COLOCAR EL CURSOR EN LAS CORDENADAS (DD, FILAS / DD, COLUMNAS) Y MOVER AL REGISTRO --CX--.
    mov cx, 0000h
;ESTABLECER EL ANCHO Y ALTO DEL AREA DE DIBUJO A OCUPAR.
    mov dx, 184fh
;LLAMAR A LA INTERRUPCION DE LOS SERVICIOS DE PANTALLA.
    int 10H
    
;--------------------------------------------------------------------------------------------------------------------------------

    lea dx, msg
    mov ah, 09H
    int 21H
    
;CODIGO PARA LIMPAR LA --MS-DOS/CONSOLA--.
;ESTABLECEMOS EL AREA, EN DONDE LOS PRIMERO DOS DIGITOS SON EL RECORRIDO Y LOS SEGUIENTES DOS, EL TAMA?O DE PANTALLA. 
;--DD00H-- (D=DIGITO) DEFINE QUE EL TAMA?O ES PANTALLA COMPLETA.
    mov ax, 0600h
;SE DEFINE EN COLOR, EN SU ESTRUCTURA DE SIETE BITS, LA CUAL ES 1 111 1111 (TEXTO PARPADEA O NO, COLOR DE FONDO, COLOR DE TEXTO).
    mov bh, 01100000b
;ESTABLECER EL AREA DE DIBUJO, COLOCAR EL CURSOR EN LAS CORDENADAS (DD, FILAS / DD, COLUMNAS) Y MOVER AL REGISTRO --CX--.
    mov cx, 0000h
;ESTABLECER EL ANCHO Y ALTO DEL AREA DE DIBUJO A OCUPAR.
    mov dx, 184fh
;LLAMAR A LA INTERRUPCION DE LOS SERVICIOS DE PANTALLA.
    int 10H

;--------------------------------------------------------------------------------------------------------------------------------

    mov ah, 4ch
    int 21H
    
end inicio