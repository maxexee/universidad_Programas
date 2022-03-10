def main():
    while   True:
        nums    =   []
        for i   in  range(2):
            try:
                num =   float(input(f'Dame el número {i}:   '))
                nums.append(num)
            except  Exception   as  e:
                print(f'Error en el caracter: {e}')
                break

        print('--------------------------------------')
        print('-----1- Suma----\n-----2- Resta----\n-----3- Multiplicación----\n-----4- División.----\n ----T- De troy :3-----')
        op  =   input('Ingresa la operación:    ')
        try:
            if  op  ==  '1':
                print(f'EL resultado de la suma es: {nums[0]    +   nums[1]}')
            elif  op  ==   '2':
                print(f'EL resultado de la resta es: {nums[0]    -   nums[1]}')
            elif  op  ==   '3':
                print(f'EL resultado de la multiplicación es: {nums[0]    *   nums[1]}')
            elif  op  ==   '4':
                print(f'EL resultado de la división es: {nums[0]    /   nums[1]}')
            elif    op  ==  't':
                print('Chaooo')
                break
        except  Exception  as e:
            print(f'Error en:    {e}')

if  __name__=='__main__':
    main()        