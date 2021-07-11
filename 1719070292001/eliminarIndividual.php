<?php
include 'Conexion/conexion_pdo.php';

$id = $_POST["id"];

$nuevo=$pdo->query("DELETE FROM agenda_actividad  where id=$id");
if($nuevo){
echo 2;
} else {
echo 1;
}
?>