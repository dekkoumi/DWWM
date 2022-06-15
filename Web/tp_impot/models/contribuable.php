<?php

class Contribuable{


    private string $nom;//attribut
    private float $revenu;//attribut

    private  const  tranche1=0;
    private  const  tranche2=0.11;
    private  const  tranche3=0.30;
    private  const  tranche4=0.41;
    private  const  tranche5=0.45;
    

    // constructeur (surchargé)
    public function __construct($_name,$_income)
    {
        
        $this->nom=$_name;
        $this->revenu=$_income;

    }
    //propriété
    public function getRevenu()
    {
        return $this->revenu;
    }
    public function setRevenu(float $_newIncomme)
    {
        $this->revenu=$_newIncomme;
    }

    public function getNom()
    {
        return $this->nom;
    }
    //fonction sans paramètre
    public function calculImpot()
    {
        $resImpot=0;

        if ($this->revenu<=10225)
        {
            $resImpot=$this->revenu*self::tranche1;
        }

        elseif ($this->revenu>=10226 && $this->revenu<=26070)
        {
                                            // pointe vers la constante static
            $resImpot=(10225*self::tranche1)+($this->revenu-10226)*self::tranche2;
        }

        elseif ($this->revenu>=26071 && $this->revenu<=74545)
        {

            $resImpot=(15844*self::tranche2)+($this->revenu-26071)*self::tranche3;
        }

        elseif($this->revenu>=74546 && $this->revenu<=160336)
        {
            $resImpot=(15844*self::tranche2)+(48474*self::tranche3)+($this->revenu-74546)*self::tranche4;
        }
        
        elseif($this->revenu>=160336)
        {
            $resImpot=(15844*self::tranche2)+(48474*self::tranche3)+(85790*self::tranche4)+($this->revenu-160336)*self::tranche5;
        }
        
        
        
        return $resImpot;
    }

    


    

}


?>