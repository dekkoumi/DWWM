let yolo = prompt("Saisir votre mot : ");
function palindrome(str){  //str = chaine de caractere
    if(str.split('').reverse().join('') === str){ // split transforme en tableau // reverse bah sa reverse // join recup la chaine de caractere 
        alert("bravo / 20");
    }else{
        alert("Paul a dit que vous etes aussi nul que le CSS");
    }
}
palindrome(yolo);