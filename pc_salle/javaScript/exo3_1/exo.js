let tableau = [3,6,9,12];

let saisir = prompt ("saisir une valeur");

let recherche = tableau.find(element => element == saisir);
if (recherche === undefined){
    alert("marche pas !");
    
}else{
    alert("ca marche !");

}
console.log(recherche);