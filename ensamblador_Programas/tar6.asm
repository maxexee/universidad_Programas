;--------TAREA_6-----------------TABLAS_DE_MULTIPLICAR(1-5)-------------------------------------MAXIMILIANO_RUIZ_MANJARREZ------
;-------------------------------------------------------------------------------------------------------------------------------
;SEGMENTO DE --MODELO/MODEL--.
.model  medium

;SEGMENTO DE --PILA/STACK--.
.stack

;SEGMENTO DE --DATOS/DATA--.
.data
    
    ;SE UTILIZA --09h (HEXADECIMAL)/ 9 (DECIMAL) PARA CREAR UN TABULAADOR HORIZAONTAL, ESTE TABULADOR SE APLICA DESPU?S DE 
    ;CADA CARACTER PARA DEJAR EL ESPACIO ENTRE ELLOS, DE ESTA FORMA: 
    ;(COMILLAS)CARACTER(COMILLAS), 09H,(COMILLAS)CARACTEER(COMILLAS).
    ;OTRA FORMA DE HACERLO ES CRANDO UNA CONSTANTE TABULADOR, DE TIPO --DB-- Y CON SU RESPECTIVO --$--:
    ;tab    db  09h,    (COMILLAS)$(COMILLAS) 
    
    t1x1    db  "1",09h,"x",09h,"1",09h,"=",09h,"1    $"
    t1x2    db  09H,"1",09h,"x",09h,"2",09h,"=",09h,"2    $"
    t1x3    db  13,10,"1",09h,"x",09h,"3",09h,"=",09h,"3    $"
    t1x4    db  09H,"1",09h,"x",09h,"4",09h,"=",09h,"4    $"
    t1x5    db  13,10,"1",09h,"x",09h,"5",09h,"=",09h,"5    $"
    t1x6    db  09H,"1",09h,"x",09h,"6",09h,"=",09h,"6    $"
    t1x7    db  13,10,"1",09h,"x",09h,"7",09h,"=",09h,"7    $"
    t1x8    db  09H,"1",09h,"x",09h,"8",09h,"=",09h,"8    $"
    t1x9    db  13,10,"1",09h,"x",09h,"9",09h,"=",09h,"9    $"
    t1x10   db  09H,"1",09h,"x",09h,"10",09h,"=",09h,"10  $"
    
    ;sep     db  13,10,"-------------------------------------------  $"
    
    t2x1    db  13,10,"2",09h,"x",09h,"1",09h,"=",09h,"2    $"
    t2x2    db  09H,"2",09h,"x",09h,"2",09h,"=",09h,"4    $"
    t2x3    db  13,10,"2",09h,"x",09h,"3",09h,"=",09h,"6    $"
    t2x4    db  09H,"2",09h,"x",09h,"4",09h,"=",09h,"8    $"
    t2x5    db  13,10,"2",09h,"x",09h,"5",09h,"=",09h,"10   $"
    t2x6    db  09H,"2",09h,"x",09h,"6",09h,"=",09h,"12   $"
    t2x7    db  13,10,"2",09h,"x",09h,"7",09h,"=",09h,"14   $"
    t2x8    db  09H,"2",09h,"x",09h,"8",09h,"=",09h,"16   $"
    t2x9    db  13,10,"2",09h,"x",09h,"9",09h,"=",09h,"18   $"
    t2x10   db  09H,"2",09h,"x",09h,"10",09h,"=",09h,"20  $"
    
    t3x1    db  13,10,"3",09h,"x",09h,"1",09h,"=",09h,"3    $"
    t3x2    db  09H,"3",09h,"x",09h,"2",09h,"=",09h,"6    $"
    t3x3    db  13,10,"3",09H,"x",09h,"3",09h,"=",09h,"9    $"
    t3x4    db  09H,"3",09h,"x",09h,"4",09h,"=",09h,"12   $"
    t3x5    db  13,10,"3",09h,"x",09h,"5",09h,"=",09h,"15   $"
    t3x6    db  09H,"3",09h,"x",09h,"6",09h,"=",09h,"18   $"
    t3x7    db  13,10,"3",09h,"x",09h,"7",09h,"=",09h,"21   $"
    t3x8    db  09H,"3",09h,"x",09h,"8",09h,"=",09h,"24   $"
    t3x9    db  13,10,"3",09h,"x",09h,"9",09h,"=",09h,"27   $"
    t3x10   db  09H,"3",09h,"x",09h,"10",09h,"=",09h,"30  $"
    
    t4x1    db  13,10,"4",09h,"x",09h,"1",09h,"=",09h,"4    $"
    t4x2    db  09H,"4",09h,"x",09h,"2",09h,"=",09h,"8    $"
    t4x3    db  13,10,"4",09H,"x",09h,"3",09h,"=",09h,"12    $"
    t4x4    db  09H,"4",09h,"x",09h,"4",09h,"=",09h,"16   $"
    t4x5    db  13,10,"4",09h,"x",09h,"5",09h,"=",09h,"20   $"
    t4x6    db  09H,"4",09h,"x",09h,"6",09h,"=",09h,"24   $"
    t4x7    db  13,10,"4",09h,"x",09h,"7",09h,"=",09h,"28   $"
    t4x8    db  09H,"4",09h,"x",09h,"8",09h,"=",09h,"32   $"
    t4x9    db  13,10,"4",09h,"x",09h,"9",09h,"=",09h,"35   $"
    t4x10   db  09H,"4",09h,"x",09h,"10",09h,"=",09h,"40  $"
    
    t5x1    db  13,10,"5",09h,"x",09h,"1",09h,"=",09h,"5    $"
    t5x2    db  09H,"5",09h,"x",09h,"2",09h,"=",09h,"10    $"
    t5x3    db  13,10,"5",09H,"x",09h,"3",09h,"=",09h,"15    $"
    t5x4    db  09H,"5",09h,"x",09h,"5",09h,"=",09h,"20   $"
    t5x5    db  13,10,"5",09h,"x",09h,"5",09h,"=",09h,"25   $"
    t5x6    db  09H,"5",09h,"x",09h,"6",09h,"=",09h,"30   $"
    t5x7    db  13,10,"5",09h,"x",09h,"7",09h,"=",09h,"35   $"
    t5x8    db  09H,"5",09h,"x",09h,"8",09h,"=",09h,"40   $"
    t5x9    db  13,10,"5",09h,"x",09h,"9",09h,"=",09h,"45   $"
    t5x10   db  09H,"5",09h,"x",09h,"10",09h,"=",09h,"50  $"
    
