prixHT = parseInt(prompt("Prix de l'article hors taxe ?"),10) ; 
nombreArticle = prompt("Nombre d'article(s) ?");
prixTTC = (((prixHT / 100)*20)*nombreArticle)+ prixHT*nombreArticle;
document.write("Le prix TTC est de " + prixTTC);