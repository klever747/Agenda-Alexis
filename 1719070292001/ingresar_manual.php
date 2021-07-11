<?php
include 'Conexion/conexion_pdo.php';

$ruc = $_POST["ruc"];
$id = $_POST["id"];
$vence = $_POST["vencimiento"];
$dias = $_POST["dias"];

$nuevo=$pdo->query("call tarea_manual('$ruc',$id,STR_TO_DATE('".$vence."','%m/%d/%Y'),$dias)");

if($nuevo){
echo 2;
} else {
echo 1;
}
?>