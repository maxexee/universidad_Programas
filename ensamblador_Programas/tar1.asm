;-----------------------------TAREA_1____IMPRIMIR NOMBRE_EDAD_SEXO------------MAXIMILIANO_RUIZ_MANJARREZ-----------------------
;------------------------------------------------------------------------------------------------------------------------------
.model  small;Modelo de memoria a usar.

.stack;Segmento de pila.

.data;Segmento de datos.
    nombre  db  "Nombre: Max,$"         ;Declaraci?n de la constante nombre, tipo DB.
    edad    db  " Edad: 21,$"           ;Declaraci?n de la constante edad, tipo DB.
    sexo    db  " Sexo: Masculino$"     ;Declaraci?n de la constante sexo, tipo DB.
    
.code   ;Segmento de c?digo.
inicio: ;Main
    mov ax, @data   ;Permite obtener la direcci?n del segmento de datos y guardarla en el registro AX.
    mov ds, ax      ;Mover los datos de AX al registro DS, el registro DS manipula datos.
    
;------------------------------------------------------------------------------------------------------------------------------    
    lea dx, nombre  ;LEA es una instrucci?n de carga, lo cual phace que pase el contenido de nombre a DX.
    mov ah, 09H     ;Interrupci?n que permite visualizar la pantalla.
    int 21H         ;Interrupci?n para la salida a DOS(Pantalla negra).
    
    lea dx, edad    ;LEA es una instrucci?n de carga, lo cual phace que pase el contenido de edad a DX.
    mov ah, 09H     ;Interrupci?n que permite visualizar la pantalla.
    int 21H         ;Interrupci?n para la salida a DOS(Pantalla negra).
    
    lea dx, sexo    ;LEA es una instrucci?n de carga, lo cual phace que pase el contenido de sexo a DX.
    mov ah, 09H     ;Interrupci?n que permite visualizar la pantalla.
    int 21H         ;Interrupci?n para la salida a DOS(Pantalla negra).

;------------------------------------------------------------------------------------------------------------------------------    
    
    mov ah, 4CH ;Solicitud para terminar el programa.
    int 21H     ;Interrupci?n para la salida a DOS(Pantalla negra).
end inicio      ;Final del Main.