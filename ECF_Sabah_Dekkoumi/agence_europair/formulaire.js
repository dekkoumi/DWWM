let regexnonvide = /^[a-zA-Z]+$/;
let monNom = document.getElementById("nom").value;
let prenom = document.getElementById("prenom").value;
let email = document.getElementById("email").value;
let regexmail = /^[a-z]+[a-z0-9_.-]*[@][a-z0-9_.-]{2,}[.][a-z]{2,4}$/;
let motdepasse = document.getElementById("mdp").value;
let regexmdp = /^[a-zA-Z0-9]{2,}[.][a-z]{2,4}$/;
let confirmmdp = document.getElementById("confirmmdp").value;
let regexconfirmmdp = /^[a-zA-Z0-9]{2,}[.][a-z]{2,4}$/;
let age = document.getElementById("age").value;
let regexage = /^[0-9]{2,2}$/;
let codepostal = document.getElementById('cp').value;
document.getElementById("valider").addEventListener("click"), function () {
    if (regexnonvide.test(monNom) == true && regexnonvide.test(prenom) == true && regexmail.test(email) == true && regexmdp.test(motdepasse) == true && regexconfirmmdp.test(confirmmdp) == true && regexage.test(age) == true && regexcp.test(codepostal) == true) {
        alert("formulaire bien rempli");
    } else {
        alert("formulaire mal rempli");
    }
}
function verifSend(); {
    if (regexnonvide.test(monNom) == true && regexnonvide.test(prenom) == true && regexmail.test(email) == true && regexmdp.test(motdepasse) == true && regexconfirmmdp.test(confirmmdp) == true && regexage.test(age) == true && regexcp.test(codepostal) == true) {
        alert("formulaire bien rempli");
    } else {
        alert("formulaire mal rempli");
    }
}


    function check(){
        var nbr;
        nbr = Number(document.getElementById("age").value);
        if(nbr < 18)
        {
           alert("Vous n'avez pas l'âge requis");
        }
        else
        {
           alert("l'âge doit être supérieur à 18 ans pour réserver un voyage et s'inscrire");
        }
}
