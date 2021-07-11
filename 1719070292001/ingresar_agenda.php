<?php
include 'Conexion/conexion_pdo.php';

$nombre = $_POST["nombre"];
$anio = $_POST["anio"];
$fecha = $_POST["fecha"];

$res=$pdo->query("SELECT ruc FROM clientes where razon_social='$nombre'");
while($fila = $res->fetch()){
  $ruc=$fila["ruc"];
}

$nuevo=$pdo->query("call generar_agenda('$ruc','$anio',STR_TO_DATE('".$fecha."','%m/%d/%Y'))");

if($nuevo){
echo 2;
} else {
echo 1;
}
?>