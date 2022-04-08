let devine;
let yolo;

function getRandomInt(max){
    return Math.floor(Math.random()* max)
}
// ;
yolo = getRandomInt(100);
console.log(yolo)
devine = prompt("Saisir une valeur entre 0 et 100 : ");

if (devine == yolo){
    alert("Bravo tu as gagné le droit de rejouer !!!")
}
else{
    alert("c'est moche !")
}