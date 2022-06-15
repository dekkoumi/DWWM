<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="tp_impot.css">
    <title>formulaire de calcul impot sur le revenu</title>
    
</head>
<body>

<form action="index.php" method="post" id="form1">
<label for="nom">Votre nom</label>
<input type="text" name="nom" id="nom" placeholder="votre nom ici" value='<?php 
 if(!empty($_POST["nom"]))
  { echo $_POST["nom"]; }  ?>' > <br>

<label for="revenu">Montant revenu annuel brut</label>
<input type="number" name="revenu" id="revenu" placeholder="revenu annuel"
value='<?php (!empty($_POST["revenu"])) ? print($_POST["revenu"]) : print("") ; ?>'
><br>
<input type="submit" value="Calculer impot" id="ir" name="ir">
</form>

<?php require("./models/contribuable.php") ;
if (!empty($_POST["nom"])&& !empty($_POST["revenu"])) {

    $monContribuable= new Contribuable($_POST["nom"],$_POST["revenu"]);

    $impot=$monContribuable->calculImpot();

    echo "M(e)".$monContribuable->getNom()." vous avez un impot sur le revenu de :".$impot." € à rgler";


}
?>

    
</body>
</html>