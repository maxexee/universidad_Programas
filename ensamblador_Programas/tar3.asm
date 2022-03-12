;-----TAREA_3--------------------------PEDIR_CINCO_CARACTERES_E_IMPRIMIRLOS-------------MAXIMILIANO_RUIZ_MANJARREZ-------------
;------------------------------------------------------------------------------------------------------------------------------
.model  small   ;DEFINIOS EL TAMA?O DE MODELO DE MOMORIA A USAR, EL CUAL ES --SMALL--.

.stack          ;ASIGNAMOS EL SEGMENTO DE --PILA/SATCK--.

.data           ;ASIGNAMOS EL SEGMENTO DE --DATOS/DATA--.

    msg1    db  "Ingresa un caracter 1:  $"   ;INSTRUCCI?N.
    car1    db  ?                                   ;DECLARACI?N DE LA VARIABLE --CAR-- QUE CONTENDRA UN CARACTER INGRESADO VIA TECLADO.
    msg1_2  db  13,10,13,10,"El caracter 1 es:    $"       ;IMPRIMIR CARACTER INGRESADO.
    
    msg2    db  13,10,"Ingresa el caracter 2:  $";DOBLE SALTO DE LINEA PARA M?S ESTETICA.    
    car2    db  ?                                
    msg2_2  db  13,10,13,10,"El caracter 2 es:    $"
    
    msg3    db  13,10,"Ingresa el caracter 3:  $";DOBLE SALTO DE LINEA PARA M?S ESTETICA.    
    car3    db  ?                                
    msg3_2  db  13,10,13,10,"El caracter 3 es:    $"
    
    msg4    db  13,10,"Ingresa el caracter 4:  $";DOBLE SALTO DE LINEA PARA M?S ESTETICA.     
    car4    db  ?                                
    msg4_2  db  13,10,13,10,"El caracter 4 es:    $"
    
    msg5    db  13,10,"Ingresa el caracter 5:  $";DOBLE SALTO DE LINEA PARA M?S ESTETICA.      
    car5    db  ?                                
    msg5_2  db  13,10,13,10,"El caracter 5 es:    $"
    
.code           ;ASIGNAMOS EL SEGMENTO DE --CODIGO/CODE--.
inicio:;--MAIN--.
    
    mov ax, @data   ;MANDAMOS LA DIRECCI?N DE EL SEGMENTO --DATA-- AL REGISTTRO --AX--.                 
    mov ds, ax      ;MOVEMOS EL CONTENIDO DE --AX-- AL REGISTRO --DS--, EL CUAL NOS PERMITE MODIFICAR SU CONTENIDO.
;------------------------------------------------------------------------------------------------------------------------------ 
;------------------------------------MSG1--------------------------------------------------------------------------------------
    ;PEDIR CARACTER. 
    mov  ah,  09
    lea  dx, msg1 ;IMPRIME LA CONSTANTE --MSG1--.
    int  21H      ;INTERRUPCI?N.
    
    ;GUARDAR CARACTER INTRODUCIDO POR EL USUARIO.
    mov ah, 01H ;PEDIRLE A ASM QUE LEA EL CARCACTER QUE APARCE EN LA PANTALLA.
    int 21H     ;INTERRUPCI?N.
    sub al, 30H ;SE RESTA 30 EN HEXADECIMAL (48) AL REGISTRO --AL-- PARA OBTENER EL VALOR NUMERICO DEL CARACTER INGRESADO.
    mov car1, al;MOVER EL VALOR DE --AL-- A LA VARIABLE --CAR1--.
;------------------------------------------------------------------------------------------------------------------------------
;------------------------------------MSG2--------------------------------------------------------------------------------------

    ;PEDIR CARACTER. 
    mov  ah,  09
    lea  dx, msg2 
    int  21H      
    
    ;GUARDAR CARACTER INTRODUCIDO POR EL USUARIO.
    mov ah, 01H 
    int 21H     
    sub al, 30H 
    mov car2, al    
;------------------------------------------------------------------------------------------------------------------------------
;------------------------------------MSG3--------------------------------------------------------------------------------------

    ;PEDIR CARACTER. 
    mov  ah,  09
    lea  dx, msg3 
    int  21H      
    
    ;GUARDAR CARACTER INTRODUCIDO POR EL USUARIO.
    mov ah, 01H 
    int 21H     
    sub al, 30H 
    mov car3, al    
;------------------------------------------------------------------------------------------------------------------------------
;------------------------------------MSG4--------------------------------------------------------------------------------------

    ;PEDIR CARACTER. 
    mov  ah,  09
    lea  dx, msg4 
    int  21H      
    
    ;GUARDAR CARACTER INTRODUCIDO POR EL USUARIO.
    mov ah, 01H 
    int 21H     
    sub al, 30H 
    mov car4, al
   
;------------------------------------------------------------------------------------------------------------------------------
;------------------------------------MSG5--------------------------------------------------------------------------------------

    ;Pedir un caracter. 
    mov  ah,  09
    lea  dx, msg5 
    int  21H      
    
    ;GUARDAR CARACTER INTRODUCIDO POR EL USUARIO.
    mov ah, 01H 
    int 21H     
    sub al, 30H 
    mov car5, al
    
;------------------------------------------------------------------------------------------------------------------------------
;---------------------------------------DESPLIEGUE DE MENSAJES-----------------------------------------------------------------
    ;DESPLIEGUE DE --MSG1--.
    mov ah, 09
    lea dx, msg1_2;IMPRESION DE LA CONSTANTE --MSG1_2--.
    int 21H       ;INTERRUPCION.

    ;DESPLIEGUE DEL CARACTER INGRESADO POR EL USUARIO.
    mov ah, 02H ;PEDIR A --ASM-- QUE DESPLIEGUE UN CARCATER EN PANTALLA.
    mov dl, car1;MOVER EL CONTENIDO DE LA VARIABLE --CAR1-- A EL REGISTRO --DL--.
    add dl, 30H ;SE SUMA 30 EN HEXADECIMAL (48) AL REGISTRO --DL-- PARA OBTENER EL CARACTER.
    int 21H     ;INTERRUPCION.

    ;DESPLIEGUE DE --MSG2--.
    mov ah, 09
    lea dx, msg2_2
    int 21H       

    ;DESPLIEGUE DEL CARACTER INGRESADO POR EL USUARIO.
    mov ah, 02H 
    mov dl, car2
    add dl, 30H 
    int 21H  

    ;DESPLIEGUE DE --MSG3--.
    mov ah, 09
    lea dx, msg3_2
    int 21H       

    ;DESPLIEGUE DEL CARACTER INGRESADO POR EL USUARIO.
    mov ah, 02H 
    mov dl, car3
    add dl, 30H 
    int 21H 

    ;DESPLIEGUE DE --MSG4--.
    mov ah, 09
    lea dx, msg4_2
    int 21H       

    ;DESPLIEGUE DEL CARACTER INGRESADO POR EL USUARIO.
    mov ah, 02H 
    mov dl, car4
    add dl, 30H 
    int 21H  
    
    ;DESPLIEGUE DE --MSG5--.
    mov ah, 09
    lea dx, msg5_2
    int 21H       

    ;DESPLIEGUE DEL CARACTER INGRESADO POR EL USUARIO.
    mov ah, 02H 
    mov dl, car5
    add dl, 30H 
    int 21H     
;------------------------------------------------------------------------------------------------------------------------------

    mov ah, 4CH ;SOLICITUD PARA TERMINAR EL PROGRAMA.
    int 21H     ;INTERRUPCION PARA LA SALIDA A --DOS (PANTALLA NEGRA)--.
end inicio;FIN MAIN.