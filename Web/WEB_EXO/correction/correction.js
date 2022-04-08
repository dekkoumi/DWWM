let annee;
let yolo = true;


do{
    annee = prompt("Saisir une année");
if(isNaN(annee)){
    alert("Entrez un nombre")
}
else{
    if(annee < 1900 || annee > 2021){
        alert("Entrez une année valide")
    }
    else{
        alert("Votre année est valide")
        yolo = false;
    }

}
}
while(yolo);