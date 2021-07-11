<?php
session_start();
require_once('Conexion/conexion.php');
include 'Conexion/conexion_pdo.php';

$conn = mysqli_connect($hostname_conexion, $username_conexion, $password_conexion, $database_conexion);
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
    echo "ERRor";
}
$id = $_POST["id"];
$estado = $_POST["estado"];
$txtIdComentario=$_POST["txtIdComentario"];


$nuevo=$pdo->query("update comentarios set estado='$estado' where id=$id");

$sql = "select *from comentarios where id_agenda=$txtIdComentario";
$rs1 = mysqli_query($conn, $sql);

if($nuevo){
    ?>
<div class="input-group">
    <input type="text" placeholder="Comenta aqui" class="input form-control-sm form-control" name="txtComentario" id="txtComentario">
    <span class="input-group-btn">
        <input type="text" hidden value="<?= $txtIdComentario ?>" name="txtIdComentario" id="txtIdComentario">
        <input type="text" hidden value="<?= $_SESSION['nombre'] ?>" name="txtNombreUsuario" id="txtNombreUsuario">
        <button type="button" class="btn btn-sm btn-white comentar" id="comentar"> <i class="fa fa-plus"></i> Comentar</button>
    </span>
</div>

<ul class="sortable-list connectList agile-list" id="todo">
    <?php
    while ($row = mysqli_fetch_assoc($rs1)) {
        if ($row["estado"] == "REVISADO") {
            ?>
            <li class="success-element" id="task1">
            <?= $row["comentario"] ?>
           <div class="agile-detail">
               <a href="#" class="float-right btn btn-xs btn-danger" onclick="return eliminarComentario('<?= $row['id'] ?>')"><i class="fa fa-trash"></i></a>
               <a href="#" class="float-right btn btn-xs btn-info" onclick="return cambiarEstadoComentario(<?= $row['id'] ?>,'PENDIENTE')"><i class="fa fa-refresh"></i><?= " ".$row["estado"] ?></a>
               <i class="fa fa-clock-o"></i> <?php echo $row["fecha"].' - '. $row["usuario"] ?>
           </div>
       </li>
       <?php
        } else {
            ?>
            <li class="warning-element" id="task1">
            <?= $row["comentario"] ?>
           <div class="agile-detail">
               <a href="#" class="float-right btn btn-xs btn-danger" onclick="return eliminarComentario('<?= $row['id'] ?>')"><i class="fa fa-trash"></i></a>
               <a href="#" class="float-right btn btn-xs btn-warning" onclick="return cambiarEstadoComentario(<?= $row['id'] ?>,'REVISADO')"><i class="fa fa-refresh"></i><?= " ".$row["estado"] ?></a>
               <i class="fa fa-clock-o"></i> <?php echo $row["fecha"].' - '. $row["usuario"] ?>
           </div>
       </li>
       <?php
        }
    }
}else{
    while ($row = mysqli_fetch_assoc($rs1)) {
        if ($row["estado"] == "REVISADO") {
            ?>
            <li class="success-element" id="task1">
            <?= $row["comentario"] ?>
           <div class="agile-detail">
               <a href="#" class="float-right btn btn-xs btn-danger" onclick="return eliminarComentario('<?= $row['estado'] ?>')"><i class="fa fa-trash"></i></a>
               <a href="#" class="float-right btn btn-xs btn-info" onclick="return cambiarEstadoComentario(<?= $row['estado'] ?>,'PENDIENTE')"><i class="fa fa-refresh"></i><?= " ".$row["estado"] ?></a>
               <i class="fa fa-clock-o"></i> <?php echo $row["fecha"].' - '. $row["usuario"] ?>
           </div>
       </li>
       <?php
        } else {
            ?>
            <li class="warning-element" id="task1">
            <?= $row["comentario"] ?>
           <div class="agile-detail">
               <a href="#" class="float-right btn btn-xs btn-danger" onclick="return eliminarComentario('<?= $row['estado'] ?>')"><i class="fa fa-trash"></i></a>
               <a href="#" class="float-right btn btn-xs btn-warning" onclick="return cambiarEstadoComentario(<?= $row['estado'] ?>,'REVISADO')"><i class="fa fa-refresh"></i><?= " ".$row["estado"] ?></a>
               <i class="fa fa-clock-o"></i> <?php echo $row["fecha"].' - '. $row["usuario"] ?>
           </div>
       </li>
       <?php
        }
    }

}
?>
</ul>
</div>