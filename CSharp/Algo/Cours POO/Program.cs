using System;

namespace vehicules
{
    class vehicule
    
      

namespace Vehicules
    {
        class Program
        {
            static void Main(string[] args)
            {
                VoitureBasique voiture = new VoitureBasique();


                VoitureBasique voitureVerte = new VoitureBasique("vert");


                VoitureBasique voitureViolette = new VoitureBasique("violet", true);

                Console.WriteLine(voitureVerte.ToString());
                Console.WriteLine(voiture.ToString());
                Console.WriteLine(voitureViolette.ToString());

                voitureViolette.Eteindre();
                voiture.Demarer();

                Console.WriteLine("\n\n" + voitureVerte.ToString());
                Console.WriteLine(voiture.ToString());
                Console.WriteLine(voitureViolette.ToString());

            }
        }
    }
 
	

namespace Vehicules
{
    class Voiture
    {
        private string _couleur;
        private int _poids;
        private int _puissance;
        private int _reservoir;
        private int _vitesse;
        private bool _moteur;
        private int _jaugeEssence;

        public int JaugeEssence
        {
            get { return _jaugeEssence; }
            set
            {
                if (value > Reservoir)
                {
                    _jaugeEssence = Reservoir;
                }
                else if (value < 0)
                {
                    _jaugeEssence = 0;
                }
                else
                {
                    _jaugeEssence = value;
                }
            }
        }

        public bool Moteur
        {
            get { return _moteur; }
            set { _moteur = value; }
        }

        private string _proprietaire;

        public string Proprietaire
        {
            get { return _proprietaire; }
            set { _proprietaire = value; }
        }

        public int Poids
        {
            get { return _poids; }
            set { _poids = value; }
        }

        public int Puissance
        {
            get { return _puissance; }
            set { _puissance = value; }
        }

        public int Reservoir
        {
            get { return _reservoir; }
            set { _reservoir = value; }
        }

        public int Vitesse
        {
            get { return _vitesse; }
            set { _vitesse = value; }
        }


        public string Couleur
        {
            get { return _couleur; }
            set { _couleur = value.ToLower(); }
        }
        /*
        public string getCouleur()
        {
            return this._couleur;
        }
        public void setCouleur(string nouvelleCouleur)
        {
            _couleur = nouvelleCouleur;
        }
        */

        public Voiture()
        {
            this.Couleur = "bleu";
            this.Vitesse = 0;
            this.Puissance = 12;
            this.Reservoir = 50;
            this.Poids = 979;
            this.Moteur = false;
            this.JaugeEssence = Reservoir;

        }

        public override string ToString()
        {
            StringBuilder result = new();
            result.Append($"La voiture de {Proprietaire} est {Couleur}");
            result.Append($"\nLe poids est de {Poids}kg, la puissance est de {Puissance}CV avec un réservoir de {Reservoir}L et une vitesse actuelle de {Vitesse}km/h");
            result.Append($"\nLa voiture est allumée : {Moteur}\nLa jauge d'essence est pleine à {(float)JaugeEssence / (float)Reservoir * 100f}%");
            return result.ToString();
        }

        public void Demarrer()
        {
            Moteur = true;
        }

        public void Deplacer()
        {
            if (Moteur && JaugeEssence > 0)
            {
                Vitesse = 50;
                JaugeEssence--;
            }

        }

        public void MettreEssence()
        {
            JaugeEssence = Reservoir;
        }

        public void Eteindre()
        {
            Moteur = false;
            Vitesse = 0;
        }

    }
}

namespace Vehicules
{
    class VoitureBasique
    {
        private string _couleur;

        public string Couleur
        {
            get { return _couleur; }
            set { _couleur = value.ToLower(); }
        }

        private bool _moteur;

        public bool Moteur
        {
            get { return _moteur; }
            set { _moteur = value; }
        }

        public VoitureBasique()
        {
            Couleur = "bleu";
            Moteur = false;
        }

        public VoitureBasique(string couleur, bool moteur = false)
        {
            Couleur = couleur;
            Moteur = moteur;
        }

        public void Demarer()
        {
            this.Moteur = true;
        }

        public void Eteindre()
        {
            this.Moteur = false;
        }

        public override string ToString()
        {
            return ($"La voiture est {Couleur} et allumée : {Moteur}");
        }

    }
}


       
        
           
        }
    

