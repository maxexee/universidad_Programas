// Ejercicio 2.- Hacer un programa que solicite la hora y los minutos y que muestre la hora y minutos 
// después de sumar N minutos ingresados por el usuario. 

import java.util.Scanner;

public class ejercicio2_Horas_Minutos {

    private static  String calculoTiempo(int   hrs,  int   min){
        //VARIABLES.
        int cocienteTemp    =   0,  residuoTemp =   0;
        String  tiempoFinal   =   "";

        //CÁLCULO.
        if(min  >=  60){
            cocienteTemp    =   (min/60)    +   hrs;
            residuoTemp     =   min %   60;
            tiempoFinal =   "El tiempo final es de: "   +   cocienteTemp +   " horas con "   +   residuoTemp +   " minutos";
        }else{
            tiempoFinal =   "El tiempo final es de: "   +   hrs +   " horas con "   +   min +   " minutos";
        }

        return  tiempoFinal;
    }
    public static void main(String[] args) throws Exception {
        //MÉTODO MAIN.

        //INSTANCIAS.
        Scanner scanner =   new Scanner(System.in);
        
        //VARIABLES.
        int min             =   0,  hrs =   0;
        String  tiempoFinal =   "";

        //NGRESO DE HORAS Y MINUTOS.
        System.out.println("Ingresa la hora:    ");
        hrs =   scanner.nextInt();

        System.out.println("Ingresa los minutos:    ");
        min =   scanner.nextInt();

        //RESULTADO.
        tiempoFinal =   calculoTiempo(hrs, min);
        System.out.println(tiempoFinal);
    }
}
