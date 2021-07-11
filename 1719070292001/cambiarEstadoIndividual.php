<?php
include 'Conexion/conexion_pdo.php';

$actual = $_POST["actual"];
$id = $_POST["id"];
if ($actual == 'FINALIZADO') {
    $actual = 'PENDIENTE';
    $nuevo = $pdo->query("UPDATE agenda_actividad set estado='$actual' where id=$id");
    if ($nuevo) {
        echo 2;
    } else {
        echo 1;
    }
}else if($actual == 'PENDIENTE'){
    echo 0;
}
