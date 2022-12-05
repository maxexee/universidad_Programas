// Ejercicio 5.- Hacer un programa que imprima las potencias de 2^1 hasta 2^n donde n es un número ingresado por el usuario. 

import  java.util.*;

public class ejercicio5_potencias {
    public static void main(String[] args) throws Exception {
        
        //INSTANCIAS.
        Scanner scanner =   new Scanner(System.in);

        //VARIABLES Y CONSTANTES.
        double potencia    =   0;
        
        System.out.println("Ingresa a que potencia que va a elevar 2:   ");
        potencia    =   scanner.nextInt();

        for(double i   =   1;  i   <   potencia+1;   i++){
            System.out.println("El número 2 elevado a la "  +  (int)i +  " es igual a = "  +Math.pow(2, i));
        }
    }
}
