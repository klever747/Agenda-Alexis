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
$sql = "SELECT id_actividad,A.actividad,E.entidad,IF(pn_empleado=1,'SI','NO') as PN_Empleado, IF(pn_rise=1,'SI','NO') as PN_Rise, IF(pn_no_obligado=1,'SI','NO') as PN_no_obligado, IF(pn_no_obligado_semestral=1,'SI','NO') as PN_no_obligado_semestral, 
IF(pn_obligado=1,'SI','NO') as PN_obligado, IF(pj_sa=1,'SI','NO') as PJ_SA, IF(pj_cia_ltda=1,'SI','NO') as PJ_CIA_LTDA , IF(pj_sin_fin_lucro=1,'SI','NO') as PJ_Sin_Fin_Lucro, IF(pj_seps_finan=1,'SI','NO') as PJ_Seps_Finan,
IF(pj_seps_no_finan=1,'SI','NO')  as PJ_Seps_No_Finan FROM actividad A, entidad E where A.entidad=E.codigo_entidad";
$rs1 = mysqli_query($conn, $sql);

?>

<table class="table table-striped table-bordered table-hover dataTables-usuarios" role="grid">

    <thead>
        <tr>
            <th>ID</th>
            <th>ENTIDAD</th>
            <th>ACTIVIDAD</th>
            <th>PN_EMPLEADO</th>
            <th>PN_RISE</th>
            <th>PN_NO_OBLIGADO</th>
            <th>PN_NO_OBLIGADO_SEMESTRAL</th>
            <th>PN_OBLIGADO</th>
            <th>PJ_SA</th>
            <th>PJ_CIA_LTDA</th>
            <th>PJ_SIN_FIN_LUCRO</th>
            <th>PJ_SEPS_FINAN</th>
            <th>PJ_SEPS_NO_FINAN</th>
            <th>ACCIONES</th>
        </tr>
    </thead>
    <tbody>
        <?php
        while ($row = mysqli_fetch_assoc($rs1)) {
                ?>
                <tr class="gradeU">
                    <td><?php echo $row["id_actividad"]; ?></td>
                    <td><?php echo $row["entidad"]; ?></td>
                    <td><?php echo $row["actividad"]; ?></td>
                    <td><?php echo $row["PN_Empleado"]; ?></td>
                    <td><?php echo $row["PN_Rise"]; ?></td>
                    <td><?php echo $row["PN_no_obligado"]; ?></td>
                    <td><?php echo $row["PN_no_obligado_semestral"]; ?></td>
                    <td><?php echo $row["PN_obligado"]; ?></td>
                    <td><?php echo $row["PJ_SA"]; ?></td>
                    <td><?php echo $row["PJ_CIA_LTDA"]; ?></td>
                    <td><?php echo $row["PJ_Sin_Fin_Lucro"]; ?></td>
                    <td><?php echo $row["PJ_Seps_Finan"]; ?></td>
                    <td><?php echo $row["PJ_Seps_No_Finan"]; ?></td>

                    <td align="center">
                        <div class="btn-group" role="group" aria-label="Basic example">
                            <button type="button" class="btn btn-danger"><i class="fa fa-trash"></i></button>
                            <button type="button" class="btn btn-warning"><i class="fa fa-edit"></i></button>
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