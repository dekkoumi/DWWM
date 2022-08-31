import java.util.Scanner;

import javax.lang.model.util.ElementScanner14;

package.imputs;


public class App {

    public staticvoid main( string[]args)

    boolean beau temps;
    boolean temps reparation;
    boolean etat bicyclette;
    boolean possessionGot;
    boolean disponibiliteGot;


    Scanner scanner;

scanner = new scanner(System.in);

System.out.println("Fait-il beau ?");

beautemps = scanner.nextBoolean();


    if(beautemps)

    System.out.println("vous avez indiqué qu'il fait beau"); 
    System.out.println ("la bicyclette est-elle en bon état ?");

    etatbicyclette = scanner.nextBoolean();

    if (etatbicyclette)

     {
         System.out.println("la bicyclette est en bbonne état, je pars en balade !");
         {
            System.out.println("je vais au garage");
            System.out.println("Est ce que la réparation est rapide ?");

            reparationrapide = scanner.nextBoolean();

            if (reparationrapide)

            System.out.println("reparation rapide! je vais me balader");
            {

                System.out.println("je dois laisser ma bicyclette, je vais cueillir des joncs");




            }
         }

         
         
    
}
else
{
System.out.println("vous avez indiqué qu'il pleut");
System.out.println("je vais lire un livre, est-ce que Got tome1 est dans ma bibliothèque");
possessionGot = scanner.nextBoolean();



}



scanner.close();
}
