;--------TAREA_13-----------------REPETIR_CANDENA_N_VECES----------------------------------------MAXIMILIANO_RUIZ_MANJARREZ------
;GITHUB: https://github.com/maxexee/universidad_Programas/tree/master/ensamblador_Programas-------------------------------------
;--------------------------------------------------------------------------------------------------------------------------------
.model  small;SEGMENTO DE --MODELO/MODEL--.

.stack;SEGMENTO DE --PILA/STACK--.
    
.data;SEGMENTO DE --DATOS/DATA--.
    
    msg1        db  "Ingresa una cadena:",13,10,"$"
    msg2        db  "Cuantas veces quieres que se repita la cadena: $"
    salto       db  13,10,  "$"
    cad         db  20  dup(" "),   "$"
    contador    db  2  dup(" "),   "$"
    
.code;SEGMENTO DE --CODIGO/CODE--.
inicio:

    mov ax, @data
    mov ds, ax
;--------------------------------------------------------------------------------------------------------------------------------
     
    mov ah, 09h
    lea dx, msg1
    int 21h
    
    mov ah, 3fh
    mov cx, 20
    mov dx, offset  [cad]
    int 21h
    
    mov ah, 09h
    lea dx, msg2
    int 21h
    
    mov ah, 3fh
    mov cx, 2
    mov dx, offset  [contador]
    int 21h
    
    mov cx, contador

    ciclo:

        cmp contador, 0
        je fin


        mov ah,09h
        lea dx,cad
        int 21h

        mov ah,09h
        lea dx,salto
        int 21h

        dec contador
        jmp ciclo


    fin:
        mov ah,4ch
        int 21h
        
end inicio