;--------TAREA_10-----------------SALIR_O_NO_SALIR-----------------------------------------------MAXIMILIANO_RUIZ_MANJARREZ------
;GITHUB: https://github.com/maxexee/universidad_Programas/tree/master/plf_Programas-------------------------------------
;--------------------------------------------------------------------------------------------------------------------------------

.model  small;SEGMENTO DE --MODELO/MODEL--.
    
.stack;SEGMENTO DE --PILA/STACK--.

.data;SEGMENTO DE --DATOS/DATA--.

    msj1    db  "Todavia no puedo correr TASM en Linux. ?Seguir corriendo el programa?    (s/n)",13,10,"$"
    salir   db  2   dup(" "),   "$"
    msjF    db  "Adios linuxero."
    noo     db  "n  $"
    sii     db  "s  $"
        

.code;SEGMENTO DE --CODIGO/CODE--.
inicio:

    mov ax, @data
    mov ds, ax
    
;--------------------------------------------------------------------------------------------------------------------------------

    mov dx, offset  msj1
    mov ah, 09
    int 21H
    
    mov ah, 3fh
    mov cx, 2
    mov dx, offset  [salir]
    int 21h
    
    mov al, salir
    cmp al, sii
    cmp al, noo
    
    ;JZ ->  SALTAR SI ES CERO.
    ;JE ->  SALTAR SI SON IGUALES.
    ;JC ->  SALTAR SI ES MAYOR QUE.
    ;JB ->  SALTAR SI ES MENOR QUE.
    
    je  igualesN
    
    je  igualesS
    
    igualesS:   
    
        jmp inicio
        
    igualesN:
        
        jmp fin

    fin:    
        mov ah, 09
        lea dx, msjF
        int 21h
;--------------------------------------------------------------------------------------------------------------------------------

    mov ah, 4ch
    int 21H
  
end inicio