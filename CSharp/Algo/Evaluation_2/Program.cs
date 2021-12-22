using System;

namespace Evaluation_2
{
    class Evaluation_2
    {
        static void Main(string[] args)
        {
        
            int num_mois_naissance;
            int janvier = 1;
            int fevrier = 2;
            int mars = 3;
            int avril = 4;
            int mai = 5;
            int juin = 6;
            int juillet = 7;
            int aout = 8;
            int septembre = 9;
            int octobre = 10;
            int novembre = 11;
            int decembre = 12;
                       

            Console.WriteLine(" Entrez votre numéro de mois de naissance entre 1 et 12  ");
            num_mois_naissance = int.Parse(Console.ReadLine());
            

            

             if (num_mois_naissance < 12)
            {
                Console.WriteLine("le chiffre doit être plus petit que 12");
            }


            if (janvier == 1)
             {
                Console.WriteLine(" Vous êtes né en Janvier");
                    
             }
            
            if (fevrier == 2)
            {
                Console.WriteLine(" Vous êtes né en février");
            }
            if (mars == 3)
                
            {
                Console.WriteLine(" Vous êtes né en mars");

            }
            if (avril == 4)
            {
                Console.WriteLine(" Vous êtes né en avril");
            }
            if (mai== 5)
            {
                Console.WriteLine(" Vous êtes né en mai");
            }
            if (juin == 6)
            {
                Console.WriteLine(" Vous êtes né en juin");
            }
            if (juillet == 7)
            {
                Console.WriteLine(" Vous êtes né en juillet");

            }
            if (aout == 8)
            {
                Console.WriteLine(" Vous êtes né en aout");
            }
            if (septembre == 9)
            {
                Console.WriteLine(" Vous êtes né en septembre");
            }
            if (octobre == 10)
            {
                Console.WriteLine(" Vous êtes né en octobre");
            }
            if (novembre == 11)
            {
                Console.WriteLine(" Vous êtes né en novembre");
            }
            if (decembre == 12)
            {
                Console.WriteLine(" Vous êtes né en décembre");
            }
                 else
                {
                Console.WriteLine(" votre numéro n'est pas valide erreur  ");
                }
            {

            }
        }
    }
}
