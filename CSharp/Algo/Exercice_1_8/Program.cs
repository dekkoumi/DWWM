using System;

namespace Exercice_1_8
{
    class Exercice_1_8
    {
        public static void Main()
        {
            int year;

            Console.WriteLine("enter a year ");
            year = Int32.Parse(Console.ReadLine());

            if (year % 4 == 0 && (year % 100 != 0 || year % 400 == 0)) 
            {
                Console.WriteLine("year is a leap year ");
            }
            else
            {
                Console.WriteLine("year is not a leap year ");
            }
           
        }
    }
            

                    

            }


            
            

        
    

