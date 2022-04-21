// Déclaration de variables
let quantite = 0;
let prix = 0;
let prix_articles = 0;

// Récupérer l'élément HTML de type input lié à la quantité de l'article 1
let qte1 = document.getElementById("text_quantite") ;
// Récupérer l'élément HTML de type input lié au prix unitaire de l'article 1
let unitPrice1 = document.getElementById("prix1");
// Récupérer l'élément HTML de type input lié au prix total pour les articles 1
let prixCalculeArticle1 = document.getElementById("text_prix_article");

// Ajouter un l'écoute d'événements de type input sur l'élément HTML quantity1
// addEventListener prend 2 paramètre : une string pour définir le type d'événement à écouter et une fonction qui sera executée à chaque fois que l'événement à lieu
quantite.addEventListener("input", function(event) {
    // event.target est la cible/l'élement HTML sur lequel a eu lieu l'événement.    .value récupère la valeur de l'attribut value de l'élément sur lequel a eu lieu l'événement
    quantite= event.target.value;
    //quantite.value = qte1
    event.target.value = qte1;
    //qantite = quantite.value

    // Calcul du prix total des articles 1.
    prix_articles = qte1 * prixU1;
    // Ajout de la valeur calculée au niveau de l'élément correspondant.
    prixCalculeArticle1.value = prix_articles;
})

@@ -34,4 +43,4 @@ quantity1.addEventListener("click", faireUnTruc)
function faireUnTruc(event){
 console.log("Faire quelque chose")
}
 
