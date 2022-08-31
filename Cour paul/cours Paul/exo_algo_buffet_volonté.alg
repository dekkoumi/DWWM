<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant=""/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2para="" F2lignes="" F2etat="inactif" F2defaut=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param maxBoucle="500000" totalBoucles="5000000" totalAffichages="1000" arrondiAuto="vrai" nbDecimales="8" epaisseurLigne="2" epaisseurPoint="2"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#buffet" algoitem="buffet EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#café_digestif" algoitem="café_digestif EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#addition" algoitem="addition EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#plats_dispo" algoitem="plats_dispo EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#masseoir_et_manger" algoitem="masseoir_et_manger EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#pourboire" algoitem="pourboire EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#service_bon" algoitem="service_bon EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#jai_faim" algoitem="jai_faim EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#assiette" algoitem="assiette EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#nombre_de_plats" algoitem="nombre_de_plats EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#plat_dispo" algoitem="plat_dispo EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="5#jai_faim#1#pasliste" algoitem="jai_faim PREND_LA_VALEUR 1"/>
        <item code="5#masseoir_et_manger#1#pasliste" algoitem="masseoir_et_manger PREND_LA_VALEUR 1"/>
        <item code="5#lassiette_est_pleine#1#pasliste" algoitem="lassiette_est_pleine PREND_LA_VALEUR 1"/>
        <item code="5#lassiette_est_vide#0#pasliste" algoitem="lassiette_est_vide PREND_LA_VALEUR 0"/>
        <item code="5#café_digestif#1#pasliste" algoitem="café_digestif PREND_LA_VALEUR 1"/>
        <item code="5#Je_prend_une_assiette#1#pasliste" algoitem="Je_prend_une_assiette PREND_LA_VALEUR 1"/>
        <item code="5#service_bon#1#pasliste" algoitem="service_bon PREND_LA_VALEUR 1"/>
        <item code="5#buffet#2#pasliste" algoitem="buffet PREND_LA_VALEUR 2"/>
        <item code="5#addition#1#pasliste" algoitem="addition PREND_LA_VALEUR 1"/>
        <item code="5#nombre_de_plats#3#pasliste" algoitem="nombre_de_plats PREND_LA_VALEUR 3"/>
        <item code="5#plat_dispo#1#pasliste" algoitem="plat_dispo PREND_LA_VALEUR 1"/>
        <item code="4#avez-vous faim ?#1" algoitem="AFFICHER &quot;avez-vous faim ?&quot;"/>
        <item code="2#jai_faim#pasliste" algoitem="LIRE jai_faim"/>
        <item code="15#jai_faim" algoitem="TANT_QUE (jai_faim) FAIRE">
            <item code="16#debuttantque" algoitem="DEBUT_TANT_QUE"/>
            <item code="4#ok bonne appétit#1" algoitem="AFFICHER &quot;ok bonne appétit&quot;"/>
            <item code="15#jai_faim" algoitem="TANT_QUE (jai_faim) FAIRE">
                <item code="16#debuttantque" algoitem="DEBUT_TANT_QUE"/>
                <item code="17#fintantque" algoitem="FIN_TANT_QUE"/>
            </item>
            <item code="2#jai_faim#pasliste" algoitem="LIRE jai_faim"/>
            <item code="17#fintantque" algoitem="FIN_TANT_QUE"/>
        </item>
        <item code="103#commentaire" algoitem=""/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
