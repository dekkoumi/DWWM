<?php

class Pret{

private float $k;
private float $tm;
private int $nb_mois;



public function __construct($_k,$_ta,$_ans)
{
    $this->k=$_k;
    $this->tm=$_ta/(12*100);
    $this->nb_mois=$_ans*12;
}

public function getCapital()
{
    return $this-> k;
}

public function getTaux()
{
    return $this->tm*100*12;
} 



public function mensualite(){
    $a=($this->k*$this->tm)/(1-pow((1+$this->tm),-$this->nb_mois));
    return round($a,2);
}

public function genererTableau(){
    $chaine = "<table class='table table-dark table-striped' ><thead><tr><th>Numéro de <br>mois </th> <th>Par Intérêts </th><th>Partie <br>Amortissement </th><th>capital restant <br>dù </th><th>Mensualité <br>constante </th></thead><tbody>";
    $parinteret = 0;
    $parAmortissement = 0; 
    $capitalRestant = 0;
    for ($i=0; $i < $this->nb_mois; $i++) { 
       if ($i==0) {
        $parinteret = $this->k*$this->tm;
        $parAmortissement = $this->Mensualite()-$parinteret;
        $capitalRestant = $this->k-$parAmortissement;
        $chaine.="<tr><td>".($i+1)."</td><td>".round($parinteret,2)."</td><td>".round($parAmortissement,2)."</td><td>".round($capitalRestant,2)."</td><td>".round($this->Mensualite(),2)."</td></tr>";
       }else{
        $parinteret = $capitalRestant*$this->tm;
        $parAmortissement = $this->Mensualite()-$parinteret;
        $capitalRestant = $capitalRestant-$parAmortissement;
        $chaine.="<tr><td>".($i+1)."</td><td>".round($parinteret,2)."</td><td>".round($parAmortissement,2)."</td><td>".round($capitalRestant,2)."</td><td>".round($this->Mensualite(),2)."</td></tr>";
       }
    }
    $chaine.="</tbody></table>";
    return $chaine;
}













}














?>