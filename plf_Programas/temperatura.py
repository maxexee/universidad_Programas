while   True:
    try:
        temp    =   float(input('Ingresa tu temperatura (C°): '))

        if  temp    <=  35:
            print(f'Ta congelado yooo.')
        elif    temp    >   35  and temp    <   38.5:
            print(f'Temperatura normal.')
        elif    temp    >   38.5 and    temp    <   40:
            print(f'Tienes covid alv, hasta pa allá.')
        else:
            print('Como sigue vivo?')

    except  Exception   as  e:
        print(f'Error:  {e}')