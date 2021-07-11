<?php
include 'Conexion/conexion_pdo.php';

$id = $_POST["id"];

$nuevo=$pdo->query("DELETE FROM clientes  where ruc='$id'");
if($nuevo){
echo 2;
} else {
echo 1;
}
?>