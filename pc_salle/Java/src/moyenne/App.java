
package moyenne;

import  java.util.Scanner;

public class App {
    
    public static void main(String[] args) {
        
        int a;
        int b;
        Scanner scanner;
        System.out.println("calcul de la moyenne de 2 nombres.");
        
        // algo
        scanner = new Scanner(System.in);

        System.out.println("Choisir un premier nombre");
        a = scanner.nextInt();
       
        System.out.println("Choisissez un second nombre");
        b = scanner.nextInt();

        System.out.println("Le résultat est : " + ((float)a + (float)b) /2f);

        scanner.close();    // obligatoire (pour liberer les ressources)

        
    
    }
}