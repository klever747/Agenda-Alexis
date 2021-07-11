<?php 
session_start();
$suscrito = $_SESSION["suscrito"];
$nombre = $_SESSION["nombre"];
$usuario = $_SESSION["usuario"];
?>
<nav class="navbar-default navbar-static-side" role="navigation">
    <div class="sidebar-collapse">
        <ul class="nav metismenu" id="side-menu">
            <li class="nav-header">
                <div class="dropdown profile-element">
                    <img alt="image" class="rounded-circle" src="imagenes/contactos/logokva.png" />
                    <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                        <span class="block m-t-xs font-bold"><?= $nombre;?></span>
                        <span class="text-muted text-xs block"><?= $usuario;?><b class="caret"></b></span>
                    </a>
                    <ul class="dropdown-menu animated fadeInRight m-t-xs">
                        <li><a class="dropdown-item" href="index.php">Cerrar sesion</a></li>
                    </ul>
                </div>
                <div class="logo-element">
                    IN+
                </div>
            </li>
            <li class="">
                <a href="principal.php"><i class="fa fa-home"></i> <span class="nav-label">Inicio</span></a>
            </li>
            <li class="">
                <a href="repositorio.php"><i class="fa fa-list-ol"></i> <span class="nav-label">Repositorio</span></a>
            </li>
            <li class="">
                <a href="#" data-toggle="modal" data-target="#myModal6"><i class="fa fa-phone"></i> <span class="nav-label">Contactos / Soporte</span></a>
            </li>
            <li class="">
                <a href="#"><img src="imagenes/contactos/whatsapp.png" width="10%"> <span class="nav-label">SOPORTE TECNICO  0983654524-0986563343</span></a>
            </li> 
        </ul>
    </div>
</nav>
<!--MODAL CONTACTOS -->
<div class="modal inmodal fade" id="myModal6" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-md">
        <div class="modal-content">
            <div class="modal-body">
                <div class="row">
                    <div class="col-12">
                        <img src="imagenes/contactos/logo.png" alt="" width="100%">
                    </div>
                </div>
                <div class="row pt-5">
                    <div class="col-2">
                        <img src="imagenes/contactos/whatsapp.png" alt="" width="100%">
                    </div>
                    <div class="col-10">
                        <label for="">(02) 6046 840</label>
                    </div>
                </div>
                <div class="row pt-5">
                    <div class="col-2">
                        <img src="imagenes/contactos/email.png" alt="" width="100%">
                    </div>
                    <div class="col-10">
                        <label for="">info@kva.com.ec</label>
                    </div>
                </div>
                <div class="row pt-5">
                    <div class="col-2">
                        <img src="imagenes/contactos/direccion.png" alt="" width="100%">
                    </div>
                    <div class="col-10">
                        <label for="">Mariscal Foch E4-261 y Av. Río Amazonas Eq. Edificio Turisa 9no piso</label>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-white" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>
<!--MODAL REGISTRO -->
<div class="modal inmodal fade" id="myModal5" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-md">
        <div class="modal-content">
            <form action="suscribirse.php" method="post">
            <div class="modal-body">
                <div class="row pt-5">
                    <div class="col-2">
                        <label for="">RUC/CC:</label>
                    </div>
                    <div class="col-10">
                        <input type="text" class="form-control" name="txtRuc" id="txtRuc">
                    </div>
                </div>
                <div class="row pt-5">
                    <div class="col-2">
                        <label for="">NOMBRE:</label>
                    </div>
                    <div class="col-10">
                        <input type="text" class="form-control" name="txtNombre" id="txtNombre">
                    </div>
                </div>
                <div class="row pt-5">
                    <div class="col-2">
                        <label for="">WHATSAPP:</label>
                    </div>
                    <div class="col-10">
                        <input type="text" class="form-control" name="txtWhatsapp" id="txtWhatsapp">
                    </div>
                </div>
                <div class="row pt-5">
                    <div class="col-2">
                        <label for="">EMAIL:</label>
                    </div>
                    <div class="col-10">
                        <input type="text" class="form-control" name="txtEmail" id="txtEmail">
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-white" data-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-success">Suscribirse</button>
            </div>
            </form>
        </div>
    </div>
</div>
