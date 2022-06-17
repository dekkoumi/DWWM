<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

</head>
<body>
<?php require("./pret.php") ;
if (!empty($_POST["capital"])&& !empty($_POST["taux"])){
    $monpret= new Pret (floatval($_POST["capital"]),floatval($_POST["taux"]),intval($_POST["remboursement"]));
    $pret= $monpret->Mensualite();
    echo "votre remboursement est de :".$pret."€ à regler par mois";

}
?>
<form action="index.php" method="POST" id="form1">
<label for="capital">Capital emprunté: </label>
<input type="text" name="capital" id="capital" value='<?php
if (!empty($POST["capital"])) 
{echo $POST["capital"];} ?>' ><br>

<label for="taux"> Taux d'intérêt:</label>
<input type="text" name="taux"id="taux" 
value='<?php $res_taux=(isset($_POST["taux"]))? ($_POST["taux"]):"0"; echo$res_taux?>'
><br>


<label for="remboursement">Durée de remboursemment en nb d'année:</label>
<input type="number" name=" remboursement"id="remboursement"
value='<?php (!empty($_POST["remboursement"]))? print($POST["rembousement"]): print("");?>'
><br>

<label for="mensualite">Mensualité:</label>
<input type="texte" name=" mensualite"id="mensualite" readonly="true" value='<?php $mensualite=(!empty($pret))? $pret: "0";echo $mensualite."€";?>'>

<input type="submit" value="valider" id="valider" name="valider">
</form>


</body>
</html>