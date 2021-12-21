using System;

namespace Exercice_3_1
{
    class Exercie_3_1
    {
        private const int V = 0;

        static void Main()
        {
            int n_c;
            string[] tabSaisie;
            string saisie;


            {

                
                {
                    Console.WriteLine(" chercher si un nombre donné est croissant ");
                    saisie = Console.ReadLine();

                    for (int i = tabSaisie.Length - 1; i >= 0; i--)
                    {
                        if (saisie.Equals(" non trouvé "))
                    {
                        Environment.Exit(0);
                    }
                    }

                    for (int i = 0; i < tabSaisie.Length; i++)
                    {
                        if (tabSaisie[0] == "n_c")
                        {
                            n_c = int.Parse(tabSaisie[V]);
                            Console.WriteLine($" le nombre  est croissant int[]);
                        }

                        
                    }



                } 
            }
        }
    }
}
