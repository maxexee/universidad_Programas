// Ejercicio 3.-  Hacer un programa que solicite la fecha de nacimiento de una persona y 
// devuelva su número según la numerología, por ejemplo: Si una persona ha nacido el 21 de Abril de 1970, 
// primero pondríamos la fecha todo en números: 21-04-1970, y luego los sumariamos todos uno a uno: 2+1+0+4+1+9+7+0 = 24, 
// luego reducimos: 2+4 = 6. Así que el número de la persona nacida 21-04-1970 es el 6. 

import java.util.Scanner;

public class ejercicio3_nacimientoPersona {

    private static  char[]  conversion(String   cadena)    {
        char[]  cadenaArray =   new char[cadena.length()];

        for(int i   =   0;  i   <   cadena.length();    i++){
            cadenaArray[i]  =   cadena.charAt(i);
        }

        return  cadenaArray;
    }

    private static  int validacion(char[]   fechaArrayFuncion){

        //VARIABLES Y CONSTANTES.
        String  slashesStr  =   "/";
        char    slashesChar =   slashesStr.charAt(0);
        String  guionStr  =   "-";
        char    gionChar =   guionStr.charAt(0);
        int     validacion  =   0;

        if(((fechaArrayFuncion[2]   ==  slashesChar)  &&  (fechaArrayFuncion[5]  ==  slashesChar))    ||  ((fechaArrayFuncion[2] ==  gionChar) &&  (fechaArrayFuncion[5]    ==  gionChar))){
            validacion  =   1;
        }
        return  validacion;
    }

    private static  int calculo(char[]  fechaArrayFuncion){

        //VARIANBLES Y CONSTANTES.
        int     a               =   0,   b   =   0,  c   =   0, personaNum  =   0;
        int[]   fechaArrayInt   =   new int[fechaArrayFuncion.length];
        String  numerologia     =   "";

        //CONVERSION DE CHAR[] A INT[]
        fechaArrayFuncion[2]    =   '0';
        fechaArrayFuncion[5]    =   '0';
        for (int j = 0; j < fechaArrayFuncion.length; j++) {
            fechaArrayInt[j]    =   Character.getNumericValue(fechaArrayFuncion[j]);
        }


        for(int k   =   0;  k   <   fechaArrayInt.length;  k++){
            a   =   fechaArrayInt[k];
            b   =   c;
            c   =   a   +   b;
        }
    
        System.out.println("Numerología:    "   +   c);
        a   =   0;
        b   =   0;

        numerologia =   Integer.toString(c);

        for(int l   =   0;  l   <   numerologia.length();   l++){
            char temp   =   numerologia.charAt(l);
            a   =   Character.getNumericValue(temp);
            b   =   personaNum;
            personaNum   =   a   +   b;
        }

        System.out.println("Número de la persona:    "   +   personaNum);

        return  c;
    }
    public static void main(String[] args) throws Exception {

        //INSTANCEAR.
        Scanner scanner =   new Scanner(System.in);

        //VARIABLES
        String  fecha       =   ""; 

        //INGRESO DE LA FECHA.
        System.out.println("Ingresa la fecha (##/##/####):   ");
        fecha   =   scanner.nextLine();

        //CONVERSIÓN DEL STR A CHAR.
        char[]  fechaArray  =   conversion(fecha);

        //VALIDACIÓN DEL CHAR.
        int validacion =   validacion(fechaArray);

        if(validacion   ==   1){
            System.out.print("Fecha válidia\n");
            calculo(fechaArray);
        }else{
            System.out.println("Fecha inválida");
            System.exit(0);
        }
    }
}
