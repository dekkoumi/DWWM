using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ExoTrousse
{
    abstract class Trousse
    {
        private int _volume;
        private bool _estOuverte;
        //contructeur
        public Trousse()
        //rappel constructeur
        {
            Volume = _volume;
            EstOuverte = _estOuverte;
        }
        public void Ouvrir()
        {
            _estOuverte = true;
        }
        public void Fermer()
        {
            _estOuverte = false;
        }
        public int Volume 
        {
            get { return _volume; }
            private set { _volume = value; }
        }

        public bool EstOuverte
        {
            get { return _estOuverte; }
            private set { _estOuverte = value;}
        }

    }
}
