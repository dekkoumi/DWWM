using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace compte
{
    class Compte
    {
        private bool _debit;
        private float _credit;
        private string _titulaire;


        public bool Debit
        {
            get { return _debit; }
            set { _debit = value; }

        }

        public bool Credit
        {
            get { return Credit; }
            set { _credit = value;}

        }

        public string Titulaire
        {
            get { return _titulaire; }
            set { _titulaire = value; }
        }
        public Compte()

        {
            this.Debit = 200;
            this.Credit = 0;
            this.Titulaire = "bil";

        }
        public override string ToString()
        {
            StringBuilder result = new();
            result.Append($"le compte de {Titulaire} est en {Debit} ");
            result.Append($"/nle compte de {Titulaire} à un {Credit} ");
            return result.ToString();
        }

        public void Deposer()

        {
            Debit = true;
        }


        public void Retirer()
        {
            Credit = false;
        }

        
    
            
        }
        }
    
