<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="FIN_ALGORITHME"/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2etat="inactif" F2para="" F2defaut="" F2lignes=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param totalAffichages="1000" arrondiAuto="vrai" maxBoucle="500000" totalBoucles="5000000" epaisseurLigne="2" nbDecimales="8" epaisseurPoint="2"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#Il_fait_beau" algoitem="Il_fait_beau EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#Etat_de_la_byciclette" algoitem="Etat_de_la_byciclette EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#Je_sors_et_je_passe_chez_le_garagiste" algoitem="Je_sors_et_je_passe_chez_le_garagiste EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#Je_reste_chez_moi_et_je_lis_un_livre" algoitem="Je_reste_chez_moi_et_je_lis_un_livre EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#Je_me_rends_à_la_bibliothèque" algoitem="Je_me_rends_à_la_bibliothèque EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#Je_vais_emprunter_mon_livre_à_la_bibliothèque" algoitem="Je_vais_emprunter_mon_livre_à_la_bibliothèque EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#Si_je_ne_trouve_pas_le_livre" algoitem="Si_je_ne_trouve_pas_le_livre EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#Je_choisis_un_autre_livre" algoitem="Je_choisis_un_autre_livre EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#Jemprunte_un_roman_damour" algoitem="Jemprunte_un_roman_damour EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#Je_ne_trouve_pas_le_livre" algoitem="Je_ne_trouve_pas_le_livre EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#Le_livre_nest_pas_disponible" algoitem="Le_livre_nest_pas_disponible EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#Jemprunte_un_roman" algoitem="Jemprunte_un_roman EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="4#Fait-il  beau#0" algoitem="AFFICHER &quot;Fait-il  beau&quot;"/>
        <item code="2#Il_fait_beau#pasliste" algoitem="LIRE Il_fait_beau"/>
        <item code="6#Il_fait_beau" algoitem="SI (Il_fait_beau) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="4#Vous pouvez sortir et passer chez le garagiste#0" algoitem="AFFICHER &quot;Vous pouvez sortir et passer chez le garagiste&quot;"/>
            <item code="2#Je_sors_et_je_passe_chez_le_garagiste#pasliste" algoitem="LIRE Je_sors_et_je_passe_chez_le_garagiste"/>
            <item code="8#finsi" algoitem="FIN_SI"/>
            <item code="9#sinon" algoitem="SINON">
                <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                <item code="4#Vous pouvez rester chez vous et lire un livre#0" algoitem="AFFICHER &quot;Vous pouvez rester chez vous et lire un livre&quot;"/>
                <item code="2#Je_reste_chez_moi_et_je_lis_un_livre#pasliste" algoitem="LIRE Je_reste_chez_moi_et_je_lis_un_livre"/>
                <item code="11#finsinon" algoitem="FIN_SINON"/>
            </item>
        </item>
        <item code="3#Si_je_ne_trouve_pas_le_livre#0#pasliste" algoitem="AFFICHER Si_je_ne_trouve_pas_le_livre"/>
        <item code="2#Je_ne_trouve_pas_le_livre#pasliste" algoitem="LIRE Je_ne_trouve_pas_le_livre"/>
        <item code="6#Si_je_ne_trouve_pas_le_livre" algoitem="SI (Si_je_ne_trouve_pas_le_livre) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="4#Vous pouvez aller à la bibliothèque#1" algoitem="AFFICHER &quot;Vous pouvez aller à la bibliothèque&quot;"/>
            <item code="2#Je_vais_emprunter_mon_livre_à_la_bibliothèque#pasliste" algoitem="LIRE Je_vais_emprunter_mon_livre_à_la_bibliothèque"/>
            <item code="8#finsi" algoitem="FIN_SI"/>
        </item>
        <item code="6#Le_livre_nest_pas_disponible" algoitem="SI (Le_livre_nest_pas_disponible) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="4#Vous pouvez emprunter un roman#1" algoitem="AFFICHER &quot;Vous pouvez emprunter un roman&quot;"/>
            <item code="2#Jemprunte_un_roman_damour#pasliste" algoitem="LIRE Jemprunte_un_roman_damour"/>
            <item code="8#finsi" algoitem="FIN_SI"/>
        </item>
        <item code="103#commentaire" algoitem=""/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
