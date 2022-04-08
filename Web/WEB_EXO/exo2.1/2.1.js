let lastname;
let firstname;
let age;

lastname = prompt("saisir le nom de famille :");
firstname = prompt("saisir le prenom :");
age = prompt("saisir l'age :");

if(age > 18){
    document.write(firstname +" est majeur")
}
else{
    document.write(firstname +" n'est pas majeur")
}

document.write(lastname + " " + firstname + " " + age);