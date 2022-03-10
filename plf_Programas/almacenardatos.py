
def edi(nom,    tel):
    file_d  =   open('/home/maxexee/Documents/Universidad/PLF/Tema_3/msidatos.txt','a')
    file_d.write(nom)
    file_d.write(',')
    file_d.write(tel)
    file_d.write(',')
    file_d.write('\n')
    file_d.close()

    menu()

def file_m():
    file_r  =   open('/home/maxexee/Documents/Universidad/PLF/Tema_3/msidatos.txt','r')
    return  file_r.read()

def file_b1(numb):
    
    file_r  =   open('/home/maxexee/Documents/Universidad/PLF/Tema_3/msidatos.txt','r')
    L    =   file_r.readlines()
    numL =  len(L)
    file_r.close()

    del L[numb]

    line_n  =   open('/home/maxexee/Documents/Universidad/PLF/Tema_3/msidatos.txt','w')

    line    =   0
    while   line    <   numL:
        line_n.write(L[line])
        line    +=  1

    line_n.close()

    menu()

def menu():
    print('------------------------------------------')
    print('-----------------MENU---------------------')
    print('------------1) Nuevo Archivo--------------')
    print('------------2) Mostrar Archivo------------')
    print('------------3) Eliminar datos--------------')
    print('------------------------------------------')

    opc =   input('Eligue una opción:   ')
    if      opc ==  'n' or  opc ==  '1':
        nom =   input('Ingresa el nombre:   ')
        tel =   input('Ingresa tu teléfono: ')
        edi(nom, tel)
    elif    opc ==  'm' or  opc ==  '2':
        print(file_m())
        menu()
    elif    opc ==  'e' or  opc ==  '3':
        file_b1(numb=int(input('Ingresa la línea a eliminar: ')))
    else:
        print('Debes de ingresar una de las tres opciones.')
        menu()

menu()