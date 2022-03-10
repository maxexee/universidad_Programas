def main(cadena,    letra):#FUNCIÓN --MAIN-- CON DOS PARÁMETROS, --CADENA-- Y --LETRA--.
    cont    =   0          #CONTADOR IGUAL A 0. 
    for i   in  cadena:    #ITERAMOS SOBRE LA CADENA.
        if  i   ==  letra: #SI LA ITERACIÓN EN LA CADENA ES IGUAL A LA LETRA...
            cont    +=  1  #..LA CONTAMOS Y ALMACENAMOS EN --CONT--.
        
    print(cont)            #SE IMPRIME EL CONTADOR.

if  __name__=='__main__':  #SI NOMBRE ES IGUAL A --MAIN--.
    #MANDAMOS LLAMAR LA FUNCIÓN --MAIN-- Y PEDIMOS SUS PARAMETROS.
    main(cadena=str(input('Ingresa la cadena:   ')), letra=str(input('Ingresa la letra a buscar en la cadena:    ')))