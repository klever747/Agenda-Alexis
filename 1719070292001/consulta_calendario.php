<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="font-awesome/css/font-awesome.css" rel="stylesheet">
<link href="css/plugins/iCheck/custom.css" rel="stylesheet">
<link href="css/plugins/steps/jquery.steps.css" rel="stylesheet">
<link href="css/plugins/dataTables/datatables.min.css" rel="stylesheet">
<link href="css/animate.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<link href="css/plugins/awesome-bootstrap-checkbox/awesome-bootstrap-checkbox.css" rel="stylesheet">
<?php
session_start();
require_once('Conexion/conexion.php');

$conn = mysqli_connect($hostname_conexion, $username_conexion, $password_conexion, $database_conexion);
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
    echo "ERRor";
}
$cnombre = $_POST["nombre"];
$cestado = $_POST["estado"];
$ctipo = $_POST["tipo"];
$cactividad = $_POST["actividad"];
$cfecha = $_POST["fecha"];

if ($cestado == 'TODOS') {
    $cestado = '';
}
if ($ctipo == 'TODOS') {
    $ctipo = '';
}
if (is_null($cnombre)) {
    $cnombre = '';
}
if (is_null($cactividad) or $cactividad=='') {
    $cactividad = '';
}

if (is_null($cfecha) or $cfecha=='') {
    $sql = "call consulta_agenda('$cnombre','$cactividad','$ctipo','$cestado');";
}else{
    $sql = "call consulta_agenda_fecha('$cnombre','$cactividad','$ctipo','$cestado','$cfecha');";
}


$rs1 = mysqli_query($conn, $sql);

