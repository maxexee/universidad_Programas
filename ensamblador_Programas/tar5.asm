;--------TAREA_5-----------------PEDIR_SEPARADO_DATOS_CONCATENARLOS_DESPUES---------------------MAXIMILIANO_RUIZ_MANJARREZ------
;-------------------------------------------------------------------------------------------------------------------------------
;SEGMENTO DE --MODELO/MODEL--.
.model  small

;SEGMENTO DE --PILA/STACK--.
.stack


;SEGMENTO DE --DATOS/DATA--.
.data
    
    pedirNom    db  "Igresa tu nombre:  $"
    nom         db  10 dup(" "),   "$"
    
    pedirApp    db  "Ingresa tu apellido paterno:   $"
    app         db  13 dup(" "),   "$"
    
    pedirApm    db  "Ingresa tu apellido materno:   $"
    apm         db  13 dup(" "),   "$"
    
    pedirDir    db  "Ingresa tu direccion:  $"
    dir         db  35 dup(" "),   "$"
    
    pedirEda    db  "Ingresa tu edad:   $"
    eda         db  4  dup(" "),"$"
    
    imp1        db  "Usted se llama  $"
    imp2        db  ", vive en   $"
    imp3        db  "y tiene    $"
    imp4        db  "a",164,"os $"
    
;SEGMENTO DE --CODIGO/CODE--.
.code
inicio:;MAIN

    ;CARGAR SEGMENTO DE DATOS.
    mov ax, @data
    mov ds, ax
;-------------------------------------------------------------------------------------------------------------------------------
    
    ;MOSTRAR --pedirNom--.
    mov dx, offset  pedirNom
    mov ah, 09
    int 21H
    
    ;GUARDAR LA CADENA.
    mov ah, 3fh          ;--3fh-- NOS PERMITE INGRESAR CARACTERES HASTA EL MOMENTO DE DAT ENTER. MOVEMOS A --AH--.
    mov cx, 10          ;DEFINICION DE LA LONGITUD DE LA CADENA (DEBE CORRESPONDER CON LA SECCION --DATA--. MOVEMOS A --CX--.
    mov dx, offset  [nom];ASIGNAR EL TEXTO A LA VARIABLE    --nom--. MOVEMOS A --DX--.
    int 21H              ;INTERRUPCION QUE DESPLIEGA EN PANTALLA.
    ;------------------------------------------------------
    ;------------------------------------------------------
    
    ;MOSTRAR --pedirApp--.
    mov dx, offset  pedirApp
    mov ah, 09
    int 21H
    
    ;GUARDAR LA CADENA.
    mov ah, 3fh
    mov cx, 13
    mov dx, offset  [app]
    int 21H
    ;------------------------------------------------------
    ;------------------------------------------------------
    
    ;MOSTRAR --pedirApm--.
    mov dx, offset  pedirApm
    mov ah, 09
    int 21H
    
    ;GUARDAMOS LA CADENA.
    mov ah, 3fh
    mov cx, 13
    mov dx, offset  [apm]
    int 21H
    ;------------------------------------------------------
    ;------------------------------------------------------
    
    ;MSOTRAR --pedirDir--.
    mov dx, offset  pedirDir
    mov ah, 09
    int 21H
    
    ;GUARDAR LA CADENA.
    mov ah, 3fh
    mov cx, 35
    mov dx, offset  [dir]
    int 21H
    ;------------------------------------------------------
    ;------------------------------------------------------
    
    ;MOSTRAR --pedirEda--.
    mov dx, offset  pedirEda
    mov ah, 09
    int 21H
    
    ;GUARDAR LA CADENA.
    mov ah, 3fh
    mov cx, 4
    mov dx, offset  [eda]
    int 21H   
;---------------------------------------------------------------------------------

    ;IMPRIMIR --imp1--.
    mov dx, offset  imp1   
    mov ah, 09
    int 21H
    
    ;IMPRIMIR LA VARIABLE --nom--.
    lea dx, nom
    mov ah, 09H
    int 21H
    
    ;IMPRIMIR LA VARIABLE --app--.
    lea dx, app
    mov ah, 09H
    int 21H
    
    ;IMPRIMIR LA VARIABLE --apm--.
    lea dx, apm
    mov ah, 09H
    int 21H   
    
    ;IMPRIMIR --imp2--.
    mov dx, offset  imp2
    mov ah, 09
    int 21H
    
    ;IMPRIMIR LA VARIABLE --dir--.
    mov dx, offset  dir
    mov ah, 09
    int 21H
    
    ;IMPRIMIR --imp3--.
    mov dx, offset  imp3
    mov ah, 09
    int 21H
    
    
    ;IMPRIMIR LA VARIABLE --eda--.
    mov dx, offset  eda
    mov ah, 09
    int 21H    
    
    ;IMPRIMIR --imp4--.
    mov dx, offset  imp4
    mov ah, 09
    int 21H
    
;-------------------------------------------------------------------------------------------------------------------------------

    ;SOLICITUD PARA TERMINAR EL PROGRAMA E INTETTUPCION PAR LA SALIDA A --DOS--.
    mov ah, 4ch
    int 21H
end inicio;FIN MAIN