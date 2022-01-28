using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProjetArbre
{
    class Arbre
    {
        //attributs
        private string _typeArbre;
        private float _hauteur;
        private float _diametre;
        private Parcelle _parcelleContient;
        
        //constructeur
        public Arbre(Parcelle p, string typeArbre, float h, float d)
        {
            this._typeArbre = typeArbre;
            this._hauteur = h;
            this._diametre = d;
            this._parcelleContient = p;
        }
        //Méthodes
        public string TypeArbre
        {
            get { return this._typeArbre; }
            private set { this._typeArbre = value; }
        }
        public float Hauteur
        {
            get { return this._hauteur; }
            private set { this._hauteur = value; }
        }
        public float Diametre
        {
            get { return this._diametre; }
            private set { this._diametre = value; }
        }

    }
}
