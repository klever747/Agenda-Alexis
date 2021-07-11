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

</head>

<body class="">

    <div id="wrapper">
        <?php include "menu.php"; ?>
        <div id="page-wrapper" class="gray-bg">
            <div class="row border-bottom">
                <nav class="navbar navbar-static-top  " role="navigation" style="margin-bottom: 0">
                    <div class="navbar-header">
                        <a class="navbar-minimalize minimalize-styl-2 btn btn-primary " href="#"><i class="fa fa-bars"></i> </a>
                        <a class="minimalize-styl-2 btn btn-primary " href="#" onclick="return display_clientes(null)"><i class="fa fa-plus"></i> Nuevo cliente</a>
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
                                <!--
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
                                            <button type="buttton" class="btn btn-primary finalizar">Finalizar</button>
                                        </div>
                                    </div>
                                </div>
-->
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
    <script src="js/clientes.js"></script>


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
                $.ajax({
                    type: "POST",
                    url: "consulta.php",
                    data: {
                        nombre,
                        tipo,
                        estado,
                        actividad
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
                $.ajax({
                    type: "POST",
                    url: "consulta.php",
                    data: {
                        nombre,
                        tipo,
                        estado,
                        actividad
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
<div class="modal inmodal fade" id="modalClientes" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-body" id="panelClientes">

            </div>
        </div>
    </div>
</div>

</html>
<script>
    function display_clientes(ruc) {
        if (ruc == null) {
            ruc = "NUEVO";
        }
        $.ajax({
            url: "getClient.php",
            type: "post",
            data: {
                ruc
            }
        }).then(function(data) {
            document.getElementById("panelClientes").innerHTML = data
            $("#modalClientes").modal("show");

            $(".getRuc").click(function() {
                var id = $("#txtRucCed").val()
                if (id.length == 10) {
                    var direccion = "http://54.85.215.68/cedula/cedula.php"

                    $.ajax({
                        data: "GET",
                        url: direccion,
                        data: {
                            id
                        },
                        dataType: "JSOn",


                    }).done(function(data) {
                        console.log(data)
                        document.getElementById("txtRazonSocial").value = data.name
                        //document.getElementById("txtNombreComercial").value = data.NOMBRE_COMERCIAL
                        document.getElementById("txtDireccion").value = data.residence
                        //document.getElementById("txtActividad").value = data.ACTIVIDAD_ECONOMICA
                    });
                } else if (id.length == 13) {

                    var direccion = "http://51.158.26.39:3016/site/org.kodhe.rucinfo/q/" + id

                    $.ajax({
                        data: "GET",
                        url: direccion,
                        dataType: "JSOn",


                    }).done(function(data) {
                        console.log(data)
                        document.getElementById("txtRazonSocial").value = data.RAZON_SOCIAL
                        document.getElementById("txtNombreComercial").value = data.NOMBRE_COMERCIAL
                        document.getElementById("txtDireccion").value = data.DESCRIPCION_PROVINCIA + " " + data.CALLE + " " + data.INTERSECCION + " " + data.NUMERO
                        document.getElementById("txtActividad").value = data.ACTIVIDAD_ECONOMICA
                    });
                } else {
                    alert("Documento no valido")
                    return false;
                }

            })

            $(".crear_generales").click(function() {

                var txtRuc = $("#txtRucCed").val()
                var txtRazonSocial = $("#txtRazonSocial").val()
                var txtNombreComercial = $("#txtNombreComercial").val()
                var txtCedula = $("#txtCedula").val()
                var txtRepresentanteLegal = $("#txtRepresentanteLegal").val()
                var txtActividad = $("#txtActividad").val()
                var txtCorreo = $("#txtCorreo").val()
                var txtTelefono1 = $("#txtTelefono1").val()
                var txtTelefono2 = $("#txtTelefono2").val()
                var txtTipoCliente = $("#txtTipoCliente").val()
                var txtCiudad = $("#txtCiudad").val()
                var txtDireccion = $("#txtDireccion").val()
                var txtAsesor = $("#txtAsesor").val()
                var txtUsuario = $("#txtUsuario").val()
                var txtContador = $("#txtContador").val()
                var txtEstado = $("#txtEstado").val()
                var txtGrupo = $("#txtGrupo").val()
                var txtTipo = $("#txtTipo").val()
                var txtFechaRegistro = $("#txtFechaRegistro").val()
                var txtImagenCedula = $("#txtImagenCedula").val()
                var txtImagenNombramiento = $("#txtImagenNombramiento").val()
                var txtEmpleados = $("#txtEmpleados").val()
                var txtBaseImponible = $("#txtBaseImponible").val()
                var txtDeclaracionPatrimonial = $("#txtDeclaracionPatrimonial").val()
                var txtAfiliados = $("#txtAfiliados").val()
                var txtRegion = $("#txtRegion").val()

                $.ajax({
                    type: "POST",
                    url: "insertar_clientes.php",
                    data: {
                        txtRuc,
                        txtRazonSocial,
                        txtNombreComercial,
                        txtCedula,
                        txtRepresentanteLegal,
                        txtActividad,
                        txtCorreo,
                        txtTelefono1,
                        txtTelefono2,
                        txtTipoCliente,
                        txtCiudad,
                        txtDireccion,
                        txtAsesor,
                        txtUsuario,
                        txtContador,
                        txtEstado,
                        txtGrupo,
                        txtTipo,
                        txtFechaRegistro,
                        txtImagenCedula,
                        txtImagenNombramiento,
                        txtEmpleados,
                        txtBaseImponible,
                        txtDeclaracionPatrimonial,
                        txtAfiliados,
                        txtRegion
                    }
                }).done(function(swap) {
                    if (swap == "2") {
                        alert("Cliente creado.");
                        $('#modalClientes').modal('hide')
                        $(".table-responsive").load("panelClientes.php")
                    } else if (swap == "1") {
                        alert("Ocurrio un error consulte con el proveedor.");
                    } else if (swap == "0") {
                        alert("Este cliente ya se encuentra registrado.");
                    }
                })
            })

            $(".actualizar_generales").click(function() {

                var txtRuc = $("#txtRucCed").val()
                var txtRazonSocial = $("#txtRazonSocial").val()
                var txtNombreComercial = $("#txtNombreComercial").val()
                var txtCedula = $("#txtCedula").val()
                var txtRepresentanteLegal = $("#txtRepresentanteLegal").val()
                var txtActividad = $("#txtActividad").val()
                var txtCorreo = $("#txtCorreo").val()
                var txtTelefono1 = $("#txtTelefono1").val()
                var txtTelefono2 = $("#txtTelefono2").val()
                var txtTipoCliente = $("#txtTipoCliente").val()
                var txtCiudad = $("#txtCiudad").val()
                var txtDireccion = $("#txtDireccion").val()
                var txtAsesor = $("#txtAsesor").val()
                var txtUsuario = $("#txtUsuario").val()
                var txtContador = $("#txtContador").val()
                var txtEstado = $("#txtEstado").val()
                var txtGrupo = $("#txtGrupo").val()
                var txtTipo = $("#txtTipo").val()
                var txtFechaRegistro = $("#txtFechaRegistro").val()
                var txtImagenCedula = $("#txtImagenCedula").val()
                var txtImagenNombramiento = $("#txtImagenNombramiento").val()
                var txtEmpleados = $("#txtEmpleados").val()
                var txtBaseImponible = $("#txtBaseImponible").val()
                var txtDeclaracionPatrimonial = $("#txtDeclaracionPatrimonial").val()
                var txtAfiliados = $("#txtAfiliados").val()
                var txtRegion = $("#txtRegion").val()
                $.ajax({
                    type: "POST",
                    url: "actualizar_clientes.php",
                    data: {
                        txtRuc,
                        txtRazonSocial,
                        txtNombreComercial,
                        txtCedula,
                        txtRepresentanteLegal,
                        txtActividad,
                        txtCorreo,
                        txtTelefono1,
                        txtTelefono2,
                        txtTipoCliente,
                        txtCiudad,
                        txtDireccion,
                        txtAsesor,
                        txtUsuario,
                        txtContador,
                        txtEstado,
                        txtGrupo,
                        txtTipo,
                        txtFechaRegistro,
                        txtImagenCedula,
                        txtImagenNombramiento,
                        txtEmpleados,
                        txtBaseImponible,
                        txtDeclaracionPatrimonial,
                        txtAfiliados,
                        txtRegion
                    }
                }).done(function(swap) {
                    if (swap == "2") {
                        alert("Cliente actualizado.");
                        $('#modalClientes').modal('hide')
                        $(".table-responsive").load("panelClientes.php")
                    } else if (swap == "1") {
                        alert("Ocurrio un error consulte con el proveedor.");
                    } else if (swap == "0") {
                        alert("Este cliente no se encuentra registrado.");
                    }
                })
            })

            $(".crear_claves").click(function() {

                var txtRuc = $("#txtRucCed").val()
                var txtSri = $("#txtSri").val()
                var txtIessEmpleado = $("#txtIessEmpleado").val()
                var txtIessEmpleador = $("#txtIessEmpleador").val()
                var txtIessDomestica = $("#txtIessDomestica").val()
                var txtMrl1 = $("#txtMrl1").val()
                var txtMrl2 = $("#txtMrl2").val()
                var txtUsuarioSuper = $("#txtUsuarioSuper").val()
                var txtClaveSuper = $("#txtClaveSuper").val()
                var txtMunicipio = $("#txtMunicipio").val()
                var txtBomberos = $("#txtBomberos").val()
                var txtUsuarioSercop = $("#txtUsuarioSercop").val()
                var txtClaveSercop = $("#txtClaveSercop").val()


                $.ajax({
                    type: "POST",
                    url: "insertar_claves.php",
                    data: {
                        txtRuc,
                        txtSri,
                        txtIessEmpleado,
                        txtIessEmpleador,
                        txtIessDomestica,
                        txtMrl1,
                        txtMrl2,
                        txtUsuarioSuper,
                        txtClaveSuper,
                        txtMunicipio,
                        txtBomberos,
                        txtUsuarioSercop,
                        txtClaveSercop
                    }
                }).done(function(swap) {
                    if (swap == "2") {
                        alert("Claves guardadas.");
                        $('#modalClientes').modal('hide')
                        $(".table-responsive").load("panelClientes.php")
                    } else if (swap == "1") {
                        alert("Ocurrio un error consulte con el proveedor.");
                    } else if (swap == "0") {
                        alert("No se encuentra el cliente.");
                    }
                })
            })
        });
    }

    function show_clientes(ruc) {
        if (ruc == null) {
            ruc = "NUEVO";
        }
        $.ajax({
            url: "getShowClient.php",
            type: "post",
            data: {
                ruc
            }
        }).then(function(data) {
            document.getElementById("panelClientes").innerHTML = data
            $("#modalClientes").modal("show");
        });
    }
//HASTA AQUI SHOW CLIENTES

    function eliminarClientes(id) {
        $.ajax({
            type: "POST",
            url: "eliminarClientes.php",
            data: {
                id
            }
        }).done(function(swap) {
            if (swap == "2") {
                alert("El registro a sido eliminado.")
            } else {
                alert("Error. Consulte con el proveedor.")
            }
            $(".table-responsive").load("panelClientes.php")
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
                })
            })
        })
    }

    function cargarParametro(estado) {
        var nombre = null;
        var actividad = null;
        var tipo = "TODOS";
        $.ajax({
            type: "POST",
            url: "consulta.php",
            data: {
                nombre,
                tipo,
                estado,
                actividad
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