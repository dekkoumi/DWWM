using System;

namespace Evaluation_1
{
    class Evaluation_1
    {
        

        static void Main(string[] args)
        {
            string prenom;
            string nom;
            int age;
            
           
            
 

            Console.WriteLine(" Votre prénom est: ");
            prenom = (Console.ReadLine());
            Console.WriteLine("votre nom est: ");
            nom = (Console.ReadLine());
            Console.WriteLine(" Quel est votre âge ? ");
            age = int.Parse(Console.ReadLine());

            if (age < 2000)
            {
                Console.WriteLine(" si l'âge est plus petit que 2000");
            }
                 else
            {
                Console.WriteLine(" Vous avez 36 ans ");
            }
            if (age > 2000)
            {
                Console.WriteLine(" Si votre age est plus grand que 2000");
            }
                 else
            {
                Console.WriteLine("Vous n'avez pas 36 ans ");
            }
            }



           // agePlus = int.Parse(Console.ReadLine());
            //ageMoins = int.Parse(Console.ReadLine());
        }
        }
    }

