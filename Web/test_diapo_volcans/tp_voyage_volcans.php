<?php
$min=$_GET["min"]-1;
$max=$_GET["max"];
$donnees=file_get_contents("tp_voyage_volcans.json");
$tab=json_decode($donnees,true);
$longeur=$max-$min;
$result=[];
$result=array_slice($tab,$min,$longeur);
echo json_encode($result,JSON_PRETTY_PRINT|JSON_UNESCAPED_UNICODE);

//echo json_encode($tab);


?>