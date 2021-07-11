<?php 
session_start();
require_once('Conexion/conexion.php');

$conn = mysqli_connect($hostname_conexion, $username_conexion,$password_conexion,$database_conexion);
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
    echo "ERRor";
}
//$nomb = $_SESSION["nombre"];
$sql_vencidos="SELECT count(id) as vencidos FROM agenda_actividad where vence<curdate() and estado='PENDIENTE'";
$sql_pendientes="SELECT count(id) as pendientes FROM agenda_actividad where vence>curdate() and fecha_aviso<=curdate() and estado='PENDIENTE'";
$sql_hoy="SELECT count(id) as hoy FROM agenda_actividad where vence=curdate() and estado='PENDIENTE'";
$sql_proximos="SELECT count(id) as proximos FROM agenda_actividad where vence>curdate()";

$rs1 = mysqli_query($conn, $sql_vencidos);
while($row = mysqli_fetch_assoc($rs1)) {
    $vencidos=$row["vencidos"];
}

$rs2 = mysqli_query($conn, $sql_pendientes);
while($row2 = mysqli_fetch_assoc($rs2)) {
    $pendientes=$row2["pendientes"];
}

$rs3 = mysqli_query($conn, $sql_hoy);
while($row3 = mysqli_fetch_assoc($rs3)) {
    $hoy=$row3["hoy"];
}

$rs4 = mysqli_query($conn, $sql_proximos);
while($row4 = mysqli_fetch_assoc($rs4)) {
    $proximos=$row4["proximos"];
}

?>
<div class="modal-header">
    <h5 class="modal-title" id="exampleModalLabel">Sistema de notificaciones</h5>
    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
        <span aria-hidden="true">&times;</span>
    </button>
</div>
<div class="modal-body">
    <!-- VENCIDOS -->
    <div class="col-lg-12">
        <div class="widget red-bg style1">
            <div class="row vertical-align">
                <div class="col-3">                  
                    <h2>Vencidos</h2>
                </div>
                <div class="col-9 text-right">
                    <h2 class="font-bold"><a href="actividades.php?tipo=VENCIDO" style="color:#FFFF;"><?php echo $vencidos;?></a></h2>
                </div>
            </div>
        </div>
    </div>
    <!-- PENDIENTES -->
    <div class="col-lg-12">
        <div class="widget yellow-bg style1">
            <div class="row vertical-align">
                <div class="col-3">
                <h2>Pendientes</h2>
                </div>
                <div class="col-9 text-right">
                    <h2 class="font-bold"><a href="actividades.php?tipo=PENDIENTE" style="color:#FFFF;"><?php echo $pendientes;?></a></h2>
                </div>
            </div>
        </div>
    </div>
    <!-- HOY -->
    <div class="col-lg-12">
        <div class="widget navy-bg style1">
            <div class="row vertical-align">
                <div class="col-3">
                <h2>Hoy</h2>
                </div>
                <div class="col-9 text-right">
                    <h2 class="font-bold"><a href="actividades.php?tipo=HOY" style="color:#FFFF;"><?php echo $hoy;?></a></h2>
                </div>
            </div>
        </div>
    </div>
    <!-- PROXIMOS -->
    <div class="col-lg-12">
        <div class="widget blue-bg style1">
            <div class="row vertical-align">
                <div class="col-3">
                <h2>Próximos</h2>
                </div>
                <div class="col-9 text-right">
                    <h2 class="font-bold"><a href="actividades.php?tipo=PROXIMO" style="color:#FFFF;"><?php echo $proximos;?></a></h2>
                </div>
            </div>
        </div>
    </div>
</div>