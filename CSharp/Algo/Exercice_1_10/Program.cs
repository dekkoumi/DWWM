using System;

namespace Exercice_1_10
{
    class Exercice_1_10
    {
        static void Main()
        {
            int n;
            int nb;
            int r;

            Console.WriteLine("Combien de nombres parfait voulez-vous ?");
            n = int.Parse(Console.ReadLine());
            r = 0;
            nb = 2;


            do
            {

                for (int i = 1; i < nb; i++)
                {
                    if (nb % i == 0)
                    {
                    r = r + i;
                    }
                     
                }
                if (r == nb)
                {
                    Console.WriteLine(nb + " est un nombre parfait ");
                    n = n - 1;
                }
                nb = nb + 1;
                r = 0;
            } while (n > 0);


        }
    }
}
