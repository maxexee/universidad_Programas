;--------TAREA_7-----------------IMPRIMIR_NOMBRE_EN_V-------------------------------------------MAXIMILIANO_RUIZ_MANJARREZ------
;-------------------------------------------------------------------------------------------------------------------------------
;-------------------------------------------------------------------------------------------------------------------------------

.model small;SEGMENTO DE --MODELO/MODEL--.

.stack;SEGMENTO DE --PILA/STACK--.

;TAMA?O DE 25 A 80
;FILAS    0-24
;COLUMNAS 0-79

;SEGMENTO DE --DATOS/DATA--.
.data
    lv      db  "-$"
    
    lm      db  "M$"
    la      db  "A$"
    lx      db  "X$"
    
    lr      db  "R$"
    lu      db  "U$"
    li      db  "I$"
    lz      db  "Z$"
 
    ln      db  "N$"
    lj      db  "J$"
    lae     db  "E$"
    laz     db  "Z$"
       

;SEGMENTO DE CODIGO.
.code
inicio:;MAIN

    ;PASAMOS LOS DATOS DE --DATA-- AL REGISTRO --AX-- Y DESPUES AL --DS--.
    mov ax, @data
    mov ds, ax
    
    ;---------------------------------------------------------------------------------------------------------------
    
    mov ah, 02h ;--02H-- ES UNA PETICION QUE LLAMA AL CURSOS Y LO POSICIONA, SE MANDA AL REGISTRO --AH--.
    mov bh, 00  ;INSTRUCCION PARA USAR LA PAGINA 0.
    mov dh, 02  ;POSICIONAMOS EL CURSOR EN LA FILA 02 Y LA PASAMOS AL REGISTRO --DH--.
    mov dl, 04  ;POSICIONAMOS A SU VEZ AL CURSOS EN LA COLUMNA 04 Y LO PASAMOS AL REGISTRO --DL--.
    int 10h     ;ESTA INTRUCCION CONTROLO LOS SERVICIOS QUE NOS OFRECE LA PANTALLA.
    
    ;IMPRESION DEL MENSAJE EN LA POSICION QUE SE ENCUENTRA EL CURSOR (POSICION DADA EN LA INTRUCCION ANTERIOR).
    lea dx, lm
    mov ah, 09H
    int 21h
    
    ;------SE REPITEN LAS INTRUCCIONES, SOLO CAMBIAN LOS VALORES DE LAS COLUMNAS Y EL NOMBRE DEL MENSAJE-------
    
    mov ah, 02h
    mov bh, 00
    mov dh, 04
    mov dl, 08
    int 10h
    
    lea dx, la
    mov ah, 09H
    int 21h
    
    mov ah, 02h
    mov bh, 00
    mov dh, 06
    mov dl, 12
    int 10h
    
    lea dx, lx
    mov ah, 09H
    int 21h
    
    mov ah, 02h
    mov bh, 00
    mov dh, 08
    mov dl, 16
    int 10h
    
    lea dx, lv
    mov ah, 09H
    int 21h

    mov ah, 02h
    mov bh, 00
    mov dh, 11
    mov dl, 24
    int 10h
    
    lea dx, lr
    mov ah, 09H
    int 21h
    
    mov ah, 02h
    mov bh, 00
    mov dh, 13
    mov dl, 28
    int 10h
    
    lea dx, lu
    mov ah, 09H
    int 21h
    
    mov ah, 02h
    mov bh, 00
    mov dh, 15
    mov dl, 32
    int 10h
    
    lea dx, li
    mov ah, 09H
    int 21h
    
    mov ah, 02h
    mov bh, 00
    mov dh, 17
    mov dl, 36
    int 10h
    
    lea dx, lz
    mov ah, 09H
    int 21h
    
    mov ah, 02h
    mov bh, 00
    mov dh, 17
    mov dl, 38
    int 10h
    
    lea dx, lm
    mov ah, 09H
    int 21h   
    
    mov ah, 02h
    mov bh, 00
    mov dh, 15
    mov dl, 40
    int 10h
    
    lea dx, la
    mov ah, 09H
    int 21h
    
    mov ah, 02h
    mov bh, 00
    mov dh, 13  
    mov dl, 42
    int 10h
    
    lea dx, ln
    mov ah, 09H
    int 21h

    mov ah, 02h
    mov bh, 00
    mov dh, 11
    mov dl, 44
    int 10h
    
    lea dx, lj
    mov ah, 09H
    int 21h
    
    mov ah, 02h
    mov bh, 00
    mov dh, 09
    mov dl, 46
    int 10h
    
    lea dx, la
    mov ah, 09H
    int 21h

    mov ah, 02h
    mov bh, 00
    mov dh, 07
    mov dl, 48
    int 10h
    
    lea dx, lr
    mov ah, 09H
    int 21h
    
    mov ah, 02h
    mov bh, 00
    mov dh, 05
    mov dl, 50
    int 10h
    
    lea dx, lr
    mov ah, 09H
    int 21h

    mov ah, 02h
    mov bh, 00
    mov dh, 03
    mov dl, 52
    int 10h
    
    lea dx, lae
    mov ah, 09H
    int 21h

    mov ah, 02h
    mov bh, 00
    mov dh, 01
    mov dl, 54
    int 10h
    
    lea dx, lz
    mov ah, 09H
    int 21h

    ;----------------------------------------------------------------------------------------------------------------

    mov ah, 4ch ;SOLICITUD PARA LA TERMINACION DEL PROGRAMA.
    int 21h     ;ESTA INTERRUPCION DA SALIDA A DOS (PANTALLA NEGRA)

end inicio