<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHERCALCUL (4/3)*Math.PI*pow( Volume*Aire),(Rayon,3)" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2etat="inactif" F2para="" F2defaut="" F2lignes=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param epaisseurLigne="2" epaisseurPoint="2" maxBoucle="500000" arrondiAuto="vrai" nbDecimales="8" totalAffichages="1000" totalBoucles="5000000"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="Volume EST_DU_TYPE NOMBRE" code="1#NOMBRE#Volume"/>
        <item algoitem="Rayon EST_DU_TYPE NOMBRE" code="1#NOMBRE#Rayon"/>
        <item algoitem="Aire EST_DU_TYPE NOMBRE" code="1#NOMBRE#Aire"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="AFFICHER Rayon" code="3#Rayon#0#pasliste"/>
        <item algoitem="AFFICHER &quot;Quel est la valeur du rayon :&quot;" code="4#Quel est la valeur du rayon :#0"/>
        <item algoitem="LIRE Aire" code="2#Aire#pasliste"/>
        <item algoitem="AFFICHER &quot;L'aire est de : &quot;" code="4#L'aire est de : #0"/>
        <item algoitem="AFFICHERCALCUL 4*Math.PI*pow(Rayon,2)" code="20#4*Math.PI*pow(Rayon,2)#0"/>
        <item algoitem="" code="103#commentaire"/>
        <item algoitem="AFFICHER &quot;L'aire est de : &quot;" code="4#L'aire est de : #0"/>
        <item algoitem="AFFICHER &quot;Le volume est de : &quot;" code="4#Le volume est de : #0"/>
        <item algoitem="AFFICHERCALCUL (4/3)*Math.PI*pow( Volume*Aire),(Rayon,3)" code="20#(4/3)*Math.PI*pow( Volume*Aire),(Rayon,3)#0"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
