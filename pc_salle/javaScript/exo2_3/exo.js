// 3) Écrire un algorithme qui demande une heure (heures minutes secondes) ) un utilisateur
// et affiche l'heure qu'il sera 1 seconde plus tard. Vérifier la validité des données saisies.


// -------------F5 POUR RAFRAICHIR LA PAGE-----------------------


let moment = new Date();
let hour =  parseInt(moment.getHours());
let minute = parseInt(moment.getMinutes());
let second = parseInt(moment.getSeconds());


document.write("<p>" + hour + " h " + minute + " m " 
+ second + " s " + "</p>");

let newHour = hour ;
let newMinute = minute ;
let newSecond = second + 1;

let newDate = true;

switch (newDate) {
    case (hour != 23 && minute == 59 && second == 59) :
        newHour = hour +1;
        newSecond = 00;
        newMinute = 00;
        document.write("<p>" + newHour + " H " + newMinute + " M " + newSecond + " S " + "</p>");
        break;

    case  (hour !==23 && minute !== 59 && second ==  59) :
        newHour = hour;
        newSecond = 00;
        newMinute = minute + 1;
        document.write("<p>" + newHour + " H" + newMinute + " M " + newSecond + " S " + "</p>");
        break;