using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PoupeeRusse
{
    class PoupeeRusse
    {
        private int taille;
        Boolean ouverte;
        PoupeeRusse contient,dans;

        public PoupeeRusse(int taille)
        {
            this.taille = taille;
            this.ouverte = false;
        }
        public void ouvrir()
        {
            if (!this.ouverte && this.dans == null)
            {
                this.ouverte = true;
            }
        }

    }
    
}
