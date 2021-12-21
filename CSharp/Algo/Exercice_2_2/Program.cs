using System;

namespace Exercice_2_2
{
    class Exercice_2_2
    {
        static void Main()
        {

            double f;
            double c;
            string saisie;
            string[] tabSaisie;    
                
        {
               
                do
                {
                    Console.WriteLine("Saisir une température avec son unité de mesure (C ou F) : ");
                    saisie = Console.ReadLine();

                    
                    if (saisie.Equals("quit"))
                    {
                        Environment.Exit(0);
                    }
                    tabSaisie = saisie.Split(" ");
                    if (double.Parse(tabSaisie[0]) > - 459.67d && double.Parse(tabSaisie[0]) < 5000000) 
                    {
                        if (tabSaisie[1] == "c" )
                        {
                            c = double.Parse(tabSaisie[0]) * (9d / 5d) + 32d;
                            Console.WriteLine($" La température est de  {c} Fahrenheit");
                            
                        }
                        else
                        {
                            f = ((double.Parse(tabSaisie[0]) - 32d) * 5d / 9d);
                            Console.WriteLine($" La température est de {f} Celsius");
                        }
                    }
                } while (true);
            }
        }
    }
}


        
                    

                








                   
        
    

                
        
    

