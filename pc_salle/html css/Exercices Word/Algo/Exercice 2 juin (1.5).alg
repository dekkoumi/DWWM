<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="AFFICHERCALCUL La_somme_initiale*pow(1+Lintérêt,Le_nombre_dannée)-La_somme_initiale"/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2defaut="" F2para="" F2etat="inactif" F2lignes=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param totalBoucles="5000000" maxBoucle="500000" nbDecimales="8" arrondiAuto="vrai" epaisseurLigne="2" epaisseurPoint="2" totalAffichages="1000"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#La_somme_initiale" algoitem="La_somme_initiale EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#Lintérêt" algoitem="Lintérêt EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#Le_nombre_dannée" algoitem="Le_nombre_dannée EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="2#La_somme_initiale#pasliste" algoitem="LIRE La_somme_initiale"/>
        <item code="2#Lintérêt#pasliste" algoitem="LIRE Lintérêt"/>
        <item code="2#Le_nombre_dannée#pasliste" algoitem="LIRE Le_nombre_dannée"/>
        <item code="4#La valeur de l'intérêt simple est :#1" algoitem="AFFICHER &quot;La valeur de l'intérêt simple est :&quot;"/>
        <item code="20#La_somme_initiale*(1+Le_nombre_dannée*Lintérêt)-La_somme_initiale#1" algoitem="AFFICHERCALCUL La_somme_initiale*(1+Le_nombre_dannée*Lintérêt)-La_somme_initiale"/>
        <item code="4#la valeur de l'intérêt composé#1" algoitem="AFFICHER &quot;la valeur de l'intérêt composé&quot;"/>
        <item code="20#La_somme_initiale*pow(1+Lintérêt,Le_nombre_dannée)-La_somme_initiale#0" algoitem="AFFICHERCALCUL La_somme_initiale*pow(1+Lintérêt,Le_nombre_dannée)-La_somme_initiale"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
