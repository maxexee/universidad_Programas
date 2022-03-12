def suma(num1,  num2):
    return  num1    +   num2

def res(num1,   num2):
    return  num1    -   num2

def mult(num1,  num2):
    return  num1    *   num2

def div(num1,   num2):
    return  num1    /   num2

def main():
    print('Calculador básica')
    n1    =   float(input('Número 1:    '))
    n2    =   float(input('Número 2:    '))
    opc =   input('------Suma S, Resta R, Multi M, Div D------\n Ingresa la operación básica: ')
    if  opc ==   's':
        print(suma(n1,    n2))
    elif  opc ==  'r':
        print(res(n1,    n2))
    elif    opc ==  'm':
        print(mult(n1,    n2))
    elif    opc ==  'd':
        print(div(n1,    n2))
    else:
        print('Selección incorecta')

main()