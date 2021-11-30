using System;

namespace Exercice_1_5
{
    class Exercice_1_5
    {
        static void Main(string[] args)
        {

            double S;
            double I;
            int N;
            double IS;
            double IC;

            Console.WriteLine("Ecrire la valeur de la somme intitiale");
            S = double.Parse(Console.ReadLine());
            Console.WriteLine("Ecrire la valeur de l'intérêt");
            I = double.Parse(Console.ReadLine());
            Console.WriteLine("Ecrire la valeur du nombre d'année ");
            N = Int32.Parse(Console.ReadLine());

            IS = (S *(1 + N * I)- S);

            Console.WriteLine("l'intérêt simple est de ");
            IS = double.Parse(Console.ReadLine());

            IC = (S * Math.Pow((1 + I), N-S));

            Console.WriteLine("l'intérêt composé est de ");

            IC = double.Parse(Console.ReadLine());










        }
    }
}
