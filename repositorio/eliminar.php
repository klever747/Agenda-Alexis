<?php
include 'Conexion/conexion_pdo.php';

$id = $_GET["id"];

$nuevo=$pdo->query("DELETE FROM recursos  where id=$id");
if($nuevo){
    header('Location: repositorio.php');
} else {
    header('Location: repositorio.php');
}
?>