?>
<table class="table table-striped table-bordered table-hover dataTables-example dataTable" id="DataTables_Table_0" aria-describedby="DataTables_Table_0_info" role="grid">

    <thead>
        <tr>
            <th>
                <input type="checkbox"  class="check" id="selectall" value>
            </th>
            <th>ID</th>
            <th>RUC</th>
            <th>RAZON SOCIAL</th>
            <th>ACTIVIDAD</th>
            <th>VENCE</th>
            <th>MES</th>
            <th>TIPO</th>
            <th>FINALIZACION</th>
            <th>ESTADO</th>
            <th>ACCIONES</th>
        </tr>
    </thead>
    <tbody>
        <?php
        while ($row = mysqli_fetch_assoc($rs1)) {


            if ($row["ESCAT"] == 'VENCIDO') {
        ?>
                <tr>
                    <td>
                        <input type="checkbox" class="check_s estado">
                    </td>
                    <td class="id"><?php echo $row["id"]; ?></td>
                    <td><?php echo $row["ruc"]; ?></td>
                    <td><?php echo $row["razon_social"]; ?></td>
                    <td class="center"><?php echo $row["actividad"]; ?></td>
                    <td class="center"><?php echo $row["vence"]; ?></td>
                    <td class="center"><?php echo $row["mes"]; ?></td>
                    <td class="tipo"><?php echo $row["estado"]; ?></td>
                    <td class="center"><?php echo $row["fecha_finalizacion"]; ?></td>
                    <td class="center text-danger"><strong><?php echo $row["ESCAT"]; ?></strong></td>
                    <td class="center">
                        <div class="btn-group">
                            <button class="btn btn-danger borrar" id="borrar" type="button" data-id="<?= $row["id"]; ?>" onclick="return eliminarIndividual('<?= $row['id'] ?>');"><i class="fa fa-trash"></i></button>
                            <button class="btn btn-warning reversar" id="reversar" type="button" data-id="<?= $row["id"]; ?>" onclick="return cambiarEstado('<?= $row['estado'] ?>','<?= $row['id'] ?>')"><i class="fa fa-exchange"></i></button>
                            <button class="btn btn-info comentario" id="comentario" type="button" data-id="<?= $row["id"]; ?>" onclick="return cargarComentarios('<?= $row['id'] ?>');"><i class="fa fa-comment-o"></i> <?= $row["comentarios"]; ?></button>
                        </div>
                    </td>

                </tr>
            <?php
            } else if ($row["ESCAT"] == 'PENDIENTE') {
            ?>
                <tr class="gradeU">
                    <td>
                      <input type="checkbox" class="check_s estado">
                    </td>
                    <td class="id"><?php echo $row["id"]; ?></td>
                    <td><?php echo $row["ruc"]; ?></td>
                    <td><?php echo $row["razon_social"]; ?></td>
                    <td class="center"><?php echo $row["actividad"]; ?></td>
                    <td class="center"><?php echo $row["vence"]; ?></td>
                    <td class="center"><?php echo $row["mes"]; ?></td>
                    <td class="tipo"><?php echo $row["estado"]; ?></td>
                    <td class="center"><?php echo $row["fecha_finalizacion"]; ?></td>
                    <td class="center text-warning"><strong><?php echo $row["ESCAT"]; ?></strong></td>
                    <td class="center">
                        <div class="btn-group">
                            <button class="btn btn-danger borrar" id="borrar" type="button" data-id="<?= $row["id"]; ?>"><i class="fa fa-trash"></i></button>
                            <button class="btn btn-warning reversar" id="reversar" type="button" data-id="<?= $row["id"]; ?>" onclick="return cambiarEstado('<?= $row['estado'] ?>','<?= $row['id'] ?>')"><i class="fa fa-exchange"></i></button>
                            <button class="btn btn-info comentario" id="comentario" type="button" data-id="<?= $row["id"]; ?>" onclick="return cargarComentarios('<?= $row['id'] ?>');"><i class="fa fa-comment-o"></i> <?= $row["comentarios"]; ?></button>
                        </div>
                    </td>
                </tr>
            <?php
            } else if ($row["ESCAT"] == 'HOY') {
            ?>
                <tr class="gradeU">
                    <td>
                    <input type="checkbox" class="check_s estado">
                    </td>
                    <td class="id"><?php echo $row["id"]; ?></td>
                    <td><?php echo $row["ruc"]; ?></td>
                    <td><?php echo $row["razon_social"]; ?></td>
                    <td class="center"><?php echo $row["actividad"]; ?></td>
                    <td class="center"><?php echo $row["vence"]; ?></td>
                    <td class="center"><?php echo $row["mes"]; ?></td>
                    <td class="tipo"><?php echo $row["estado"]; ?></td>
                    <td class="center"><?php echo $row["fecha_finalizacion"]; ?></td>
                    <td class="center text-info"><strong><?php echo $row["ESCAT"]; ?></strong></td>
                    <td class="center">
                        <div class="btn-group">
                            <button class="btn btn-danger borrar" id="borrar" type="button" data-id="<?= $row["id"]; ?>" onclick="return eliminarIndividual('<?= $row['id'] ?>');"><i class="fa fa-trash"></i></button>
                            <button class="btn btn-warning reversar" id="reversar" type="button" data-id="<?= $row["id"]; ?>" onclick="return cambiarEstado('<?= $row['estado'] ?>','<?= $row['id'] ?>')"><i class="fa fa-exchange"></i></button>
                            <button class="btn btn-info comentario" id="comentario" type="button" data-id="<?= $row["id"]; ?>" onclick="return cargarComentarios('<?= $row['id'] ?>');"><i class="fa fa-comment-o"></i> <?= $row["comentarios"]; ?></button>
                        </div>
                    </td>
                </tr>
            <?php
            } else if ($row["ESCAT"] == 'PROXIMO') {
            ?>
                <tr class="gradeU">
                    <td>
                     <input type="checkbox" class="check_s estado">
                    </td>
                    <td class="id"><?php echo $row["id"]; ?></td>
                    <td><?php echo $row["ruc"]; ?></td>
                    <td><?php echo $row["razon_social"]; ?></td>
                    <td class="center"><?php echo $row["actividad"]; ?></td>
                    <td class="center"><?php echo $row["vence"]; ?></td>
                    <td class="center"><?php echo $row["mes"]; ?></td>
                    <td class="tipo"><?php echo $row["estado"]; ?></td>
                    <td class="center"><?php echo $row["fecha_finalizacion"]; ?></td>
                    <td class="center text-success"><strong><?php echo $row["ESCAT"]; ?></strong></td>
                    <td class="center">
                        <div class="btn-group">
                            <button class="btn btn-danger borrar" id="borrar" type="button" data-id="<?= $row["id"]; ?>" onclick="return eliminarIndividual('<?= $row['id'] ?>');"><i class="fa fa-trash"></i></button>
                            <button class="btn btn-warning reversar" id="reversar" type="button" data-id="<?= $row["id"]; ?>" onclick="return cambiarEstado('<?= $row['estado'] ?>','<?= $row['id'] ?>')"><i class="fa fa-exchange"></i></button>
                            <button class="btn btn-info comentario" id="comentario" type="button" data-id="<?= $row["id"]; ?>" onclick="return cargarComentarios('<?= $row['id'] ?>');"><i class="fa fa-comment-o"></i> <?= $row["comentarios"]; ?></button>
                        </div>
                    </td>
                </tr>
            <?php
            } else if ($row["ESCAT"] == 'SOLUCIONADO') {
            ?>
                <tr class="gradeU">
                    <td>
                     <input type="checkbox" class="check_s estado">
                    </td>
                    <td class="id"><?php echo $row["id"]; ?></td>
                    <td><?php echo $row["ruc"]; ?></td>
                    <td><?php echo $row["razon_social"]; ?></td>
                    <td class="center"><?php echo $row["actividad"]; ?></td>
                    <td class="center"><?php echo $row["vence"]; ?></td>
                    <td class="center"><?php echo $row["mes"]; ?></td>
                    <td class="tipo"><?php echo $row["estado"]; ?></td>
                    <td class="center"><?php echo $row["fecha_finalizacion"]; ?></td>
                    <td class="center"><strong><?php echo $row["ESCAT"]; ?></strong></td>
                    <td class="center">
                        <div class="btn-group">
                            <button class="btn btn-danger borrar" id="borrar" type="button" data-id="<?= $row["id"]; ?>" onclick="return eliminarIndividual('<?= $row['id'] ?>');"><i class="fa fa-trash"></i></button>
                            <button class="btn btn-warning reversar" id="reversar" type="button" data-id="<?= $row["id"]; ?>" onclick="return cambiarEstado('<?= $row['estado'] ?>','<?= $row['id'] ?>')"><i class="fa fa-exchange"></i></button>
                            <button class="btn btn-info comentario" id="comentario" type="button" data-id="<?= $row["id"]; ?>" onclick="return cargarComentarios('<?= $row['id'] ?>');"><i class="fa fa-comment-o"></i> <?= $row["comentarios"]; ?></button>
                        </div>
                    </td>
                </tr>
        <?php
            }
        }
        ?>
    </tbody>
    <tfoot>
        <tr>
            <th>√</th>
            <th>ID</th>
            <th>RUC</th>
            <th>RAZON SOCIAL</th>
            <th>ACTIVIDAD</th>
            <th>VENCE</th>
            <th>MES</th>
            <th>TIPO</th>
            <th>FINALIZACION</th>
            <th>ESTADO</th>
            <th>ACCIONES</th>
        </tr>
    </tfoot>
</table>
<script src="js/jquery-3.1.1.min.js"></script>
<script src="js/plugins/iCheck/icheck.min.js"></script>
<script src="js/plugins/dataTables/datatables.min.js"></script>
<script src="js/plugins/dataTables/dataTables.bootstrap4.min.js"></script>
<script>
    $(document).ready(function() {
        $('.dataTables-example').DataTable({
            pageLength: 25,
            responsive: true,
            dom: '<"html5buttons"B>lTfgitp',
            buttons: [{
                    extend: 'copy'
                },
                {
                    extend: 'csv'
                },
                {
                    extend: 'excel',
                    title: 'ExampleFile'
                },
                {
                    extend: 'pdf',
                    title: 'ExampleFile'
                },

                {
                    extend: 'print',
                    customize: function(win) {
                        $(win.document.body).addClass('white-bg');
                        $(win.document.body).css('font-size', '10px');

                        $(win.document.body).find('table')
                            .addClass('compact')
                            .css('font-size', 'inherit');
                    }
                }
            ]

        });
    });
</script>
<script>
    $(document).ready(function() {
        $('.i-checks').iCheck({
            checkboxClass: 'icheckbox_square-green',
            radioClass: 'iradio_square-green',
        });
    });
</script>