
<?php
session_start();
require_once('Conexion/conexion.php');

$conn = mysqli_connect($hostname_conexion, $username_conexion, $password_conexion, $database_conexion);
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
    echo "ERRor";
}
$nombre = $_POST["nombre"];

$sql = "select ruc from clientes where razon_social='$nombre'";


$ruc="";
$rs1 = mysqli_query($conn, $sql);
 while ($row = mysqli_fetch_assoc($rs1)) {
     $ruc=$row["ruc"]; 
 }
 echo $ruc;
 ?>