;SEGMENTO DE --CODIGO/CODE--.
.code
inicio:;MAIN

    ;CARGAR SEGMENTO DE DATOS.
    mov ax, @data
    mov ds, ax
;-------------------------------------------------------------------------------------------------------------------------------
    ;PARA IMPRIMIR EL TABULADOR.
    ;mov    ah, 09  LA INSTRUCCI?N --09-- NOS INDICA EL TABULADOR, ESTO SE MUEVE AL REGISTRO --AH--.
    ;lea    dx, tab AQUI SE TOMA EL VALOR DE --TAB-- Y SE MUESTRA EN PANTALLA.
    ;int    21H     INTERRUPCION

;--------------------------------------------TABLA DEL 1 -----------------------------------------------------------------------
    
    mov dx, offset  t1x1
    mov ah, 09
    int 21H
    
    mov dx, offset  t1x2
    mov ah, 09
    int 21H
    
    mov dx, offset  t1x3
    mov ah, 09
    int 21H
    
    mov dx, offset  t1x4
    mov ah, 09
    int 21H
    
    mov dx, offset  t1x5
    mov ah, 09
    int 21H
    
    mov dx, offset  t1x6
    mov ah, 09
    int 21H
    
    mov dx, offset  t1x7
    mov ah, 09
    int 21H
    
    mov dx, offset  t1x8
    mov ah, 09
    int 21H
    
    mov dx, offset  t1x9
    mov ah, 09
    int 21H
    
    mov dx, offset  t1x10
    mov ah, 09
    int 21H
    
;-------------------------------------------------------------------------------------------------------------------------------
    ;mov dx, offset  sep
    ;mov ah, 09
    ;int 21H
