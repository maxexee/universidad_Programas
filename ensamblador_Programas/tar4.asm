;--------TAREA_4-----------------PEDIR_DIRECCON_E_IMPRIMIRLA------------------------------------MAXIMILIANO_RUIZ_MANJARREZ------
;-------------------------------------------------------------------------------------------------------------------------------
;SEGMENTO DE --MODELO/MODEL-- SMALL.
.model  small

;SEGMENTO DE --PILA/STACK--.
.stack

;SEGMENTO DE --DATOS/DATA--.
.data

    msg1    db  "Ingresa tu direecion:   $"
    dir     db  300 dup(" "),   "$"
    msg2    db  13,10,"La direccion ingresada fue:  $"

;SEGMENTO DE --CODIGO/CODE--.
.code
inicio:;MAIN.
    
    ;CARGAR SEGMENTO DE DATOS.
    mov ax, @data
    mov ds, ax
;-------------------------------------------------------------------------------------------------------------------------------

    ;MOSTRAR -MSG1-- Y PEDIR LA DIRECCION.
    mov dx, offset  msg1
    mov ah, 09
    int 21H
    
    ;GUARMADOS LA CADENA.
    mov ah, 3fh          ;LA PETICION --3fh-- PERMITE INGRESAR CARACTERES HASTA DAR --ENTER--. MOVER AL REGISTRO --AH--.
    mov cx, 300          ;DEFINICION DE LA LOGITUD DE LA CADENA (IGUAL QUE LA SECCION --DATA--). MOVEMOS A --CX--.
    mov dx, offset  [dir];ASIGNAR EL EL TEXTO TECLEADO A LA VARIABLE --DIR--. MOVER A EL REGISTRO --DX--   
    int 21H              ;INTERRUPCION QUE PERMITE DESPLEGAR EN PANTALLA.
    
    ;NOTA: --CX-- ES EL REGISTRO CONTADOR.
    ;NOTA: OFFSET PERMITE HACER CORRIMIENTOS DE LOS RESGISTROS.
    
    ;MOSTRAR --MSG2--.
    mov dx, offset  msg2
    mov ah, 09
    int 21H
    
    ;MOSTRAR LA VARIABLE --DIR-- EN PANTALLA.
    mov dx, offset  dir
    mov ah, 09
    int 21H
;-------------------------------------------------------------------------------------------------------------------------------
    
    ;SOLICITUD PARA TERMINAR EL PROGRAMA E INTETTUPCION PAR LA SALIDA A --DOS--.
    mov ah, 4ch
    int 21H
end inicio;FINAL MAIN.