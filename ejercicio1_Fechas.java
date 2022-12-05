//Ejercicio 1 
//Hacer un programa que solicite al usuario un día, un mes y año, el programa deberá indicar si los datos ingresados 
//corresponden a una fecha válida.

import  java.util.Scanner;

public class ejercicio1_Fechas {
    public static   void main(String[] args) throws Exception {
        //MÉTODO MAIN
        
        //INTANCIAS.
        Scanner scanner =   new Scanner(System.in);
    
        //VARIABLES.
        int dia                 =   0;
        int mes                 =   0;
        int año                 =   0;
        int[] datosFechaCorrecta=   new int[4];
    
        //INGRESO DE DATOS DE LA FECHA (TIPO NUMÉRICOS).
        System.out.println("¡Tipo de dato Numérico!");
        System.out.println("Día:    ");
        dia =   scanner.nextInt();
        if(dia  <=  31){//----------------------------- DÍA --------------------------
            System.out.println("Mes:    ");
            mes =   scanner.nextInt();
            if(mes  <=  12){//----------------------------- MES --------------------------
                datosFechaCorrecta[1]   =   mes;
                if(mes  !=  02){//ENERO, MARZO, ABRIL....
                    if((mes ==  04) || (mes ==  4)  ||  (mes    ==  06) ||  (mes    ==  6)  ||  (mes    ==  9)  ||  (mes    ==  11)){
                        if(dia  <=  30){
                            datosFechaCorrecta[0]   =   dia;
                        }
                    }else{
                        datosFechaCorrecta[0]   =   dia;
                    }
                }else{//FEBRERO
                    if(dia  <=  29){
                        datosFechaCorrecta[0]   =   dia;
                        datosFechaCorrecta[3]   =   1;
                    }else if(dia  <=  28){
                        datosFechaCorrecta[0]   =   dia;
                        datosFechaCorrecta[3]   =   0;
                    }
                }
                System.out.println("Año:    ");
                año =   scanner.nextInt();
                if(año  >=  0){//----------------------------- AÑO --------------------------
                    datosFechaCorrecta[2]   =   año;
                }else{
                    System.out.println("Año invalido");
                    System.exit(0);
                }
            }else{
                System.out.println("Mes invalido");
                System.exit(0);
            }
        }else{
            System.out.println("Día inválido");
            System.exit(0);
        }

        System.out.println("\n-------------------------------------\n");

        if(datosFechaCorrecta[3]    ==  1){
            System.out.println(datosFechaCorrecta[0] +   "/" +   datosFechaCorrecta[1]    +   "/"  +   datosFechaCorrecta[2]    +   " -> Fecha válidad, año Bisiesto.");    
        }else{
            System.out.println(datosFechaCorrecta[0] +   "/" +   datosFechaCorrecta[1]    +   "/"  +   datosFechaCorrecta[2]    +   " -> Fecha válidad, año Natural.");
        }
    }
}
