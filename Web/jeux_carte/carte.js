function creerCellTitre(_contenu,_element)
{
  let maCell=document.createElement("th");
  maCell.innerText=_contenu;
  _element.appendChild(maCell);
}

function fillTable(_donnees)
{
  let montab=document.querySelector("#tabcarte");
  let entete=montab.createTHead();
  let lignetitre=entete.insertRow();
  
  
 for (var key in _donnees[0]) {
 //créer cellule et metre la clé dedans et les rattacher a la ligne de titre
     creerCellTitre(key,lignetitre);
   }
 
   let monBody=montab.createTBody();

   for (let i = 0; i < _donnees.length; i++) {
     
    let maLigne=monBody.insertRow();
    let monObjet=_donnees[i];
    for (var key in _donnees[i]) {
          
      let maCellule=maLigne.insertCell();
      maCellule.innerText=monObjet[key];
      maLigne.appendChild(maCellule);
        
      
    }
     
   }
}
function rechercherMaxAttack(_data){

  let max=_data[0].attack
  let numCarte=_data[0].id
  console.log(max);

  for (let i = 0; i < _data.length; i++) {
      let monObj=_data[i];
      
      if (monObj.attack>max) {

        max=monObj.attack;
        numCarte=monObj.id
        
      }
    
  }
  return _data[numCarte-1];
}

function rechercherdefense(_data){

  let max=_data[0].armor
  let numCarte=_data[0].id
  console.log(max);

  for (let i = 0; i < _data.length; i++) {
      let monObj=_data[i];
      
      if (monObj.armor>max) {

        max=monObj.armor;
        numCarte=monObj.id
        
      }
    
  }
  return _data[numCarte-1];
}
function rechercherpayed(_data){

  let max=_data[0].played
  let numCarte=_data[0].id
  console.log(max);

  for (let i = 0; i < _data.length; i++) {
      let monObj=_data[i];
      
      if (monObj.played>max) {

        max=monObj.played;
        numCarte=monObj.id
        
      }
    
  }
  return _data[numCarte-1];
}
function recherchervictories(_data){

  let max=_data[0].victory
  let numCarte=_data[0].id
  console.log(max);

  for (let i = 0; i < _data.length; i++) {
      let monObj=_data[i];
      
      if (monObj.victory>max) {

        max=monObj.victory;
        numCarte=monObj.id
        
      }
    
  }
  return _data[numCarte-1];
}

const btndefense=document.querySelector("#btn_attack");
const btnattaque=document.querySelector("#btn_defense");
const btnvictory=document.querySelector("#btn_victory");
const btnplayed=document.querySelector("#btn_played");
const btnreset=document.querySelector("#reset");


let xhr = new XMLHttpRequest();
xhr.open("GET", "carte.json", true);
xhr.responseType = "json";
xhr.send();

xhr.onload = function() {
  if (xhr.status != 200) {
    alert("Erreur" + xhr.status + ":" + xhr.statusText);
  } else {
    let data = xhr.response;
    console.log(data);
    fillTable(data);
    // console.log(rechercherMaxAttack(data))
  
    btndefense.addEventListener("click",function(){
      let objmax=rechercherMaxAttack(data);  
       document.querySelector("#score").innerText="played:"+objmax.played+" | " + "victories:"+objmax.victory;
      document.querySelector("#nom").innerText=objmax.name;
      document.querySelector("#idpower").innerText=objmax.power;
      document.querySelector("#idattack").innerText=objmax.attack;
      document.querySelector("#iddefense").innerText=objmax.armor;
   
    });
    btnattaque.addEventListener("click",function(){
      let objmax=rechercherdefense(data);  
       document.querySelector("#score").innerText="played:"+objmax.played+" | " + "victories:"+objmax.victory;
      document.querySelector("#nom").innerText=objmax.name;
      document.querySelector("#idpower").innerText=objmax.power;
      document.querySelector("#idattack").innerText=objmax.attack;
      document.querySelector("#iddefense").innerText=objmax.armor;
   
    });
    btnplayed.addEventListener("click",function(){
      let objmax=rechercherpayed(data);  
       document.querySelector("#score").innerText="played:"+objmax.played+" | " + "victories:"+objmax.victory;
      document.querySelector("#nom").innerText=objmax.name;
      document.querySelector("#idpower").innerText=objmax.power;
      document.querySelector("#idattack").innerText=objmax.attack;
      document.querySelector("#iddefense").innerText=objmax.armor;
   
    });
    btnvictory.addEventListener("click",function(){
      let objmax=recherchervictories(data);  
       document.querySelector("#score").innerText="played:"+objmax.played+" | " + "victories:"+objmax.victory;
      document.querySelector("#nom").innerText=objmax.name;
      document.querySelector("#idpower").innerText=objmax.power;
      document.querySelector("#idattack").innerText=objmax.attack;
      document.querySelector("#iddefense").innerText=objmax.armor;
    });
    btnreset.addEventListener("click",function(){
    
       document.querySelector("#score").innerText=" "
      document.querySelector("#nom").innerText="character"
      document.querySelector("#idpower").innerText=" "
      document.querySelector("#idattack").innerText=""
      document.querySelector("#iddefense").innerText=" "
    });
    
  }
};