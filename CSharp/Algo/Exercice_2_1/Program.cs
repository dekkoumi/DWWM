using System;

namespace Exercice_2_1
{
    class Program
    {
        static void Main()    
        {
            double km;
            string saisie;
            do
            {

                try
                {
                    Console.WriteLine(" Can you write a value in km between 0.01 et 1 000 000 or press 'q' to leave the programm ");
                    saisie = Console.ReadLine();

                    if (saisie.Equals("q"))
                    {
                        Environment.Exit(0);
                    }
                    km = double.Parse(saisie);

                    if (km > 0.01 || km < 1000000)
                    {
                        Console.WriteLine("it makes " + km / 1.609d + " miles");
                    }
                    else
                    {
                        Console.WriteLine("value out of range");
                    }
                }
                catch (FormatException)
                {

                    Console.WriteLine("error"); 
                }
            } while (true);
        }
    }
}
