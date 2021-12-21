using System;

namespace Exercice_1_9
{
    class Exercice_1_9
    {
        static void Main()
        {
            int nbEntier;
            int diviseur;

            Console.WriteLine("Enter an integer");
            nbEntier = int.Parse(Console.ReadLine());

            for (diviseur = 2; diviseur < nbEntier; diviseur++)
            {
                if (nbEntier % diviseur == 0)

                {
                    Console.WriteLine(diviseur + " est un diviseur");
                }
                else
                {
                    Console.WriteLine("pas de diviseur :(");
                }
            }
        }
    }
}
