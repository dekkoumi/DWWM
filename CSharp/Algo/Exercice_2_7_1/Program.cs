using System;

namespace Exercice_2_7_1
{
    class Exercice_2_7_1
    {
        static void Main()

        {
            /*pseudo code*/
            /*variables*/ 
            int minAge = 0;
            /*int minAge;*/
            int maxAge = 0;
            /*int maxAge; */
            string saisie;
            string[] tabsaisie;

            /*Code*/

            /*en pseudo code on initialise les variables dans la partie code*/
            Console.WriteLine("Saisir un âge inférieur à 20ans parmis un échantillon de 20 personnes");
            /*Write  "Saisir un âge inférieur à 20ans parmis un échantillon de 20 personnes"*/
            saisie = Console.ReadLine();
            /*Read saisie*/

            tabsaisie = saisie.Split(" ");
            /*tabsaisie <-- saisie . split(" ")*/
            // transforme la variable saisie en tableau et enlève les espaces via le split
            
            for (int i = 0; i < tabsaisie.Length; i++)
            { 
                /*for (index from 0 to tabsaisie.Length)*/
                // int i est l'index du tableau qui commence a 0 tabsaisie.Length est la fin de la plage de valeur de la boucle
              //i++ est l'incrementation

                if (int.Parse(tabsaisie[i]) < 20)
                {
                    /*if (tabsaisie[i] < 20)
                    { -- tabsaisie < 20 veut dire que l'on compare les valeurs du tableau à 20 pour le compteur
                        minAge++;
                    }*/
                    minAge++;
                    // compteur -20 ans

                }
                else
                {
                    /*else
                    { -- l'inverse il permet de compter supérieur a 20
                        maxAge++;
                    }END IF*/
                    maxAge++;
                    // compteur + de 20 ans

                }
            }/*END FOR*/
            Console.WriteLine($"il y a {minAge} de moins de 20 ans ");
            // affiche de resultat du compteur de moins de 20 ans

            Console.WriteLine($"il y a {maxAge} de plus de 20 ans ");
            // affiche de resultat du compteur de plus de 20 ans

        }
    }
}
