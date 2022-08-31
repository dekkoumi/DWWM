using System;

namespace Evaluation_3
{
    class Evaluation_3
    {
        static void Main(string[] args)
        {
            string courses;
            int list_course;
            int sac_vide;
            int magasin;
            int article;
            int  caisse;
            int payer;
            string temp;
            bool beau_temp;


            Console.WriteLine(" Vous êtes en week-end, vous devez faire vos courses");
            Console.ReadLine();
            Console.WriteLine(" Préparez votre liste de courses ");
            list_course = int.Parse(Console.ReadLine());
            Console.WriteLine("Pensez à prendres des sacs vides  ");
            sac_vide = int.Parse(Console.ReadLine());
            Console.WriteLine("Avez -vous tous vos articles ?");
            article = int.Parse(Console.ReadLine());
            Console.WriteLine(" Si vous n'avez pas tous vos articles continuez à chercher ce qu'il vous manque");
            Console.ReadLine();
            Console.WriteLine(" ");


            if (list_course && sac_vide)
            {

            }
        }
    }
}
