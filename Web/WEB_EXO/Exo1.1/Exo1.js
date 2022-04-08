let a;
let b;
let yolo;

a = prompt("saisir la valeur a :");
b = prompt("saisir la valeur b :");

yolo = b;
b = a;
a = yolo;

document.write( a + " " + b);