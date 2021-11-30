using System;

namespace Exercice_1_4
{
    class Exercice_1_4
    {
        static void Main(string[] args)
        {

        int a;
        int b;
        int temp;

        Console.WriteLine("veuillez saisir un entier");
        a = Int32.Parse(Console.ReadLine());
        Console.WriteLine(" veuillez saisir un entier");
        b = Int32.Parse(Console.ReadLine());
        temp = a;
        a = b;
        b = temp;
        Console.WriteLine("a est devenu b");


    }
    }
}
