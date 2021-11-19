<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHERCALCUL result=nbre-sous" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2defaut="" F2etat="inactif" F2lignes="" F2para=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param nbDecimales="8" totalAffichages="1000" epaisseurPoint="2" arrondiAuto="vrai" epaisseurLigne="2" maxBoucle="500000" totalBoucles="5000000"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#add" algoitem="add EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#sous" algoitem="sous EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#mul" algoitem="mul EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#div" algoitem="div EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#result" algoitem="result EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#nbre" algoitem="nbre EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="5#add#10#pasliste" algoitem="add PREND_LA_VALEUR 10"/>
        <item code="5#sous#5#pasliste" algoitem="sous PREND_LA_VALEUR 5"/>
        <item code="5#mul#7#pasliste" algoitem="mul PREND_LA_VALEUR 7"/>
        <item code="5#div#2#pasliste" algoitem="div PREND_LA_VALEUR 2"/>
        <item code="2#nbre#pasliste" algoitem="LIRE nbre"/>
        <item code="20#result=nbre+add#1" algoitem="AFFICHERCALCUL result=nbre+add"/>
        <item code="20#result=nbre-sous#1" algoitem="AFFICHERCALCUL result=nbre-sous"/>
        <item code="20#result=nbre*mul#1" algoitem="AFFICHERCALCUL result=nbre*mul"/>
        <item code="20#result=nbre/div#0" algoitem="AFFICHERCALCUL result=nbre/div"/>
        <item code="103#commentaire" algoitem=""/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
