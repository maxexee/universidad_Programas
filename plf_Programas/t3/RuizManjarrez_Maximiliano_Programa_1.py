import os
import sys

def menor(listaA):
    #empezar del 1 hasta la longitud de la lista "leng", range es las veces a recorrer
    for recorrido in range(1,len(listaA)):

        #- recorrido hara q recorremos la lista una vez menos, primero 4, luego 3, luego 2. luego 1

        for posicion in range(len(listaA) - recorrido):

            #si elemento en donde estamos es mayor a la lista en posicion + 1

            if listaA[posicion] > listaA[posicion +1]:

                #si es asi, se reemplaza en una variable temporal

                vartem = listaA[posicion]

                # en esa posicion se coloca el segundo elemento

                listaA[posicion] = listaA[posicion +1]

                #en la primer posicion se coloca el primer elemento

                listaA[posicion +1] = vartem

    print (f'\n{listaA}\n')

    main()  
def incisoA(listaA):
    #empezar del 1 hasta la longitud de la lista "leng", range es las veces a recorrer
    for recorrido in range(1,len(listaA)):

        #- recorrido hara q recorremos la lista una vez menos, primero 4, luego 3, luego 2. luego 1

        for posicion in range(len(listaA) - recorrido):

            #si elemento en donde estamos es mayor a la lista en posicion + 1

            if listaA[posicion] < listaA[posicion +1]:

                #si es asi, se reemplaza en una variable temporal

                vartem = listaA[posicion]

                # en esa posicion se coloca el segundo elemento

                listaA[posicion] = listaA[posicion +1]

                #en la primer posicion se coloca el primer elemento

                listaA[posicion +1] = vartem

    print (f'\n{listaA}\n')

    main()
#------------------------------------------------------------------------------------------------------------------
#------------------------------------------------------------------------------------------------------------------
#------------------------------------------------------------------------------------------------------------------
def incisoB():
    def capturar():
        try:    
            global lista

            lista= []

            varn =int(input(" Cuantos digitos tendra la lista?: \n"))

            #Comenzar a ller los datos dede 0 hasta varn

            for i in range (0,varn):

                print("Ingresa el digito: ",i)

                #Se comienza a leer y guardar el digito

                digito = input()

                #insertar a la lista, trabajar con indice y el digito ingresado

                lista.insert(i,digito)
        except  Exception   as  e:
            exc_type, exc_obj, exc_tb = sys.exc_info()
            fname = os.path.split(exc_tb.tb_frame.f_code.co_filename)[1]
            print(f'Tipo:{exc_type}, {fname}, Línea: {exc_tb.tb_lineno}')

        menu()



    def mostrarlista():

        try:
            print(lista)
        except  Exception   as  e:
            exc_type, exc_obj, exc_tb = sys.exc_info()
            fname = os.path.split(exc_tb.tb_frame.f_code.co_filename)[1]
            print(f'Tipo:{exc_type}, {fname}, Línea: {exc_tb.tb_lineno}')

        menu()

    def agregardigito():

        try:
            print("\n Ingresa el digito que desea agregar: ")

            digito = input()

            print("\n Ingrese el índice donde desea agregarlo ")

            #validar q me de un numero entero

            indice=input()

            indice=int(indice)

            #medir el tamaño de la lista

            longitud =len(lista)

            #convertir variable longitud a entero

            longitud=int(longitud)

            #Validar q el indice este dentro del rango de la lista

            if(indice>longitud or indice<0):

                print("El indice debe estar entre 0 y ", longitud)

            else:

                lista.insert(indice,digito)

                print("\n Digito agregado")
        except  Exception   as  e:
            exc_type, exc_obj, exc_tb = sys.exc_info()
            fname = os.path.split(exc_tb.tb_frame.f_code.co_filename)[1]
            print(f'Tipo:{exc_type}, {fname}, Línea: {exc_tb.tb_lineno}')

        menu()

    def eliminardigito():

        try:
            print("\n Ingrese el índice que desea eliminar: ")

            indice = input()

            indice=int(indice)

            longitud=len(lista)

            longitud=int(longitud)

            #Validar q el indice este dentro del rango de la lista

            if(indice>longitud or indice<0):

                print("El indice debe estar entre 0 y ", longitud-1)

            else:

                del lista[indice]

                print("\n Digito eliminau")
        except  Exception   as  e:
            exc_type, exc_obj, exc_tb = sys.exc_info()
            fname = os.path.split(exc_tb.tb_frame.f_code.co_filename)[1]
            print(f'Tipo:{exc_type}, {fname}, Línea: {exc_tb.tb_lineno}')

        menu()

    def buscar():
        try:
            indexB  =   input('Ingresa el dígito a buscar:  ')

            print(f'INDICE: {lista.index(indexB)}')

        except  Exception   as  e:
            exc_type, exc_obj, exc_tb = sys.exc_info()
            fname = os.path.split(exc_tb.tb_frame.f_code.co_filename)[1]
            print(f'Tipo:{exc_type}, {fname}, Línea: {exc_tb.tb_lineno}')
        
        menu()

    def ordenarMayor():
        incisoA(lista)
    def ordenarMenor():
        menor(lista)

    def menu():
        print('-----------------------------------------------')
        print('-----------------MENÚ--------------------------')
        print('-------------- Capturar - C -------------------')
        print('------------ Mostrar lista - M ----------------')
        print('-----------  Agregar dígito - A----------------')
        print('------------ Eliminar dígito - E --------------')
        print('------------- Buscar dígito - B ---------------')
        print('------------- Ordenar Mayor lista - O ---------')
        print('------------- Ordenar Menor lista - o ---------')
        print('------------- Cerrar Programa - Q -------------\n')
        opc =   input('Selecciona la opción que desees: ')

        if      opc ==  'capturar'  or  opc ==  'Capurar'   or  opc ==  'CAPTURAR'  or  opc ==   'C' or  opc ==  'c':
            capturar()
        elif    opc ==  'mostrar'  or  opc ==  'Mostrar'   or  opc ==  'MOSTRAR'  or  opc ==   'M' or  opc ==  'm':
            mostrarlista()
        elif    opc ==  'agregar'  or  opc ==  'Agregar'   or  opc ==  'AGREGAR'  or  opc ==   'A' or  opc ==  'a':
            agregardigito()
        elif    opc ==  'eliminar'  or  opc ==  'Eliminar'   or  opc ==  'ELIMINAR'  or  opc ==   'E' or  opc ==  'e':
            eliminardigito()
        elif    opc ==  'buscar'  or  opc ==  'Buscar'   or  opc ==  'BUSCAR'  or  opc ==   'B' or  opc ==  'b':
            buscar()
        elif    opc ==   'O' :
            ordenarMayor()
        elif    opc ==  'o':
            ordenarMenor()
        elif    opc ==  'cerrar'  or  opc ==  'Cerrar'   or  opc ==  'CERRAR'  or  opc ==   'q' or  opc ==  'q':
            quit()
        else:
            print('Debes elegir una opción del menú.')
            menu()

    menu()

def main():
    opcP =   input('--------------------------\n---- Inciso A) ----\n---- Inciso B) ----\n--------------------------\n Ingresa el inciso:    ') 
    if  opcP ==  'A' or  opcP ==  'a':
        incisoA(listaA=[123,2919,2983,22,31,543,66,33,77,11])
    elif opcP ==  'B' or  opcP ==  'b':
        incisoB()
    else:
        print('Se debe elegir entre el inciso A o B.')
        main()
main()