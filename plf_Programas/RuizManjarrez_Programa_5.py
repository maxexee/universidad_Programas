def main(numero):                                   #FUNCIIÓN --MAIN--.
    for i   in  range(1,13):                        #ITERAMOS DOCE VECES.
        print(f'{numero}    *   {i}:    {numero*i}')#IMPRIMIMOS LA TABLA, MULTIMPLICANO EL NÚMERO DADO POR --i--.

if  __name__    ==  '__main__':#SI NOMBRE ES IGUAL A --MAIN--.
    #LLAMAMOS LA FUNCIÓN --MAIN-- Y PEDIMOS LA TABLA A MOSTRAR
    main(numero=int(input('Ingresa el número de la tabla de multiplicar a mostrar:    ')))