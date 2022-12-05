// Ejercicio 4.- Hacer un programa que pregunte al usuario el número que está pensando la computadora 
// (se genera aleatoriamente entre 0 y 50) hasta que el usuario acierte. 

import  java.util.*;;

public class ejercicio4_numeroAleatorio {
    private static  int adivinar(){

        //INTANCIAR
        Scanner scanner =   new Scanner(System.in);

        //VARIABLES Y CONSTANTES.
        int numUsuario =   0;

        System.out.println("Adivina el número que esta pensando la computadora: ");
        numUsuario  =   scanner.nextInt();

        return  numUsuario;
    }
    public static void main(String[] args) throws Exception {

        //INSTANCIAS.
        Random  r   =   new Random();

        //VARIABLES Y CONSTANTES.
        int limite  =   51;
        int numSecreto  =   r.nextInt(limite);
        // System.out.println(numSecreto);
        int numUsuario  =   adivinar();
        int bandera     =   0;

        
        while(bandera   ==  0){
            if(numSecreto   !=  numUsuario){
                System.out.print("\033[H\033[2J");  
                System.out.flush();  
                System.out.println("Vuelve a intentarlo papu");
                numUsuario  =   adivinar();
                bandera =   0;
            }else{
                System.out.println("Felicidades, coincidieron");
                System.exit(0);
                bandera =   1;
            }
        }
    }
}
