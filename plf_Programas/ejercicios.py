#Ejercicio 7.
'''
def inversa():
    lista   =   ['oro', 'radar',    'ojo',  'hola', 'mundo']
    for i   in  lista:
        reverso =   i[::-1]
        for j   in  lista:
            if  j   ==  reverso:
                print(j)

inversa()
'''
#Ejercicio 5.
'''
def elimina_duplicados():
    lista2   =   [1,1,4,2,5,6,7,1,2,2,9,7,8]
    return  set(lista2)

print(elimina_duplicados())
'''
#Ejercicio 3.
'''
def ordenada():
    lista3  =   [3,1,2,5,7,9,8]
    lista4  =   [1,2,3]

    if  lista4  ==  sorted(lista4):
        return  True
    else:
        return  False

print(ordenada())
'''