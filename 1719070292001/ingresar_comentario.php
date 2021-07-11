<?php
include 'Conexion/conexion_pdo.php';

$txtComentario = $_POST["txtComentario"];
$txtNombreUsuario = $_POST["txtNombreUsuario"];
$txtIdComentario = $_POST["txtIdComentario"];


$nuevo=$pdo->query("insert into comentarios (id_agenda, comentario, usuario, fecha)
 values($txtIdComentario,'$txtComentario','$txtNombreUsuario',now())");
if($nuevo){
echo 2;
} else {
echo 1;
}
?>