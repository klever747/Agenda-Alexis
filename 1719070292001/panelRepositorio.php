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
require_once('../repositorio/Conexion/conexion.php');

$conn = mysqli_connect($hostname_conexion, $username_conexion, $password_conexion, $database_conexion);
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
    echo "ERRor";
}
//$nomb = $_SESSION["nombre"];
$sql = "SELECT *FROM RECURSOS";
$rs1 = mysqli_query($conn, $sql);

?>

<table class="table table-striped table-bordered table-hover dataTables-usuarios" role="grid">

    <thead>
        <tr>
            <th>ID</th>
            <th>NOMBRE</th>
            <th>FECHA</th>
            <th>ACCIONES</th>
        </tr>
    </thead>
    <tbody>
        <?php
        while ($row = mysqli_fetch_assoc($rs1)) {
                ?>
                <tr class="gradeU">
                    <td><?php echo $row["id"]; ?></td>
                    <td><?php echo $row["nombre"]; ?></td>
                    <td><?php echo $row["fecha"]; ?></td>
                    <td align="center">
                        <div class="btn-group" role="group" aria-label="Basic example">
                            <a href="descargarArchivos.php?name=<?= $row['nombre']?>" class="btn btn-success"><i class="fa fa-cloud-download"></i></a>
                            <a href="visualizar.php?name=<?= $row['nombre']?>" class="btn btn-info"><i class="fa fa-file-pdf-o"></i></a>
                        </div>

                    </td>
                </tr>
            <?php   
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
    })()
</script>