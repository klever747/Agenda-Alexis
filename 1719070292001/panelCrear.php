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

$conn = mysqli_connect($hostname_conexion, $username_conexion,$password_conexion,$database_conexion);
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
    echo "ERRor";
}
//$nomb = $_SESSION["nombre"];
$sql="SELECT DISTINCT A.ruc,C.razon_social, A.creado, A.periodo
FROM agenda_actividad A, actividad B, clientes C
where A.id_actividad=B.id_actividad and 
A.ruc=C.ruc order by A.creado asc";
$rs1 = mysqli_query($conn, $sql);

?>

<table class="table table-striped table-bordered table-hover dataTables-example dataTable" id="DataTables_Table_0" aria-describedby="DataTables_Table_0_info" role="grid">
                 
                        <thead>
                            <tr>
                                <th>RUC</th>
                                <th>RAZON SOCIAL</th>
                                <th>PERIODO</th>
                                <th>CREACION</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            while($row = mysqli_fetch_assoc($rs1)) {
                                ?>
                            <tr class="gradeU">
                                <td><?php echo $row["ruc"];?></td>
                                <td><?php echo $row["razon_social"];?></td>
                                <td><?php echo $row["periodo"];?></td>
                                <td class="center"><?php echo $row["creado"];?></td>  
                            </tr>
                           
                                    <?php
                                
                        }
                        ?>
                        </tbody>
                        <tfoot>
                            <tr>
                                <th>RUC</th>
                                <th>RAZON SOCIAL</th>
                                <th>PERIODO</th>
                                <th>CREACION</th>  
                            </tr>
                        </tfoot>
                        </table>

    <script src="js/plugins/iCheck/icheck.min.js"></script>
    <script>
        $(document).ready(function(){
            $('.dataTables-example').DataTable({
                pageLength: 25,
                responsive: true,
                dom: '<"html5buttons"B>lTfgitp',
                buttons: [
                    { extend: 'copy'},
                    {extend: 'csv'},
                    {extend: 'excel', title: 'ExampleFile'},
                    {extend: 'pdf', title: 'ExampleFile'},

                    {extend: 'print',
                     customize: function (win){
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
            $(document).ready(function () {
                $('.i-checks').iCheck({
                    checkboxClass: 'icheckbox_square-green',
                    radioClass: 'iradio_square-green',
                });
            });
    </script>