using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ExoSac
{
    class Sac
    {
        private string _couleur;
        private string _poche;
        private string _texture;
        private bool _rempli;

        public string Couleur
        {
            get { return _couleur;}
            set { _couleur = value;}

        } 

        public string Poche
        {
            get { return _poche;}
            set { _poche = value;}
        }

        public string Texture
        {
            get { return _texture;}
            set { _texture = value;}
        }

        public bool Rempli
        {
            get { return _rempli;}
            private set { _rempli = value;}
        }
    }


}
