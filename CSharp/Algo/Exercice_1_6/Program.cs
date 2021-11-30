using System;

namespace Exercice_1_6
{
    class Exercice_1_6
    {
        static void Main(string[] args)
        {
            int number;
            int divider;
            bool isPrime;
            isPrime = true;

            Console.WriteLine("enter a number");
            number = Int32.Parse(Console.ReadLine());

            for (divider = 2; divider <= number-1; divider++)
            {
                if (number % divider == 0) 
                {
                    isPrime = false;

                }

            }
            if (isPrime)
            {
                Console.WriteLine("This number is prime");
            }
            else
            {
                Console.WriteLine("This number is not prime");
            }


         }
             
      





        }
    
}
