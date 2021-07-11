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
$sql=$conn->prepare("SELECT id_cliente, fecha_registro, razon_social, nombre_comercial, categoria, status, ruc, usuario_asignado, cedula, 
tipo_cliente, grupo_cliente, representante_legal, direccion, telefono1, telefono2, telefono3, telefono4, correo1, correo2, 
ciudad, contacto, estado, digito, orden, sri, iess_domestico, iess_empresa, iess_afiliado, mrl1, mrl2, supercias_usuario, 
supercias_clave, valor, foto_ruc, foto_cedula, mascara_ruc, mascara_cedula, asesor, empleados, municipio_clave, ussercop, 
claversercop, clavebombero, actividadruc, contador, detalle1, detalle2,id_asesor,id_ciudad,id_tipo,id_grupo,id_categoria
FROM clientes cli, asesores ase, ciudades ciu, cliente_tipo tip, cliente_grupo gru, cliente_categoria cat
where cli.asesor=ase.nombre and cli.ciudad=ciu.descripcion and cli.tipo_cliente=tip.descripcion
and cli.grupo_cliente=gru.descripcion and cli.categoria=cat.descripcion");
$sql->execute();
$result = $sql->get_result();

?>

<table class="table table-striped table-bordered table-hover dataTables-example dataTable" id="DataTables_Table_0" aria-describedby="DataTables_Table_0_info" role="grid">
                 
                        <thead>
                            <tr>
                                <th>RAZON SOCIAL</th>
                                <th>RUC</th>
                                <th>GRUPO</th>
                                <th>SRI</th>
                                <th>IESS</th>
                                <th>MRL1</th>
                                <th>VENCE</th>
                                <th>ESTADO</th>
                                <th>ACCIONES</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            while($row = $result->fetch_assoc()) {
                                ?>
                            <tr class="gradeU">
                                <td><?php echo $row["razon_social"];?></td>
                                <td><?php echo $row["ruc"];?></td>
                                <td><?php echo $row["grupo_cliente"];?></td>
                                <td class="center"><?php echo $row["sri"];?></td>
                                <td class="center"><?php echo $row["iess_empresa"];?></td>
                                <td class="center"><?php echo $row["mrl1"];?></td>
                                <td class="center"><?php echo $row["orden"];?></td>
                                <td class="center"><?php echo $row["status"];?></td>
                                <td class="center">
                                    <div class="btn-group">
                                    <button class="btn btn-info ver" id="ver" type="button" data-id="<?= $row["id"];?>" onclick="return show_clientes('<?= $row['ruc']?>');"><i class="fa fa-eye"></i></button>
                                    <button class="btn btn-warning editar" id="editar" type="button" data-id="<?= $row["id"];?>" onclick="return display_clientes('<?= $row['ruc']?>');"><i class="fa fa-edit"></i></button>
                                    <button class="btn btn-danger borrar" id="borrar" type="button" data-id="<?= $row["id"];?>" onclick="return eliminarClientes('<?= $row['ruc']?>');"><i class="fa fa-trash"></i></button>
                                    </div>
                                </td>
                            </tr>
                            
                                    <?php
                                }
                        ?>
                        </tbody>
                        <tfoot>
                            <tr>
                               <th>RAZON SOCIAL</th>
                                <th>RUC</th>
                                <th>GRUPO</th>
                                <th>SRI</th>
                                <th>IESS</th>
                                <th>MRL1</th>
                                <th>VENCE</th>
                                <th>ESTADO</th>
                                <th>ACCIONES</th>
                            </tr>
                        </tfoot>
                        </table>

    <script src="js/plugins/iCheck/icheck.min.js"></script>
    <script>
        ;(function(){
            $('.dataTables-example').DataTable({
                pageLength: 10,
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
        })()
    </script>
    <script>
            $(document).ready(function () {
                $('.i-checks').iCheck({
                    checkboxClass: 'icheckbox_square-green',
                    radioClass: 'iradio_square-green',
                });
            });
    </script>