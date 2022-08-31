package imputs;

import java.lang.FdLibm.Pow;
import java.util.Scanner;

import javax.naming.InitialContext;

java.util.Scanner;

public class App{

    public static void main(String[] args) {
        
        int somme;
        int intérêt;
        int année;


        Scanner sc;
        sc = new Scanner (System.in);
        
        //algo

        System.out.println("saisir la somme");

        somme = sc.nextInt(); 

        intérêt = sc.nextInt();

        année = sc.nextInt();

        System.out.println("la somme initiale avant intérêt est de : ");

        System.out.println (somme * (1 + année * intérêt));

        System.out.println("l'intérêt composé est de : " );

        System.out.println(somme* Math.Pow (1 + intérêt - somme ));

        System.out.println("le nombre d'année est : ");

        sc.close();





        




    


    
    }
}