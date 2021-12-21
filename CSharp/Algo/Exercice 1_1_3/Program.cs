using System;

namespace Exercice_1_1_3
{
    class Exercice_1_1_3
    {
        static void Main()
        {
            double r;
            double a;
            double result;


            Console.WriteLine(" lire le rayon r ");
            r = double.Parse(Console.ReadLine());

            Console.WriteLine(" lire l'angle a ");
            a = double.Parse(Console.ReadLine());

            result = Math.PI * Math.Pow(r, 2d) * a / 360d;
            Console.WriteLine($"l'aire du secteur circulaire est de {result}");
            Console.WriteLine("l'aire du secteur circulaire est de "+ result);
            // le 2 eme WriteLine est une concatenation addition de variable et de string 

        }

        
    }
}
