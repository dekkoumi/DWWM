function creerCellTitre(_contenu,_element){

let maCell=document.createElement("th");
maCell.innerText=_contenu;
_element.appendChild(maCell);
}

function fillTable(_donnees){

    let montab=document.querySelector("#cereals");
    let entete=montab.createTHead();
    let lignetitre=entete.insertRow();



    for (var key in _donnees[0]){
        creerCellTitre(key,lignetitre);

    }

    creerCellTitre("nutriscore",lignetitre);
    creerCellTitre("supprimer",lignetitre);
        let monBody=montab.createTBody();

        for(let i = 0; i< _donnees.length; i++){
             
        let maLigne=monBody.insertRow();
        let monObjet=_donnees[i];
        for (var key in _donnees[i]) {


        let maCellule=maLigne.insertCell();
        maCellule.innerText=monObjet[key];
        maLigne.appendChild(maCellule);
        }


       // let NS=document.createElement("td");
       // NS.innerText=afficherlettre()

        }

}

 










let xhr = new XMLHttpRequest();
xhr.open("GET","tp_cereals.json",true);
xhr.responseType = "json";
xhr.send();
xhr.onload = function(){
    if (xhr.status != 200) {
        alert ("erreur"+xhr.status + ":"+ xhr.statusText);
    
        
    }
    else{
        let donnees = xhr.response;
        let tabdonnee=donnees["data"];
        console.log(tabdonnee);
        fillTable(tabdonnee);

    }
}