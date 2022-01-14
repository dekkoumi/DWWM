using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ExoTrousse
{
    class Crayon : OutilEcriture
    {
        private bool pointeDeMine;

        public void tailler()
        {

        }
        public void Ecrire()
        {

        }
        public bool PointeDeMine
        {
            get { return _PointeDeMine; }
           private set { _pointeDeMine = value; }
        }
    }
   
}
