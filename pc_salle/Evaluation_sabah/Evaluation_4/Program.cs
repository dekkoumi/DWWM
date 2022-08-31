using System;

namespace Evaluation_4
{
    class Evaluation_4
    {
        static void Main(string[] args)
        {
            string[] question = new string[] { "avez -vous votre permis voiture ?, aimez-vous faire du ping-pong ?, avez-vous des enfants ?, " };
            string saisie;
            string[] tab;

            Console.WriteLine(" Répondez aux questions suivantes par vrai ou faux");
            saisie = Console.ReadLine();
            tab = saisie.Split(" ");
            Console.WriteLine(" Avez-vous votre permis voiture ?");
            Console.ReadLine();
            Console.WriteLine(" aimez-vous faire du ping-pong ?");
            Console.ReadLine();
            Console.WriteLine(" Avez -vous des enfants ?");
            Console.ReadLine();
            Console.WriteLine(" Avez-vous votre permis voiture?Vous avez répondu vrai Aimez- vous faire du ping -pong ?Vous avez répondu vrai Avez-vous des enfants ?vous avez répondu faux");
            Console.ReadLine();


            
            
            



        }
    }
}
