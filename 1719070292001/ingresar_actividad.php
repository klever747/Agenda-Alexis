<?php
include 'Conexion/conexion_pdo.php';

$txtActividad = $_POST["txtActividad"];
$txtEntidad = $_POST["txtEntidad"];
$idactividad="";

$nuevo=$pdo->query("insert into actividad (entidad, actividad, pn_empleado, pn_rise, pn_no_obligado, pn_no_obligado_semestral, pn_obligado, pj_sa, pj_cia_ltda, pj_sin_fin_lucro, pj_seps_finan, pj_seps_no_finan)
 values('$txtEntidad','$txtActividad',0,0,0,0,0,0,0,0,0,0)");


if($nuevo){
echo 2;
} else {
echo 1;
}
?>