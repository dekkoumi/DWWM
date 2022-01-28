using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProjetArbre
{
    class Parcelle
    {
        private int _numeroParcelle;
        private float _surface;
        private List<Arbre> _arbresContenu;
        
        public Parcelle(int numeroParcelle, float s, List<Arbre> a = null)
        {
            this._numeroParcelle = numeroParcelle;
            this._surface = s;
            this._arbresContenu = a;
        }
        public int NumeroParcelle
        {
            get { return this._numeroParcelle; }
            private set { this._numeroParcelle = value; }
        }
        public float Surface
        {
            get { return this._surface; }
            private set { this._surface = value; }
        }
        public List<Arbre> ArbresContenu
        {
            get { return this._arbresContenu; }
            private set { this._arbresContenu = value; }
        }
        public int AfficherNombreArbre()
        {
            if (this._arbresContenu == null)
            {
                return 0;
            }
            else
            {
                return this._arbresContenu.Count();
            } 
        }
    }
}
