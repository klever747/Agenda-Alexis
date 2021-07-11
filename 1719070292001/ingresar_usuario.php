<?php
include 'Conexion/conexion_pdo.php';

$txtUsuario = $_POST["txtUsuario"];
$txtTelefono = $_POST["txtTelefono"];
$txtNivel = $_POST["txtNivel"];
$txtEstado = $_POST["txtEstado"];
$txtNombre = $_POST["txtNombre"];
$txtCorreo = $_POST["txtCorreo"];
$txtPassword = $_POST["txtPassword"];


$nuevo=$pdo->query("insert into usuarios (usuario, clave, nombre, correo, telefono, nivel, status)
 values('$txtUsuario','$txtPassword','$txtNombre','$txtCorreo','$txtTelefono',$txtNivel,'$txtEstado ')");

if($nuevo){
echo 2;
} else {
echo 1;
}
?>