using System;

namespace Evaluation_1
{
    class Program
    {
        static void Main(string[] arg)
        {
            const string prenom = "sabah";
            const string nom = "dekkoumi";
            const int age = 36;
            const int annee = 1985;

            


            Console.WriteLine(" Quel est votre prénom ? ");
            Console.ReadLine();
            Console.WriteLine(" Quel est votre nom ? ");
            Console.ReadLine();
            Console.WriteLine(" Quel est votre âge ? ");
            int.Parse(Console.ReadLine());
            Console.WriteLine(" votre prénom est sabah    votre nom est Dekkoumi    et votre âge est 36 ans tapez entrer ");
            Console.ReadLine();
            Console.WriteLine(" Quel est votre année de naissance");
            int.Parse(Console.ReadLine());

            if (annee > age )
            {
                Console.WriteLine(" Vous êtes né avant 2000 ");

            }
            else
            {

                Console.WriteLine(" Vous n'êtes pas né avant 2000 ");
               
            }

            if (annee < age)
            {
                Console.WriteLine(" Vous êtes né après 2000");
               

            }
            else
            {
                Console.WriteLine(" Vous n'êtes pas né après 2000");
            }
                
                
            
            
            
               
                

            }
           
            
              

            }
           
            

            }
        



        
    

        
    

