;--------TAREA_11-----------------NUMI_>_NUMF----------------------------------------------------MAXIMILIANO_RUIZ_MANJARREZ------
;GITHUB: https://github.com/maxexee/universidad_Programas/tree/master/ensamblador_Programas-------------------------------------
;--------------------------------------------------------------------------------------------------------------------------------
.model  small;SEGMENTO DE --MODELO/MODEL--.

.stack;SEGMENTO DE --PILA/STACK--.

.data;SEGMENTO DE --DATOS/DATA--.

    numI    db  10  dup(" "),    "$"
    numF    db  10  dup(" "),   "$"
    msg1    db  13,10,"Ingresa el numero inicial: $"
    msg2    db  "Ingresa el numero final (debe ser mayor al inicial): $"
    msg3    db  "Error, el numero final debe ser mayor al inicial.",13,10,  "$"

.code;SEGMENTO DE --CODIGO/CODE--.
inicio:
    mov ax, @data
    mov ds, ax
;--------------------------------------------------------------------------------------------------------------------------------

    ;MOSTRAMOS --MSG1--.
    mov ah, 09h
    lea dx, msg1
    int 21h
    
    ;ALMACENAMOS EL VALOR QUE INGRESE EL USUARIO EN --NUMI--.
    mov ah, 3fh
    mov cx, 10
    mov dx, offset  [numI]
    int 21h
    
    ;MOSTRAMOS --MSG2--.
    mov ah, 09h
    lea dx, msg2
    int 21h
    
    ;ALMACENAMOS EL VALOR QUE INGRESE EL USUARIO EN --NUMf--.
    mov ah, 3fh
    mov cx, 10
    mov dx, offset  [numF]
    int 21h
    
    ;COMPARAMOS LOS NUMERO.
    mov al, numI;MOVEMOS EL VALOR DE --NUMI-- AL REGISTRO --AL--.
    cmp al, numF;COMPARAMOS EL --NUMF-- CON EL VALOR EN EL REGISTRO --AL--.
    
    ;JZ ->  SALTAR SI ES CERO.
    ;JE ->  SALTAR SI SON IGUALES.
    ;JC ->  SALTAR SI ES MAYOR QUE.
    ;JB ->  SALTAR SI ES MENOR QUE.
    
    ;INICIALIZAMOS LAS FUNCIONES.
    
    jb  inicialMenor;FUNCI?N --JB-- QUE INDICA SI ES MENOR QUE.
    
    jc  inicialMayor;FUNCI?N --JC-- QUE INDICA SI ES MAYOR QUE.
    
    ;SI EL NUMERO INCIAL ES MAYOR QUE EL NUMERO FINAL, SE MANDA UN MENSAJE DE ERROR Y SE INICIA EL PROGAMA.
    inicialMayor:
        
        mov ah, 09h
        lea dx, msg3
        int 21h
        
        jmp inicio
    
    ;SI EL NUMERO INICIAL ES MENOR QUE EL FINAL, SE SALTA A LA FUNCION DE FIN.
    inicialMenor:
        jmp fin
    
    ;DESPLIGEGA LOS NUMERO INGRESADOR POR EL USUARIO EN EL ORDEN DE MENOR A MAYOR.
    fin:
        
        mov ah, 09h
        lea dx, numI
        int 21h
        
        mov ah, 09h
        lea dx, numF
        int 21h
;--------------------------------------------------------------------------------------------------------------------------------
    
    mov ah, 4ch
    int 21H  
    
end inicio