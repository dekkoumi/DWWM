using System;

namespace ProjetArbre
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Hello World! \n");
            Parcelle p1 = new(42,42);
            Arbre a1 = new(p1,"patrick",2000,42);

            Console.WriteLine(a1.ToString() + "\n");
            Console.WriteLine(p1.ToString() + "\n");
            Console.WriteLine(p1.AfficherNombreArbre());
        }
    }
}