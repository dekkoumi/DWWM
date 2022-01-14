using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ExoTrousse
{
    class OutilEcriture : IOutil
    {
        private string _couleur;
        private int _capaciteEcriture;

        public OutilEcriture()
            // constructeur
        {
            
        }
        public void Ecriture()
        {

        }

        public void utiliser()
        {
            this.Ecriture();
        }

        public string Couleur
        {
            get { return _couleur; }
            set { _couleur = value; }
        }
        public int CapaciteEcriture
        {
            get { return _capaciteEcriture; }
        }
    }
}
