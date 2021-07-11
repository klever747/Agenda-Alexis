<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Agenda Empresarial</title>

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="css/plugins/steps/jquery.steps.css" rel="stylesheet">
    <link href="css/plugins/iCheck/custom.css" rel="stylesheet">
    <link href="css/plugins/dataTables/datatables.min.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link href="css/plugins/awesome-bootstrap-checkbox/awesome-bootstrap-checkbox.css" rel="stylesheet">
    <link href="css/plugins/select2/select2.min.css" rel="stylesheet">

    <script>
                    function cambiarEstadoComentario(id, estado) {
                var txtIdComentario = $("#txtIdComentario").val()
                $.ajax({
                    type: "POST",
                    url: "actualizarComentario.php",
                    data: {
                        id,
                        estado,
                        txtIdComentario
                    }
                }).done(function(swap) {
                    document.getElementById("panelComentarios").innerHTML = swap
                })
            }

            function eliminarComentario(id) {
                var txtIdComentario = $("#txtIdComentario").val()
                $.ajax({
                    type: "POST",
                    url: "eliminarComentario.php",
                    data: {
                        id,
                        txtIdComentario
                    }
                }).done(function(swap) {
                    document.getElementById("panelComentarios").innerHTML = swap
                })
            }
    </script>
</head>
<?php
if (!isset($_GET['tipo'])) {
    $tipo = 'TODOS';
} else {
    $tipo = $_GET['tipo'];
}

if (!isset($_GET['actividad'])) {
    $actividad = null;
} else {
    $actividad = $_GET['actividad'];
}

if (!isset($_GET['fecha'])) {
    $fecha = null;
} else {
    $fecha = $_GET['fecha'];
}
?>

<body class="" onload="return cargarParametro('<?php echo $tipo ?>','<?php echo $actividad ?>','<?php echo $fecha ?>')">

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
                                    <div class="row">
                                        <div class="col-md-3 form-group">
                                            <input type="text" placeholder="Nombre cliente" class="typeahead_1 form-control" id="nombre">
                                        </div>
                                        <div class="col-md-2 form-group">
                                            <select class="select2_demo_3 form-control" id="estado">
                                                <option value="TODOS">TODOS</option>
                                                <option value="VENCIDO">VENCIDO</option>
                                                <option value="PENDIENTE">PENDIENTE</option>
                                                <option value="HOY">HOY</option>
                                                <option value="PROXIMO">PROXIMO</option>
                                            </select>
                                        </div>
                                        <div class="col-md-3 form-group">
                                            <input type="text" placeholder="Actividad" class="typeahead_2 form-control" id="actividad">
                                        </div>
                                        <div class="col-md-2 form-group">
                                            <select class="select2_demo_3 form-control" id="tipo">
                                                <option value="TODOS">TODOS</option>
                                                <option value="FINALIZADO">FINALIZADO</option>
                                                <option value="PENDIENTE">PENDIENTE</option>
                                            </select>
                                        </div>

                                        <div class="col-md-2 form-group">
                                            <button type="buttton" class="btn btn-success consultar"><i class="fa fa-search"></i></button>
                                            <button type="buttton" class="btn btn-info refrescar"><i class="fa fa-history"></i></button>
                                            <button type="buttton" class="btn btn-primary" onclick="return cambiarEstadoBloque()">Finalizar</button>
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
                        url: "getActivity.php",
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


            $(".consultar").click(function() {
                var nombre = $("#nombre").val()
                var estado = $("#estado").val()
                var tipo = $("#tipo").val()
                var actividad = $("#actividad").val()
                var fecha = null;
                $.ajax({
                    type: "POST",
                    url: "consulta_calendario.php",
                    data: {
                        nombre,
                        tipo,
                        estado,
                        actividad,
                        fecha
                    }
                }).done(function(swap) {
                    document.getElementById("table-responsive").innerHTML = swap
                    //$(".table-responsive").load(swap)

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

                    $('.i-checks').iCheck({
                        checkboxClass: 'icheckbox_square-green',
                        radioClass: 'iradio_square-green',
                    });
                })
            })



            $(".refrescar").click(function() {
                $("#nombre").val(null);
                $("#estado").val("TODOS");
                $("#tipo").val("TODOS");
                $("#actividad").val(null);
                var nombre = null;
                var estado = "TODOS";
                var tipo = "TODOS";
                var actividad = null;
                var fecha = null;
                $.ajax({
                    type: "POST",
                    url: "consulta_calendario.php",
                    data: {
                        nombre,
                        tipo,
                        estado,
                        actividad,
                        fecha
                    }
                }).done(function(swap) {
                    document.getElementById("table-responsive").innerHTML = swap
                    //$(".table-responsive").load(swap)

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

                    $('.i-checks').iCheck({
                        checkboxClass: 'icheckbox_square-green',
                        radioClass: 'iradio_square-green',
                    });
                })
            })
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
<div class="modal inmodal fade" id="modalComentarios" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                <h4 class="modal-title">Comentarios</h4>
            </div>
            <div class="modal-body" id="panelComentarios">

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-white" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>

