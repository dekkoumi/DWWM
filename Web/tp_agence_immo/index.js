
const leNom = document.getElementById("nom");
const leTel = document.getElementById("telephone");
const leMail = document.getElementById("email");

function verifySend(){
    let maRegex =  /^[a-z]+(-[a-z]+)?$/i


    verifBool = false;
    if (monNom.value != "" && monTel.value != "" && monMail.value != "" && maRegex.test(monNom.value)) {

        alert("formulaire bien rempli");
    
        let dateJour = new Date();
        let dateExpiration = new Date(dateJour.getFullYear(), dateJour.getMonth(), dateJour.getDate(), (dateJour.getHours() + 3), dateJour.getMinutes(), dateJour.getSeconds(), dateJour.getMilliseconds());
        let expiration = dateExpiration.toUTCString();
        document.cookie = "expediteur=" + monNom.value + "; expires=" + expiration + "; SameSite=strict";
        verifBool = true;
      }
      return verifBool;

      function genererDiapo(_data) {

        for (let i = 0; i < _data.length; i++) {
          let monObjet = _data[i];
          if (i == 0) {
            let monItem = document.createElement("div");
            monItem.setAttribute("class", "item active");
            let monImg = document.createElement("img");
            monImg.setAttribute("src", "img_slider_modif/fond" + monObjet.id + ".jpg ");
            monImg.setAttribute("alt", monObjet.titre);
            monItem.appendChild(monImg);
      
            let monContainer = document.createElement("div");
            monContainer.setAttribute("class", "container");
            monItem.appendChild(monContainer);
            let monCaption = document.createElement("div");
            monCaption.setAttribute("class", "carousel-caption");
            monContainer.appendChild(monCaption);
            let monTitre = document.createElement("h1");
            // creer un element
            monTitre.innerText = monObjet.titre;
            monCaption.appendChild(monTitre);
            document.querySelector(".carousel-inner").appendChild(monItem);
            let monAccroche = document.createElement("p");
            monAccroche.setAttribute("class", "lead");
            monAccroche.innerText = monObjet.accroche;
            monCaption.appendChild(monAccroche);
            let btn = document.createElement("a");
            btn.setAttribute("class", "btn btn-large btn-primary");
            btn.innerText = "Learn more";
            monCaption.appendChild(btn);
      
          }
          else {
      
            let monItem = document.createElement("div");
            monItem.setAttribute("class", "item");
            //spécifier la valeur d'un attribut d'un élément par rapport à son nom, ou d'en créer un, s'il n'existe pas dans l'élément.
            let monImg = document.createElement("img");
            monImg.setAttribute("src", "img_slider_modif/fond" + monObjet.id + ".jpg ");
            monImg.setAttribute("alt", monObjet.titre);
            monItem.appendChild(monImg);
            //renvoi l'element enfant
            let monContainer = document.createElement("div");
            monContainer.setAttribute("class", "container");
            monItem.appendChild(monContainer);
            let monCaption = document.createElement("div");
            monCaption.setAttribute("class", "carousel-caption");
            monContainer.appendChild(monCaption);
            let monTitre = document.createElement("h1");
            monTitre.innerText = monObjet.titre;
            monCaption.appendChild(monTitre);
            let monAccroche = document.createElement("p");
            monAccroche.setAttribute("class", "lead");
            monAccroche.innerText = monObjet.accroche;
            monCaption.appendChild(monAccroche);
            let btn = document.createElement("a");
            btn.setAttribute("class", "btn btn-large btn-primary");
            btn.innerText = "Learn more";
            monCaption.appendChild(btn);
            document.querySelector(".carousel-inner").appendChild(monItem);
            // correspond au premier div
      
      
          }
        }
    }
    let xhr = new XMLHttpRequest();
xhr.open("GET", "diapo.json", true);
xhr.responseType = "json";
xhr.send();
//send() accepte un paramètre optionnel qui vous permet de spécifier le corps de la requête; c'est principalement utilisé pour les requêtes comme PUT

xhr.onload = function () {
  //Si le statut HTTP n'est pas 200...
  if (xhr.status != 200) {
    //...On affiche le statut et le message correspondant
    alert("Erreur " + xhr.status + " : " + xhr.statusText);
    //Si le statut HTTP est 200, on affiche le nombre d'octets téléchargés et la réponse
  } else {
    let data = xhr.response;
    console.log(data);
    genererDiapo(data);
  }
};


let monBouton = document.getElementById("envoi");
monBouton.addEventListener("click", function () {
  if (verifySend()) {

    document.getElementById("formContact").submit();

  }
  else {
    alert("Saisie non conforme !");
  }
})

    
    
    





















// function verifySend(_nom,_tel,_email){

//     let regex=/^[a-z]+$/i;
//     if (_nom.value!="" && _tel.value!="" && _email.value!="" && regex.test(_nom.value ==true) ) {
     
//         document.getElementById("contact").submit();

//     }
//     else{

//         alert("formulaire mal rempli");
//     }

// }

// document.getElementById("envoi").addEventListener("click",function(){

// verifySend(leNom,leTel,leMail); 
// });

// const message = document.getElementById("message");

// function displayMessage(_message){

//     let regex = ("message");
//     if (_message.value!="") {
//         document.getElementById("paragraphe").submit();
        
//     }
//     else{
//         alert("cookies")
//     }

// }
}