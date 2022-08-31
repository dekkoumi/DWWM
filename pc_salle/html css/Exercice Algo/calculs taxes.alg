<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="REMISE PREND_LA_VALEUR S*5/100"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2para="" F2defaut="" F2etat="inactif" F2lignes=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param arrondiAuto="vrai" epaisseurLigne="2" epaisseurPoint="2" nbDecimales="8" totalAffichages="1000" totalBoucles="5000000" maxBoucle="500000"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#S" algoitem="S EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#T" algoitem="T EST_DU_TYPE NOMBRE"/>
        <item code="1#CHAINE#N" algoitem="N EST_DU_TYPE CHAINE"/>
        <item code="1#NOMBRE#TTC" algoitem="TTC EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#REMISE" algoitem="REMISE EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="5#N#&quot;Clio&quot;#pasliste" algoitem="N PREND_LA_VALEUR &quot;Clio&quot;"/>
        <item code="5#T#1.2#pasliste" algoitem="T PREND_LA_VALEUR 1.2"/>
        <item code="4#Le monta,nt de votre voiture est de :  #1" algoitem="AFFICHER &quot;Le monta,nt de votre voiture est de :  &quot;"/>
        <item code="2#S#pasliste" algoitem="LIRE S"/>
        <item code="4#Le prix de la voiture TTC est de :#1" algoitem="AFFICHER &quot;Le prix de la voiture TTC est de :&quot;"/>
        <item code="5#TTC#S*T#pasliste" algoitem="TTC PREND_LA_VALEUR S*T"/>
        <item code="3#TTC#1#pasliste" algoitem="AFFICHER TTC"/>
        <item code="4#Le montant de  la TVA est de :#1" algoitem="AFFICHER &quot;Le montant de  la TVA est de :&quot;"/>
        <item code="20#TTC - S#1" algoitem="AFFICHERCALCUL TTC - S"/>
        <item code="6#TTC > 50000" algoitem="SI (TTC > 50000) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="5#REMISE#S*5/100#pasliste" algoitem="REMISE PREND_LA_VALEUR S*5/100"/>
            <item code="4#la remise est de : #1" algoitem="AFFICHER &quot;la remise est de : &quot;"/>
            <item code="3#REMISE#1#pasliste" algoitem="AFFICHER REMISE"/>
            <item code="4#La voiture vous coutera au final  : #1" algoitem="AFFICHER &quot;La voiture vous coutera au final  : &quot;"/>
            <item code="20#TTC - REMISE#0" algoitem="AFFICHERCALCUL TTC - REMISE"/>
            <item code="8#finsi" algoitem="FIN_SI"/>
        </item>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
