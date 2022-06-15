<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

</head>
<body>
<form action="index.php" method="post" id="form1">
<label for="capital">Capital emprunté: </label>
<input type="text" name="capital" id="capital" value='<?php
if (!empty($POST["capital"])) 
{echo $POST["capital"];} ?>' ><br>

<label for="taux"> Taux d'intérêt:</label>
<input type="text" name="taux"id="taux" 
value='<?php (!empty($_POST["taux"]))? print($_POST["taux"]):print("");?>'
><br>


<label for="remboursement">Durée de remboursemment en nb d'année:</label>
<input type="number" name=" remboursement"id="remboursement"
value='<?php (!empty($_POST["remboursement"]))? print($POST["rembousement"]): print("");?>'
><br>


<input type="submit" value="valider" id="valider" name="valider">
</form>
</body>
</html>