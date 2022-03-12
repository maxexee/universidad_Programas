import  sys,    os

while   True:
#-----------------------------------------------------------------------------------------------------
#----------------------------------------------------------------------------------------------------
    def mayor100():
            lista   =   []
            try:

                while   True:
                    num =   float(input('\nIngresa un número: '))
                    if  num >   100:
                        lista.append(num)
                        print('Aceptado.')
                    else:
                        print('No se puede ingresar número menores a 100.\n')
                        print(f'Los número aceptados fueron:    {lista}')
                        break

            except  Exception   as  e:
                exc_type, exc_obj, exc_tb = sys.exc_info()
                fname = os.path.split(exc_tb.tb_frame.f_code.co_filename)[1]
                print(f'Tipo:{exc_type}, {fname}, Línea: {exc_tb.tb_lineno}')
#----------------------------------------------------------------------------------------------------
#----------------------------------------------------------------------------------------------------
    def uno_a():
            i       =   1
            try:

                num_lim =   float(input('\nIngresa el número límite:  '))
                while   i   <=  num_lim:
                    print(i)
                    i   +=1

            except  Exception   as  e:
                exc_type, exc_obj, exc_tb = sys.exc_info()
                fname = os.path.split(exc_tb.tb_frame.f_code.co_filename)[1]
                print(f'Tipo:{exc_type}, {fname}, Línea: {exc_tb.tb_lineno}')
#----------------------------------------------------------------------------------------------------
#----------------------------------------------------------------------------------------------------
    def val_prom():
        i   =   1
        sum =   0
        lista   =   []
        try:

            while   i   <=  10:
                nums    =   float(input(f'\nIngresa el número {i}:    '))
                lista.append(nums)
                i+=1  
            for i   in  lista:
                sum +=  i
            pro =   sum /   len(lista)
            print(f'\nLa suma de todos los números es:    {sum} \nEl promedio es:    {pro}')

        except  Exception   as  e:
            exc_type, exc_obj, exc_tb = sys.exc_info()
            fname = os.path.split(exc_tb.tb_frame.f_code.co_filename)[1]
            print(f'Tipo:{exc_type}, {fname}, Línea: {exc_tb.tb_lineno}')

    def main():
        print('\n----------------------------------')
        print('-----------Programa 1-------------')
        print('-----------Programa 2-------------')
        print('-----------Programa 3-------------')
        print('-----------Cerrar C---------------')
        print('----------------------------------')
        print('----------------------------------')
        opc =   input('Seleccione uno de los tres programas disponibles:    ')

        if      opc ==  '1':    
            mayor100()
        elif    opc ==  '2':
            uno_a()
        elif    opc ==  '3':
            val_prom()
        elif    opc ==  'C' or  opc ==  'c':
            quit()
        else:
            print('Debe elegir algún programa o terminar el main.')

#----------------------------------------------------------------------------------------------------
#----------------------------------------------------------------------------------------------------
    if  __name__=='__main__':
        main()