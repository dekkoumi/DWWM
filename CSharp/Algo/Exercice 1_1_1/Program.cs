using System;

namespace Exercice_1_1_1
{
    class Exercice_1_1_1
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Exercice 1_1_1");
            {
            int nb1;
            int nb2;
            double result;

            Console.WriteLine("Entrer a first number");
            nb1 = Int32.Parse(Console.ReadLine());
            Console.WriteLine("Entrer a second number");
            nb2 = Int32.Parse(Console.ReadLine());

            result = (nb1 + nb2) / 2d;

            Console.WriteLine("The average of the two numbers is " + result);
            Console.WriteLine($" The average of the two numbers is {result}");

            }
        }
    }
}
