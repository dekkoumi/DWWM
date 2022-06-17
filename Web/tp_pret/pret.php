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














}














?>