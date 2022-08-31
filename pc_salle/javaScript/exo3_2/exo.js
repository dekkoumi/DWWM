let mot = prompt("Saisir un mot :");

function palindrome(str){
    if(str.split('').reverse().join('') === str){
        document.write("bravo");
    }else{
        document.write("pas bravo");
    }
}
palindrome(mot);