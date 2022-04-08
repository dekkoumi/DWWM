//Faites saisir une liste de course à votre utilisateur.
//Puis affichez cette liste en manipulant le DOM d'un fichier HTML dont le body est vide de base.

let list = document.createElement("ul");
document.body.appendChild(list);
let yolo = true;
do {
  let saisie = prompt("Faites votre liste  : ");
  if (saisie == undefined || saisie == "") {
    document.write("pas de liste");
  } else if (saisie === "exit") {
    yolo = false;
  } else {
    let newSaisie = document.createElement("li");
    newSaisie.innerHTML = saisie;
    list.appendChild(newSaisie);
  }
} while(yolo);
