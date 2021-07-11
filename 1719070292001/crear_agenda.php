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
    <link href="css/plugins/datapicker/datepicker3.css" rel="stylesheet">

</head>
<script>
    function setData() {
        var today = new Date();
        var dd = String(today.getDate()).padStart(2, '0');
        var mm = String(today.getMonth() + 1).padStart(2, '0'); //January is 0!
        var yyyy = today.getFullYear();

        today = mm + '/' + dd + '/' + yyyy;

        $("#fecha").val(today)
        $("#fecha_manual").val(today)
    }

    function abrirModal(){
                $("#nombre_manual").val(null);
                $("#ruc_manual").val(null);
                $("#actividad_manual").val(null);
                $("#idactividad_manual").val(null);
                $("#dias_manual").val(null);

                $('#myModalCliente').modal('show');
            }
</script>

<body class="" onload="setData()">

    <div id="wrapper">
        <?php include "menu.php"; ?>
        <div id="page-wrapper" class="gray-bg">
            <div class="row border-bottom">
                <nav class="navbar navbar-static-top  " role="navigation" style="margin-bottom: 0">
                    <div class="navbar-header">
                        <a class="navbar-minimalize minimalize-styl-2 btn btn-primary " href="#"><i class="fa fa-bars"></i> </a>
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
                <div class="row">
                    <div class="col-lg-12">
                        <div class="ibox ">
                            <div class="ibox-title">
                                <h5>Actividades generadas</h5>
                                <div class="ibox-tools">
                                    <a class="collapse-link">
                                        <i class="fa fa-chevron-up"></i>
                                    </a>
                                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                                        <i class="fa fa-wrench"></i>
                                    </a>
                                    <ul class="dropdown-menu dropdown-user">
                                        <li><a href="#" class="dropdown-item">Config option 1</a>
                                        </li>
                                        <li><a href="#" class="dropdown-item">Config option 2</a>
                                        </li>
                                    </ul>
                                    <a class="close-link">
                                        <i class="fa fa-times"></i>
                                    </a>
                                </div>
                            </div>
                            <div class="ibox-content">
                                <div class="form-group">
                                    <div class="row alert-success p-4">
                                        <div class="col-md-4">
                                            <input type="text" placeholder="Nombre cliente" class="typeahead_1 form-control" id="nombre">
                                        </div>
                                        <div class="col-md-2">
                                            <select class="form-control" id="periodo">
                                                <option value="2019">2019</option>
                                                <option value="2020" selected>2020</option>
                                            </select>
                                        </div>
                                        <div class="form-group col-md-3" id="data_1">
                                            <div class="input-group date">
                                                <span class="input-group-addon"><i class="fa fa-calendar"></i></span><input type="text" class="form-control" id="fecha">
                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <button type="buttton" class="btn btn-info crear_agenda"><i class="fa fa-plus"></i>&nbsp Crear Agenda</button>
                                            <button type="buttton" class="btn btn-secondary" onclick="return abrirModal()" id="btn_manual"><i class="fa fa-plus"></i>&nbsp Tarea manual</button>
                                        </div>
                                    </div>
                                </div>

                                <div class="table-responsive" id="table-responsive">


                                </div>

                            </div>
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

    <div class="modal inmodal fade" id="myModalCliente" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                    <h5 class="modal-title">Crear tareas manualmente</h5>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-4">
                            <label><strong>RAZON SOCIAL</strong></label>
                            <input type="text" placeholder="Nombre cliente" class="typeahead_2 form-control" id="nombre_manual">
                        </div>
                        <div class="col-md-4">
                        <label><strong>RUC</strong></label>
                            <input type="text" placeholder="RUC" class="form-control" id="ruc_manual" readonly>
                        </div>
                        <div class="form-group col-md-4" id="data_1">
                        <label><strong>VENCIMIENTO</strong></label>
                            <div class="input-group date">
                                <span class="input-group-addon"><i class="fa fa-calendar"></i></span><input type="text" class="form-control" id="fecha_manual">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                        <label><strong>ACTIVIDAD/TAREA</strong></label>
                            <input type="text" placeholder="Actividad" class="typeahead_3 form-control" id="actividad_manual">
                        </div>
                        <div class="col-md-4">
                        <label><strong>ID TAREA</strong></label>
                            <input type="text" placeholder="ID" class="form-control" id="idactividad_manual" readonly>
                        </div>
                        <div class="col-md-4">
                        <label><strong>DIAS NOTIFICACION</strong></label>
                            <input type="number" placeholder="Dias antes del aviso" class="form-control" id="dias_manual">
                        </div>
                    </div>
                </div>

                <div class="modal-footer">
                    <button type="button" class="btn btn-white" data-dismiss="modal">Cancelar</button>
                    <button type="button" class="btn btn-primary guardar_manual" id="guardar_manual">Guardar cambios</button>
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
    <script src="js/crear.js"></script>
    <script src="js/plugins/iCheck/icheck.min.js"></script>
    <script src="js/plugins/typehead/bootstrap3-typeahead.min.js"></script>

    <script src="js/plugins/pace/pace.min.js"></script>
    <script src="js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

    <!-- Select2 -->
    <script src="js/plugins/select2/select2.full.min.js"></script>

    <!-- Chosen -->
    <script src="js/plugins/chosen/chosen.jquery.js"></script>
    <script src="js/plugins/datapicker/bootstrap-datepicker.js"></script>


    <script>
        ;
        (function() {
            //$(document).ready(function(){

            $('.dataTables-example').DataTable({
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
            $('.typeahead_1').typeahead({
                source: function(query, result) {
                    $.ajax({
                        url: "getClients.php",
                        data: 'query=' + query,
                        dataType: "json",
                        type: "POST",
                        success: function(data) {
                            result($.map(data, function(item) {
                                return item;
                            }));
                        }
                    });
                }
            });
            $('.typeahead_2').typeahead({
                source: function(query, result) {
                    $.ajax({
                        url: "getClients.php",
                        data: 'query=' + query,
                        dataType: "json",
                        type: "POST",
                        success: function(data) {
                            result($.map(data, function(item) {
                                return item;
                            }));
                        }
                    });
                }
            });

            $('.typeahead_3').typeahead({
                source: function(query, result) {
                    $.ajax({
                        url: "getActividad.php",
                        data: 'query=' + query,
                        dataType: "json",
                        type: "POST",
                        success: function(data) {
                            result($.map(data, function(item) {
                                return item;
                            }));
                        }
                    });
                }
            });
            $("#actividad_manual").focusout(function() {
                var nombre = $("#actividad_manual").val();
                if(nombre == null || nombre==""){
                    nombre="NINGUNO";
                }
                $.ajax({
                    type: "POST",
                    url: "traerActividad.php",
                    data: {
                        nombre: nombre
                    }
                }).done(function(swap) {
                    $("#idactividad_manual").val(swap)
                   // document.getElementById("nombre_manual").innerHTML = swap
                })
            });
            $("#nombre_manual").focusout(function() {
                var nombre = $("#nombre_manual").val();
                if(nombre == null || nombre==""){
                    nombre="NINGUNO";
                }
                $.ajax({
                    type: "POST",
                    url: "traerRuc.php",
                    data: {
                        nombre: nombre
                    }
                }).done(function(swap) {
                    $("#ruc_manual").val(swap)
                   // document.getElementById("nombre_manual").innerHTML = swap
                })
            });

            $(".crear_agenda").click(function() {
                var nombre = $("#nombre").val()
                var anio = $("#periodo").val()
                var fecha = $("#fecha").val()
                $.ajax({
                    type: "POST",
                    url: "ingresar_agenda.php",
                    data: {
                        nombre: nombre,
                        anio: anio,
                        fecha: fecha
                    }
                }).done(function(swap) {
                    if (swap == "2") {
                        alert("Agenda generada");
                        $(".table-responsive").load("panelCrear.php")
                    } else {
                        alert("Ocurrio un error consulte con el proveedor");
                    }
                })
            })

            

            $(".guardar_manual").click(function() {
                var ruc = $("#ruc_manual").val()
                var id = $("#idactividad_manual").val()
                var vencimiento = $("#fecha_manual").val()
                var dias = $("#dias_manual").val()

                $.ajax({
                    type: "POST",
                    url: "ingresar_manual.php",
                    data: {
                        ruc: ruc,
                        id: id,
                        vencimiento: vencimiento,
                        dias: dias
                    }
                }).done(function(swap) {
                    if (swap == "2") {
                        alert("Tarea creada");
                        $(".table-responsive").load("panelCrear.php")
                    } else {
                        alert("Ocurrio un error consulte con el proveedor");
                    }
                })
            })

            var mem = $('#data_1 .input-group.date').datepicker({
                todayBtn: "linked",
                keyboardNavigation: false,
                forceParse: false,
                calendarWeeks: true,
                autoclose: true
            }).val()

        })()
    </script>
    <script>
        $(document).ready(function() {
            $('.i-checks').iCheck({
                checkboxClass: 'icheckbox_square-green',
                radioClass: 'iradio_square-green',
            });

        });
    </script>
</body>

</html>