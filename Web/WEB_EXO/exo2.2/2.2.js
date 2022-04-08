let nom1 = prompt("Nom 1 ?");
let nom2 = prompt("Nom 2 ?");
let nom3 = prompt("Nom 3 ?");
if(nom1 < nom2) {
    
    if(nom2 < nom3){
        document.write("Les noms sont dans l'ordre alphabétique !")
    }
    else{
        document.write("Les noms ne sont pas dans l'ordre alphabétique !")
    }
}
else {
    document.write("Les noms ne sont pas dans l'ordre alphabétique !")
}