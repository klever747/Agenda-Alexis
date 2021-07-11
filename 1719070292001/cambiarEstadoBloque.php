<?php
ob_start();
session_start();
require_once('Conexion/conexion.php');
// Create connection
$conn = mysqli_connect($hostname_conexion, $username_conexion, $password_conexion, $database_conexion);

if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
    echo "ERRor";
}

if (isset($_POST["id"])) {


    $id = $_POST["id"];
    $tipo = $_POST["tipo"];
    $estado = $_POST["estado"];


    $query = '';
    for ($count = 0; $count < count($id); $count++) {
        $item_id = mysqli_real_escape_string($conn, $id[$count]);
        $item_tipo = mysqli_real_escape_string($conn, $tipo[$count]);
        $item_estado = mysqli_real_escape_string($conn, $estado[$count]);

        if ($item_id != '' && $item_tipo != '') {
            if ($item_tipo == "FINALIZADO") {
                //$query .= 'insert into cliente_adicionales values(0,"'.$ruc.'","'.$item_id_clean.'","'.$item_days_clean.'","'.$item_period_clean.'");';
            } else if($item_tipo == "PENDIENTE" && $item_estado == "FINALIZADO"){
                $query .= 'update agenda_actividad set estado="' . $item_estado . '",fecha_finalizacion=NOW(), usuario="' . $_SESSION["nombre"] . '" where id=' . $item_id . ';';
            }
        }
    }
    if ($query != '') {
        if (mysqli_multi_query($conn, $query)) {
            echo 2;
        } else {
            echo $query;
            echo 1;
        }
    } else {
        echo 'All Fields are Required';
    }
}
