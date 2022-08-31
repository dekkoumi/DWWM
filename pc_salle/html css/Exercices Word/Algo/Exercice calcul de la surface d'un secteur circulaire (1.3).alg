<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="AFFICHERCALCUL  Math.PI (&quot;R,2 A/360&quot;)"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2defaut="" F2etat="inactif" F2para="" F2lignes=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param epaisseurPoint="2" arrondiAuto="vrai" nbDecimales="8" totalBoucles="5000000" maxBoucle="500000" epaisseurLigne="2" totalAffichages="1000"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#Rayon_R_dun_cercle" algoitem="Rayon_R_dun_cercle EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#Angle" algoitem="Angle EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="3#Rayon_R_dun_cercle#0#pasliste" algoitem="AFFICHER Rayon_R_dun_cercle"/>
        <item code="4#L'aire du du secteur circulaire est :#0" algoitem="AFFICHER &quot;L'aire du du secteur circulaire est :&quot;"/>
        <item code="20# Math.PI (&quot;R,2 A/360&quot;)#0" algoitem="AFFICHERCALCUL  Math.PI (&quot;R,2 A/360&quot;)"/>
        <item code="2#Angle#pasliste" algoitem="LIRE Angle"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
