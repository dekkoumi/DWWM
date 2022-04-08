let array = [0,5,10,15,20,25,30,35,40,45,50,55,60,65,70,75,80,85,90,100];
let yolo = prompt("saisir une valeur en multiple de 5 : ");
let found = array.find(element=>element == yolo)

if (found === undefined ) {
    alert('Paul a dit que vous etes aussi nul que le CSS')
} else {
    alert('ca marche')
}  
console.log(found);