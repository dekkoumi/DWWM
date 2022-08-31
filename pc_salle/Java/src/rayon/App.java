package rayon;

import java.util.Scanner;

public class App{
    
   public static void main(String[] args)
   {
   

      int rayon;
      //int volume;
      //int aire;


      Scanner sc;
      sc = new Scanner(System.in);
      // algo
      System.out.println("saisir le rayon");

      rayon = sc.nextInt();

      //aire = (4*Math.PI*Math.pow(rayon, 2);

      //volume = (4*Math.PI*Math.pow(rayon, 3)/3);

      System.out.println("l'aire de la sphère est de : ");

      System.out.println((4*Math.PI*Math.pow(rayon, 2)));

      System.out.println("le volume est de : ");

      System.out.println(4*Math.PI*Math.pow(rayon, 3)/3);

      
      // algo

      sc.close();
   }
}