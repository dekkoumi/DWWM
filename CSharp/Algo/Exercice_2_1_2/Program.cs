using System;

namespace Exercice_2_1_2
{
    class Exercice_2_1_2
    {
        static void Main()
        {
            string saisie;

            string[] tab;

            
                Console.WriteLine(" Saisissez une valeur");
                saisie =  Console.ReadLine();
                tab = saisie.Split(" ");

            if ( tab.Length == 1 || tab[1] == "km")

            {
                Console.WriteLine(" la valeur en miles donne " + double.Parse(tab[0]) / 1.609 + "km");
            }
            else
            {
                Console.WriteLine(" la valeur en km donne " + double.Parse(tab[0]) * 1.609 + "km");
            }
        }
            

        }
    }

