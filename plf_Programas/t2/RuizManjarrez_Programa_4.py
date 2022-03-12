import  sys,    os

class   agenda():
    
    def __init__(self):
        self.lista   =   []

    def crearC(self):
        print('\n---Contacto nuevo---')
        nom     =   input('Nombre:   ');            self.lista.append(nom)
        email   =   input('Email:   ');             self.lista.append(email)#IMPLEMENTAR RE.
        tel     =   int(input('Teléfono:    '));    self.lista.append(tel)
        dir     =   input('Dirección:   ');         self.lista.append(dir)

        print(f'Contacto guardado:  {self.lista}')
            
    def borrarC(self):
        pass

    def verC(self):
        for i   in self.lista:
            print(i) 

#----------------------------------------------------------------------------------------------------------------
#----------------------------------------------------------------------------------------------------------------

class   menu():
    def __init__(self) -> None:
        pass

    def main(self):
        age =   agenda()
        print('\n--------------------------------------------')
        print('------------AGENDA ELECTRONICA--------------')
        print('------------Crear contanto:  C--------------')
        print('------------Borrar contacto: B--------------')
        print('------------Ver contactos existentes: V-----')
        print('------------Cerrar programa: Q--------------')
        print('--------------------------------------------')
        print('--------------------------------------------')
        opc =   input('Ingresa la opción que desees (C, B, V Q):    ')    
    
        if  opc ==  'c' or  opc ==  'C':
            age.crearC()
        elif    opc ==  'b' or  opc ==  'B':  
            age.borrarC()
        elif    opc ==  'v' or  opc ==  'V':
            age.verC()
        elif    opc ==  'q' or  opc ==  'Q':
            age.quit()
        else:
            print('Debes ingresar una opción entre C, B, V, Q.')


#----------------------------------------------------------------------------------------------------------------
#----------------------------------------------------------------------------------------------------------------

men    =   menu()
men.main()