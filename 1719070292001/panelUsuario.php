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
//$nomb = $_SESSION["nombre"];
$sql = "SELECT *FROM USUARIOS";
$rs1 = mysqli_query($conn, $sql);

?>

<table class="table table-striped table-bordered table-hover dataTables-usuarios" role="grid">

    <thead>
        <tr>
            <th>ID</th>
            <th>USUARIO</th>
            <th>NOMBRE</th>
            <th>CORREO</th>
            <th>TELEFONO</th>
            <th>ESTADO</th>
            <th>NIVEL</th>
            <th>ACCIONES</th>
        </tr>
    </thead>
    <tbody>
        <?php
        while ($row = mysqli_fetch_assoc($rs1)) {

            if ($row["nivel"] == 1) {
                ?>
                <tr class="gradeU">
                    <td><?php echo $row["id_usuario"]; ?></td>
                    <td><?php echo $row["usuario"]; ?></td>
                    <td><?php echo $row["nombre"]; ?></td>
                    <td class="center"><?php echo $row["correo"]; ?></td>
                    <td class="center"><?php echo $row["telefono"]; ?></td>
                    <td class="center"><?php echo $row["status"]; ?></td>
                    <td class="center">Operativo</td>
                    <td align="center">
                        <div class="btn-group" role="group" aria-label="Basic example">
                            <button type="button" class="btn btn-danger"><i class="fa fa-trash"></i></button>
                            <button type="button" class="btn btn-warning"><i class="fa fa-edit"></i></button>
                        </div>

                    </td>
                </tr>
            <?php
                } else if ($row["nivel"] == 2) {
                    ?>
                <tr class="gradeU">
                    <td><?php echo $row["id_usuario"]; ?></td>
                    <td><?php echo $row["usuario"]; ?></td>
                    <td><?php echo $row["nombre"]; ?></td>
                    <td class="center"><?php echo $row["correo"]; ?></td>
                    <td class="center"><?php echo $row["telefono"]; ?></td>
                    <td class="center"><?php echo $row["status"]; ?></td>
                    <td class="center">Supervisor</td>
                    <td align="center">
                        <div class="btn-group" role="group" aria-label="Basic example">
                        <button type="button" class="btn btn-danger borrar_usuario" data-id="<?= $row["id_usuario"];?>"><i class="fa fa-trash"></i></button>
                            <button type="button" class="btn btn-warning editar_usuario" data-id="<?= $row["id_usuario"];?>"><i class="fa fa-edit"></i></button>
                        </div>
                    </td>
            <?php
                }else if ($row["nivel"] == 3) {
                    ?>
                    <tr class="gradeU">
                        <td><?php echo $row["id_usuario"]; ?></td>
                        <td><?php echo $row["usuario"]; ?></td>
                        <td><?php echo $row["nombre"]; ?></td>
                        <td class="center"><?php echo $row["correo"]; ?></td>
                        <td class="center"><?php echo $row["telefono"]; ?></td>
                        <td class="center"><?php echo $row["status"]; ?></td>
                        <td class="center">Admin</td>
                        <td align="center">
                            <div class="btn-group" role="group" aria-label="Basic example">
                            <button type="button" class="btn btn-danger borrar_usuario" data-id="<?= $row["id_usuario"];?>"><i class="fa fa-trash"></i></button>
                                <button type="button" class="btn btn-warning editar_usuario" data-id="<?= $row["id_usuario"];?>"><i class="fa fa-edit"></i></button>
                            </div>
                        </td>
                <?php
                }
            }
            ?>
    </tbody>

</table>
<script>
    ;
    (function() {
        $('.dataTables-usuarios').DataTable({
            pageLength: 10,
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
        $(".borrar_usuario").click(function(e) {
        var id = e.currentTarget.dataset.id
        alert("Editando" + id)
    })

    $(".editar_usuario").click(function(e) {
        var id = e.currentTarget.dataset.id
        alert("Borrando" + id)
    })
    })()
</script>