</html>
<script>
    function cambiarEstado(actual, id) {
        $.ajax({
            type: "POST",
            url: "cambiarEstadoIndividual.php",
            data: {
                actual,
                id
            }
        }).done(function(swap) {
            if (swap == "2") {
                alert("La tarea se ha reversado")
                $(".table-responsive").load("consulta_calendario.php")
            } else if (swap == "1") {
                alert("Error. Consulte con el proveedor.")
                return false;
            } else if (swap == "0") {
                alert("Solo puede reversar tareas en estado FINALIZADO")
                return false;
            }
        })
    }

    $("body").on('change', '.check', function() {

        if ($(this).attr("id") == 'selectall')
            $(".check_s").prop("checked", this.checked);
    });

    function eliminarIndividual(id) {
        $.ajax({
            type: "POST",
            url: "eliminarIndividual.php",
            data: {
                id
            }
        }).done(function(swap) {
            if (swap == "2") {
                alert("El registro a sido eliminado.")
            } else {
                alert("Error. Consulte con el proveedor.")
            }
            $(".table-responsive").load("consulta_calendario.php")
        })
    }


    function cargarComentarios(id) {
        $.ajax({
            type: "POST",
            url: "cargarComentario.php",
            data: {
                id
            }
        }).done(function(swap) {

            document.getElementById("panelComentarios").innerHTML = swap
            $("#modalComentarios").modal("show");

            $("#comentar").click(function() {
                var txtIdComentario = $("#txtIdComentario").val();
                var txtComentario = $("#txtComentario").val();
                var txtNombreUsuario = $("#txtNombreUsuario").val();
                $.ajax({
                    type: "POST",
                    url: "ingresar_comentario.php",
                    data: {
                        txtIdComentario,
                        txtComentario,
                        txtNombreUsuario
                    }
                }).done(function(swap) {
                    if (swap == "2") {
                        alert("Comentario agregado")
                    } else {
                        alert("Error. Consulte con el proveedor")
                    }
                    $("#modalComentarios").modal("hide");
                    cargarParametro("TODOS","","");
                })
            })
        })
    }

    $('.selectall').click(function() {
        console.log("LLEGA")
        if ($(this).is(':checked')) {
            $('div input').attr('checked', true);
        } else {
            $('div input').attr('checked', false);
        }
    });

    function cambiarEstadoBloque() {
        var estado = [];
        var id = [];
        var tipo = [];

        $('.estado').each(function() {
            var est = null;
            if ($(this)[0].checked) {
                est = "FINALIZADO";
            } else {
                est = "PENDIENTE";
            }
            estado.push(est);
        });

        $('.id').each(function() {
            id.push($(this).text());
        });

        $('.tipo').each(function() {
            tipo.push($(this).text());
        });
        console.log(estado, id, tipo)
        $.ajax({
            url: "cambiarEstadoBloque.php",
            method: "POST",
            data: {
                estado,
                id,
                tipo
            },
            success: function(data) {
                if (data == "2") {
                    alert("Los cambios se han realizado")
                    cargarParametro('<?php echo $tipo ?>', '<?php echo $actividad ?>', '<?php echo $fecha ?>')
                } else {
                    alert("Error. Consulte al proveedor")
                }
            }
        });
    }

    function cargarParametro(estado, actividad, fecha) {
        var nombre = null;
        var tipo = "TODOS";
        $.ajax({
            type: "POST",
            url: "consulta_calendario.php",
            data: {
                nombre,
                tipo,
                estado,
                actividad,
                fecha
            }
        }).done(function(swap) {
            document.getElementById("table-responsive").innerHTML = swap
            //$(".table-responsive").load(swap)

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
            $('.i-checks').iCheck({
                checkboxClass: 'icheckbox_square-green',
                radioClass: 'iradio_square-green',
            });

        })
    }
</script>