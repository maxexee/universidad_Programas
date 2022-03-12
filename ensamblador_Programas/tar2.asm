;-----TAREA_2____IMPRIMIR_NOMBRE_APELLIDO_PATERNO_APELLIDO_MATERNO_EDAD_SEXO------------MAXIMILIANO_RUIZ_MANJARREZ-------------
;------------------------------------------------------------------------------------------------------------------------------
.model  small   ;Definimos el tama?o del modelo de memoria a usar, el cual ser? SMALL.

.stack          ;Asignamos el Segmento de Pila.

.data           ;Asignamos el Segmento de Datos.
    ;Creamos la constante msg(mensaje) de tipo DB con el contendio del nombre, apellido paterno, materno, edad y sexo.
    ;El n?mero 13 representa el ENTER y el n?mero 10 el inicio de la nueva l?nea.
    msg  db  "Nombre: Maximiliano",13,10,"A_Paterno: Ruiz",13,10,"A_Materno: Manjarrez",13,10,"Edad: 21",13,10,"Sexo: Masculino","$" 
    
.code          ;Asignamos el Segmento de C?digo.
inicio:        ;Main
    
    mov ax, @data   ;Mandamos la direcci?n de el Segmento Data y se mueve al registro AX.
    mov ds, ax      ;Movemos el contenido de AX al registro DS, el cual nos permite modificar su contenido.

;------------------------------------------------------------------------------------------------------------------------------ 
   ;Mostramos en pantalla nuestro mensaje. 
    mov dx, offset  msg ;Usamos la instrucci?n offset la cual devuelve la instancia de msg al registro DX.
    mov ah, 09          ;Interrupci?n que permite visualizar la pantalla.
    int 21H             ;Interrupci?n para la salida a DOS(Pantalla negra).
;------------------------------------------------------------------------------------------------------------------------------   
    
    mov ah, 4CH ;Solicitud para terminar el programa.
    int 21H     ;Interrupci?n para la salida a DOS(Pantalla negra).
end inicio;Fin del Main.