;--------------------------------------------TABLA DEL 2 -----------------------------------------------------------------------
    
    mov dx, offset  t2x1
    mov ah, 09
    int 21H
    
    mov dx, offset  t2x2
    mov ah, 09
    int 21H
    
    mov dx, offset  t2x3
    mov ah, 09
    int 21H
    
    mov dx, offset  t2x4
    mov ah, 09
    int 21H
    
    mov dx, offset  t2x5
    mov ah, 09
    int 21H
    
    mov dx, offset  t2x6
    mov ah, 09
    int 21H
    
    mov dx, offset  t2x7
    mov ah, 09
    int 21H
    
    mov dx, offset  t2x8
    mov ah, 09
    int 21H
    
    mov dx, offset  t2x9
    mov ah, 09
    int 21H
    
    mov dx, offset  t2x10
    mov ah, 09
    int 21H
    
;-------------------------------------------------------------------------------------------------------------------------------
    ;mov dx, offset  sep
    ;mov ah, 09
    ;int 21H
;--------------------------------------------TABLA DEL 3 -----------------------------------------------------------------------
    
    mov dx, offset  t3x1
    mov ah, 09
    int 21H
    
    mov dx, offset  t3x2
    mov ah, 09
    int 21H
    
    mov dx, offset  t3x3
    mov ah, 09
    int 21H
    
    mov dx, offset  t3x4
    mov ah, 09
    int 21H
    
    mov dx, offset  t3x5
    mov ah, 09
    int 21H
    
    mov dx, offset  t3x6
    mov ah, 09
    int 21H
    
    mov dx, offset  t3x7
    mov ah, 09
    int 21H
    
    mov dx, offset  t3x8
    mov ah, 09
    int 21H
    
    mov dx, offset  t3x9
    mov ah, 09
    int 21H
    
    mov dx, offset  t3x10
    mov ah, 09
    int 21H

;-------------------------------------------------------------------------------------------------------------------------------
    ;mov dx, offset  sep
    ;mov ah, 09
    ;int 21H
    ;--------------------------------------------TABLA DEL 4 -----------------------------------------------------------------------
    
    mov dx, offset  t4x1
    mov ah, 09
    int 21H
    
    mov dx, offset  t4x2
    mov ah, 09
    int 21H
    
    mov dx, offset  t4x3
    mov ah, 09
    int 21H
    
    mov dx, offset  t4x4
    mov ah, 09
    int 21H
    
    mov dx, offset  t4x5
    mov ah, 09
    int 21H
    
    mov dx, offset  t4x6
    mov ah, 09
    int 21H
    
    mov dx, offset  t4x7
    mov ah, 09
    int 21H
    
    mov dx, offset  t4x8
    mov ah, 09
    int 21H
    
    mov dx, offset  t4x9
    mov ah, 09
    int 21H
    
    mov dx, offset  t4x10
    mov ah, 09
    int 21H

;-------------------------------------------------------------------------------------------------------------------------------
    ;mov dx, offset  sep
    ;mov ah, 09
    ;int 21H
    ;--------------------------------------------TABLA DEL 5 -----------------------------------------------------------------------
    
    mov dx, offset  t5x1
    mov ah, 09
    int 21H
    
    mov dx, offset  t5x2
    mov ah, 09
    int 21H
    
    mov dx, offset  t5x3
    mov ah, 09
    int 21H
    
    mov dx, offset  t5x4
    mov ah, 09
    int 21H
    
    mov dx, offset  t5x5
    mov ah, 09
    int 21H
    
    mov dx, offset  t5x6
    mov ah, 09
    int 21H
    
    mov dx, offset  t5x7
    mov ah, 09
    int 21H
    
    mov dx, offset  t5x8
    mov ah, 09
    int 21H
    
    mov dx, offset  t5x9
    mov ah, 09
    int 21H
    
    mov dx, offset  t5x10
    mov ah, 09
    int 21H

;-------------------------------------------------------------------------------------------------------------------------------

    ;SOLICITUD PARA TERMINAR EL PROGRAMA E INTETTUPCION PAR LA SALIDA A --DOS--.
    mov ah, 4ch
    int 21H
end inicio