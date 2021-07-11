<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Agenda Empresarial</title>

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="css/plugins/iCheck/custom.css" rel="stylesheet">
    <link href="css/plugins/steps/jquery.steps.css" rel="stylesheet">
    <link href="css/plugins/dataTables/datatables.min.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link href="css/plugins/awesome-bootstrap-checkbox/awesome-bootstrap-checkbox.css" rel="stylesheet">
    <link href="css/plugins/select2/select2.min.css" rel="stylesheet">

</head>

<body class="">

    <div id="wrapper">
        <?php include "menu.php"; ?>
        <div id="page-wrapper" class="gray-bg">
            <div class="row border-bottom">
                <nav class="navbar navbar-static-top  " role="navigation" style="margin-bottom: 0">
                    <div class="navbar-header">
                        <a class="navbar-minimalize minimalize-styl-2 btn btn-primary " href="#"><i class="fa fa-bars"></i> </a>
                        <button class="minimalize-styl-2 btn btn-primary" href="#" data-toggle="modal" data-target="#modalEmpresa"><i class="fa fa-plus"></i> Nuevo usuario</button>
                    </div>
                    <ul class="nav navbar-top-links navbar-right">
                        <li>
                            <span class="m-r-sm text-muted welcome-message">Sistema de agenda empresarial</span>
                        </li>

                        <li>
                            <a href="index.php">
                                <i class="fa fa-sign-out"></i> Log out
                            </a>
                        </li>
                    </ul>

                </nav>
            </div>
            <div class="wrapper wrapper-content">
                <div class="ibox ">
                    <div class="ibox-content">
                        <div class="table-responsive" id="table-usuarios">


                        </div>
                    </div>
                </div>

            </div>
            <div class="footer">
                <div class="float-right">
                    10GB of <strong>250GB</strong> Free.
                </div>
                <div>
                    <strong>Copyright</strong> Example Company &copy; 2014-2018
                </div>
            </div>

        </div>
    </div>


    <!-- Mainly scripts -->
    <script src="js/jquery-3.1.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.js"></script>
    <script src="js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

    <script src="js/plugins/dataTables/datatables.min.js"></script>
    <script src="js/plugins/dataTables/dataTables.bootstrap4.min.js"></script>

    <!-- Custom and plugin javascript -->
    <script src="js/inspinia.js"></script>
    <script src="js/plugins/pace/pace.min.js"></script>
    <script src="js/plugins/iCheck/icheck.min.js"></script>
    <script src="js/plugins/typehead/bootstrap3-typeahead.min.js"></script>

    <script src="js/plugins/pace/pace.min.js"></script>
    <script src="js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

    <!-- Select2 -->
    <script src="js/plugins/select2/select2.full.min.js"></script>


</body>
<div class="modal fade" id="modalEmpresa" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-body">
                <div class="form-group">
                    <div class="row">
                        <div class="col-sm-6">
                            <label>Usuario</label>
                            <input class="form-control" name="txtUsuario" id="txtUsuario" type="text" placeholder="Usuario">
                        </div>
                        <div class="col-sm-6">
                            <label>Teléfono</label>
                            <input class="form-control" name="txtTelefono" id="txtTelefono" type="text" placeholder="Teléfono">
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <div class="row">
                        <div class="col-sm-6">
                            <label>Nivel</label>
                            <select class="form-control" class="nivel" name="txtNivel" id="txtNivel">
                                <option value="2">Administrador</option>
                                <option value="1" selected>Operativo</option>
                            </select>
                        </div>
                        <div class="col-sm-6">
                            <label>Estado</label>
                            <select class="form-control" name="estado" name="txtEstado" id="txtEstado">
                                <option value="Activo">ACTIVO</option>
                                <option value="Bloqueado">BLOQUEADO</option>
                            </select>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <div class="row">
                        <div class="col-sm-12">
                            <label>Nombre</label>
                            <input class="form-control" name="txtNombre" id="txtNombre" type="text" placeholder="Nombre">
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <div class="row">
                        <div class="col-sm-12">
                            <label>Email</label>
                            <input class="form-control" name="txtCorreo" id="txtCorreo" type="Email" placeholder="Email">
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <div class="row">
                        <div class="col-sm-12">
                            <label>Constraseña</label>
                            <input class="form-control" name="txtPassword" id="txtPassword" type="password" placeholder="Clave">
                        </div>
                    </div>
                </div>

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary cerrar" data-dismiss="modal">Cancelar</button>
                <button type="button" class="btn btn-info crear_usuario">Guardar</button>
            </div>
        </div>
    </div>

</div>
<script src="js/usuarios.js"></script>
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


        $(".crear_usuario").click(function() {
            var txtUsuario = $("#txtUsuario").val()
            var txtTelefono = $("#txtTelefono").val()
            var txtNivel = $("#txtNivel").val()
            var txtEstado = $("#txtEstado").val()
            var txtNombre = $("#txtNombre").val()
            var txtCorreo = $("#txtCorreo").val()
            var txtPassword = $("#txtPassword").val()

            $.ajax({
                type: "POST",
                url: "ingresar_usuario.php",
                data: {
                    txtUsuario,
                    txtTelefono,
                    txtNivel,
                    txtEstado,
                    txtNombre,
                    txtCorreo,
                    txtPassword
                }
            }).done(function(swap) {
                if (swap == "2") {
                    alert("Usuario creado");
                    $('#modalEmpresa').modal('hide')
                    $("#table-usuarios").load("panelUsuario.php")
                } else {
                    alert("Ocurrio un error consulte con el proveedor");
                }
            })
        })
    })()
</script>

</html>