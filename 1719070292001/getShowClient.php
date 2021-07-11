<?php
ob_start();
require_once('Conexion/conexion_pdo.php');  	
require_once('Conexion/conexion.php'); 
$conn = mysqli_connect($hostname_conexion, $username_conexion,$password_conexion,$database_conexion);
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
    echo "ERRor";
}
session_start();


date_default_timezone_set('UTC');
date_default_timezone_set("America/Mexico_City");
$fecha= date("Y-m-d");

$codi = $_POST["ruc"];

$sql5 = ("SELECT * FROM ciudades");
$result5 = mysqli_query($conn, $sql5);

$sql1 = ("SELECT * FROM asesores");
$result1 = mysqli_query($conn, $sql1);

$sql2 = ("SELECT * FROM cliente_categoria");
$result2 = mysqli_query($conn, $sql2);

$sql3 = ("SELECT * FROM usuarios");
$result3 = mysqli_query($conn, $sql3);

$sql4 = ("SELECT * FROM contadores");
$result4 = mysqli_query($conn, $sql4);

$sql6 = ("SELECT * FROM nom_forma_pago");
$result6 = mysqli_query($conn, $sql6);

$sqlnac = ("SELECT * FROM nom_nacionalidad");
$resultnac = mysqli_query($conn, $sqlnac);

$sqldoc = ("SELECT * FROM documento");
$resultdoc = mysqli_query($conn, $sqldoc);

$sqltip = ("SELECT * FROM cliente_tipo");
$resulttip = mysqli_query($conn, $sqltip);

$sqlgru = ("SELECT * FROM cliente_grupo");
$resultgru = mysqli_query($conn, $sqlgru);

if($codi=="NUEVO"){
    ?>
      <div id="content-wrapper" class="d-flex flex-column">
          <!-- Page Heading -->

          <div class="tabs-container">
            <ul class="nav nav-tabs">
              <li class="nav-item">
                <a class="nav-link active" href="#menu1" data-toggle="tab">Datos personales</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#menu2" data-toggle="tab">Claves</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#menu3" data-toggle="tab">Datos informativos</a>

              </li>
              <li class="nav-item">
                <a class="nav-link" href="#menu4" data-toggle="tab">Documentos</a>
              </li>
            </ul>
          </div>


          <!-- MENU 1 - PRINCIPAL -->

          <div class="tab-content">
            <div class="tab-pane active" role="tabpanel" id="menu1">
                <div class="card card-user">
                  <div class="card-body">
                    <div class="row">

                      <div class="col-sm-2">
                        <div class="form-group">
                          <h5><b>RUC <a href="#" class="getRuc"><i class="fa fa-search"></i></a></b></h5>
                          <input type="text" maxlength="13" class="form-control" id="txtRucCed" name="txtRucCed" required placeholder="CI/RUC">
                        </div>
                      </div>

                      <div class="col-sm-5">
                        <div class="form-group">
                          <h5><b>Razon social</b></h5>
                          <input type="text" class="form-control" id="txtRazonSocial" name="txtRazonSocial" required placeholder="" onkeyup="javascript:this.value=this.value.toUpperCase();" onKeyPress="return soloLetras(event)">
                        </div>
                      </div>
                      <div class="col-sm-5">
                        <div class="form-group">
                          <h5 for="exampleInputEmail1"><b>Nombre Comercial</b></h5>
                          <input type="text" class="form-control" placeholder="" id="txtNombreComercial" required name="txtNombreComercial" onkeyup="javascript:this.value=this.value.toUpperCase();" onKeyPress="return soloLetras(event)">
                        </div>
                      </div>

                      <div class="col-sm-2">
                        <div class="form-group">
                          <h5><b>Cedula</b></h5>
                          <input type="text" maxlength="13" class="form-control" id="txtCedula" name="txtCedula" required placeholder="Cedula" onKeyPress="return soloNumeros(event)">
                        </div>
                      </div>
                      <div class="col-sm-5">
                        <div class="form-group">
                          <h5 for="exampleInputEmail1"><b>Representante Legal</b></h5>
                          <input type="text" class="form-control" placeholder="Nombre" id="txtRepresentanteLegal" required name="txtRepresentanteLegal" onkeyup="javascript:this.value=this.value.toUpperCase();" onKeyPress="return soloLetras(event)">
                        </div>
                      </div>
                      <div class="col-sm-5">
                        <div class="form-group">
                          <h5><b>Actividad comercial</b></h5>
                          <input type="text" class="form-control" required placeholder="Actividad" id="txtActividad" name="txtActividad" onkeyup="javascript:this.value=this.value.toUpperCase();">
                        </div>
                      </div>
                      <div class="col-sm-4">
                        <div class="form-group">
                          <h5><b>Correo</b></h5>
                          <input type="email" class="form-control" required placeholder="correo_example@hotmail.com" id="txtCorreo" name="txtCorreo">
                        </div>
                      </div>
                      <div class="col-sm-2">
                        <div class="form-group">
                          <h5><b>Teléfono 1</b></h5>
                          <input type="text" maxlength="10" class="form-control" required placeholder="" id="txtTelefono1" name="txtTelefono1" onKeyPress="return soloNumeros(event)">
                        </div>
                      </div>
                      <div class="col-sm-2">
                        <div class="form-group">
                          <h5><b>Teléfono 2</b></h5>
                          <input type="text" maxlength="10" class="form-control" placeholder="" id="txtTelefono2" name="txtTelefono2" onKeyPress="return soloNumeros(event)">
                        </div>
                      </div>

                      <div class="col-sm-4">
                        <div class="form-group">
                          <h5><b>Tipo de cliente</b></h5>
                          <select class="custom-select" id="txtTipoCliente" name="txtTipoCliente">
                            <?php
                            $color = 1;
                            $n = 0;
                            while ($row5 = mysqli_fetch_array($result2)) {
                              ?>
                              <option value="<?php echo $row5['descripcion'] ?>"><?php echo $row5["descripcion"] ?></option>
                            <?php
                            }

                            ?>
                          </select>
                        </div>
                      </div>
                    </div>

                    <div class="row">
                      <div class="col-sm-4">
                        <div class="form-group">
                          <h5><b>Ciudad </b></h5>
                          <select class="custom-select" id="txtCiudad" name="txtCiudad">
                            <?php
                            $color = 1;
                            $n = 0;
                            while ($row5 = mysqli_fetch_array($result5)) {
                              ?>
                              <option value="<?php echo $row5['descripcion'] ?>"><?php echo $row5["descripcion"] ?></option>
                            <?php
                            }

                            ?>
                          </select>
                        </div>
                      </div>

                      <!-- TIPO Y GRUPO-->
                      <div class="col-sm-4" hidden>
                        <div class="form-group">
                          <h5><b>Tipo </b></h5>
                          <select class="custom-select" id="txtTipo" name="txtTipo">
                            <?php
                            $color = 1;
                            $n = 0;
                            while ($rowtip = mysqli_fetch_array($resulttip)) {
                              ?>
                              <option value="<?php echo $rowtip['descripcion'] ?>"><?php echo $rowtip["descripcion"] ?></option>
                            <?php
                            }

                            ?>
                          </select>
                        </div>
                      </div>

                      <div class="col-sm-4" >
                        <div class="form-group">
                          <h5><b>Grupo</b></h5>
                          <select class="custom-select" id="txtGrupo" name="txtGrupo">
                            <?php
                            $color = 1;
                            $n = 0;
                            while ($rowgru = mysqli_fetch_array($resultgru)) {
                              ?>
                              <option value="<?php echo $rowgru['descripcion'] ?>"><?php echo $rowgru["descripcion"] ?></option>
                            <?php
                            }

                            ?>
                          </select>
                        </div>
                      </div>
                      <div class="col-sm-4">
                        <div class="form-group">
                          <h5><b>Contador</b></h5>
                          <select class="custom-select" id="txtContador" name="txtContador">
                            <?php
                            $color = 1;
                            $n = 0;
                            while ($row5 = mysqli_fetch_array($result4)) {
                              ?>
                              <option value="<?php echo $row5['id_contador'] ?>"><?php echo $row5["nombre"] ?></option>
                            <?php
                            }

                            ?>
                          </select>
                        </div>
                      </div>
                      <!-- -->

                      <div class="col-sm-6">
                        <div class="form-group">
                         <h5><b>Dirección</b></h5>
                          <input type="text" class="form-control" required placeholder="Dirección" id="txtDireccion" name="txtDireccion" onkeyup="javascript:this.value=this.value.toUpperCase();">
                        </div>
                      </div>

                      <div class="col-sm-2">
                        <div class="form-group">
                         <h5><b>Asesor</b></h5>
                          <select class="custom-select" id="txtAsesor" name="txtAsesor">
                            <?php
                            $color = 1;
                            $n = 0;
                            while ($row5 = mysqli_fetch_array($result1)) {
                              ?>
                              <option value="<?php echo $row5['nombre'] ?>"><?php echo $row5["nombre"] ?></option>
                            <?php
                            }

                            ?>
                          </select>
                        </div>
                      </div>

                      <div class="col-sm-2" >
                        <div class="form-group">
                           <h5><b>Estado</b></h5>
                          <select class="custom-select" id="txtEstado" name="txtEstado">
                            <option value="Activo">Activo</option>
                            <option value="Inactivo">Inactivo</option>
                          </select>
                        </div>
                      </div>

                      <div class="col-sm-2">
                        <div class="form-group">
                           <h5><b>Usuario</b></h5>
                          <select class="custom-select" id="txtUsuario" name="txtUsuario">
                            <?php
                            $color = 1;
                            $n = 0;
                            while ($row5 = mysqli_fetch_array($result3)) {
                              ?>
                              <option value="<?php echo $row5['usuario'] ?>"><?php echo $row5["usuario"] ?></option>
                            <?php
                            }

                            ?>
                          </select>
                        </div>
                      </div>
                      <div class="col-sm-3">
                        <div class="form-group">
                           <h5><b>Fecha de registro</b></h5>
                          <input type="date" class="form-control" required id="txtFechaRegistro" name="txtFechaRegistro">
                        </div>
                      </div>
                      <div class="col-sm-3">
                      <h5><a href="#" onclick="javascript:subirimagen2();" >Subir cédula</a></h5>
                      <input class="form-control" type="text" name="txtImagenCedula" id="txtImagenCedula"/>         
                      <input type="button" hidden name="button" id="button" value="Imagen" onclick="javascript:subirimagen2();" />          	
                      </div>
                      <div class="col-sm-3">
                      <h5><a href="#" onclick="javascript:subirimagen1();" > Subir nombramiento</a></h5>
                      <input class="form-control" type="text" name="txtImagenNombramiento" id="txtImagenNombramiento"/>
                      <input type="button"hidden name="button" id="button" value="Imagen" onclick="javascript:subirimagen1();" /> 
                      </div>
                      <div class="col-sm-3" hidden>
                        <label>Emisor eléctronico&nbsp;&nbsp;<input type="checkbox" name="emisor_electronico" value="si" id="emisor_electronico"/></label>   
                      </div>
                      <div class="col-sm-3">
                        <div class="form-group">
                          <h5><b>Empleados</b></h5>
                          <input type="number" class="form-control" required id="txtEmpleados" name="txtEmpleados">
                        </div>
                      </div>
                      <div class="col-sm-3" >
                        <div class="form-group">
                          <h5><b>GP/Proyeccion Gastos</b></h5>
                          <select class="custom-select" id="txtBaseImponible" name="txtBaseImponible">
                            <option value="SI">SI</option>
                            <option value="NO">NO</option>
                          </select>
                        </div>
                      </div>

                      <div class="col-sm-3" >
                        <div class="form-group">
                          <h5><b>Declaracion Patrimonial</b></h5>
                          <select class="custom-select" id="txtDeclaracionPatrimonial" name="txtDeclaracionPatrimonial">
                            <option value="SI">SI</option>
                            <option value="NO">NO</option>
                          </select>
                        </div>
                      </div>
                      <div class="col-sm-3" >
                        <div class="form-group">
                          <h5><b>Afiliados</b></h5>
                          <select class="custom-select" id="txtAfiliados" name="txtAfiliados">
                            <option value="SI">SI</option>
                            <option value="NO">NO</option>
                          </select>
                        </div>
                      </div>
                      <div class="col-sm-3" >
                        <div class="form-group">
                          <h5><b>Region</b></h5>
                          <select class="custom-select" id="txtRegion" name="txtRegion">
                            <option value="SIERRA">SIERRA</option>
                            <option value="COSTA">COSTA</option>
                          </select>
                        </div>
                      </div>
                    </div>

                    <div class="row">

                    </div>

                    <!-- Boton de guardar -->
                    <div class="row">
                      <div class="update ml-auto mr-auto">
                      </div>
                    </div>
                  </div>
            </div>
          </div>


          <!-- MENU 2 -->


          <div class="tab-pane" role="tabpanel" id="menu2">
              <div class="card card-user">
                <div class="card-body">
                  <div class="row">
                    <div class="col-sm-3">
                      <div class="form-group">
                        <h5 for="exampleInputEmail1"><img src="imagenes/sri.png" max-width="2px" alt="N"> Clave SRI </h5>
                        <input type="text" class="form-control" placeholder="" id="txtSri"  name="txtSri">
                      </div>
                    </div>

                    <div class="col-sm-3">
                      <div class="form-group">
                        <label for="exampleInputEmail1"><img src="imagenes/iess.png" max-width="2px" alt="N">Clave IESS Empleado</label>
                        <input type="text" class="form-control" placeholder="" id="txtIessEmpleado"  name="txtIessEmpleado">
                      </div>
                    </div>

                    <div class="col-sm-3">
                      <div class="form-group">
                        <label for="exampleInputEmail1"><img src="imagenes/iess.png" max-width="2px" alt="N">Clave IESS Empleador</label>
                        <input type="text" class="form-control" placeholder="" id="txtIessEmpleador"  name="txtIessEmpleador">
                      </div>
                    </div>

                    <div class="col-sm-3">
                      <div class="form-group">
                        <label for="exampleInputEmail1"><img src="imagenes/iess.png" max-width="2px" alt="N">Clave IESS Domestica</label>
                        <input type="text" class="form-control" placeholder="" id="txtIessDomestica"  name="txtIessDomestica">
                      </div>
                    </div>


                    <div class="col-sm-3">
                      <div class="form-group">
                        <label for="exampleInputEmail1"><img src="imagenes/MRL.png" max-width="2px" alt="N">Clave MRL Contratos</label>
                        <input type="text" class="form-control" placeholder="" id="txtMrl1"  name="txtMrl1">
                      </div>
                    </div>

                    <div class="col-sm-3">
                      <div class="form-group">
                        <label for="exampleInputEmail1"><img src="imagenes/MRL.png" max-width="2px" alt="N">Clave MRL Formularios</label>
                        <input type="text" class="form-control" placeholder="" id="txtMrl2"  name="txtMrl2">
                      </div>
                    </div>

                    <div class="col-sm-3">
                      <div class="form-group">
                        <label for="exampleInputEmail1"><img src="imagenes/super.png" max-width="2px" alt="N"> Usuario Super</label>
                        <input type="text" class="form-control" placeholder="" id="txtUsuarioSuper"  name="txtUsuarioSuper">
                      </div>
                    </div>

                    <div class="col-sm-3">
                      <div class="form-group">
                        <label for="exampleInputEmail1"><img src="imagenes/super.png" max-width="2px" alt="N"> Clave Super</label>
                        <input type="text" class="form-control" placeholder="" id="txtClaveSuper"  name="txtClaveSuper">
                      </div>
                    </div>

                    <div class="col-sm-3">
                      <div class="form-group">
                        <label for="exampleInputEmail1"><img src="imagenes/municipio.png" max-width="2px" alt="N"> Clave Municipio</label>
                        <input type="text" class="form-control" placeholder="" id="txtMunicipio"  name="txtMunicipio">
                      </div>
                    </div>

                    <div class="col-sm-3">
                      <div class="form-group">
                        <label for="exampleInputEmail1"><img src="imagenes/bomberos.png" max-width="2px" alt="N"> Clave Bomberos</label>
                        <input type="text" class="form-control" placeholder="" id="txtBomberos"  name="txtBomberos">
                      </div>
                    </div>
                    <div class="col-sm-3">
                      <div class="form-group">
                        <label for="exampleInputEmail1"><img src="imagenes/sercop.png" max-width="2px" alt="N"> Usuario Sercop</label>
                        <input type="text" class="form-control" placeholder="" id="txtUsuarioSercop"  name="txtUsuarioSercop">
                      </div>
                    </div>
                    <div class="col-sm-3">
                      <div class="form-group">
                        <label for="exampleInputEmail1"><img src="imagenes/sercop.png" max-width="2px" alt="N"> Clave Sercop</label>
                        <input type="text" class="form-control" placeholder="" id="txtClaveSercop"  name="txtClaveSercop">
                      </div>
                    </div>
                  </div>
                  <!-- Boton de guardar -->
                  <div class="row">
                    <div class="update ml-auto mr-auto">
                    </div>
                  </div>
                </div>
          </div>
        </div>

        <!-- MENU 3 -->
        <div class="tab-pane" role="tabpanel" id="menu3">
          <form action="insertardatosadic.php" method="POST" target="contenedor_adicionales">
            <div class="card card-user">
              <div class="card-body">
                <div class="form-group">
                <div class="row">
                  <div class="col-sm-4">
                    <button type="button" class="btn btn-info add-new"><i class="fa fa-plus"></i>Nuevo</button>
                    <input type="text" name="adi_ruc" id="adi_ruc" hidden>
                  </div>
                </div>
                </div>
                <table class="table table-bordered" id="tableadic">
                  <thead>
                    <tr>
                      <th>Dato 1</th>
                      <th>Dato 2</th>
                      <th>Dato 3</th>
                      <th>Acciones</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>

                    </tr>
                  </tbody>
                </table>
                <div class="row">
                  <div class="update ml-auto mr-auto">
                  </div>
                </div>
              </div>
            </div>
            <iframe width="1" height="1" frameborder="0" name="contenedor_adicionales" style="display: none"></iframe>
          </form>
        </div>
        <div class="tab-pane" role="tabpanel" id="menu4">
          <form action="insertardocumentos.php" method="POST" target="contenedor_documento">
            <div class="card card-user">
              <div class="card-body">
                <div class="form-group">
                  <div class="row">
                  <div class="col-sm-4">
                    <label>Tipo documento</label>
                    <select class="form-control documento" id="txtDocumento">
                    <?php
                     while ($rowdoc = mysqli_fetch_array($resultdoc)) {
                    ?>
                      <option value="<?php echo $rowdoc['id_documento'] ?>"><?php echo $rowdoc["documento"] ?></option>
                      <?php
                     }
                     ?>
                    </select>
                  </div>
                  <div class="col-sm-4">
                    <label>Fecha inicio</label>
                    <input type="date" class="form-control" id="txtFechaInicio">
                  </div>
                  <div class="col-sm-4">
                    <label>Fecha fin</label>
                    <input type="date" class="form-control" id="txtFechaFin">
                  </div>
                  </div>
                </div>

                <div class="form-group">
                  <div class="row">
                  <div class="col-sm-3">
                    <label>N° inicio</label>
                    <input type="text" class="form-control" id="txtNumeroInicio">
                    <input type="text" name="doc_ruc" id="doc_ruc" hidden>
                  </div>
                  <div class="col-sm-3">
                    <label>N° Fin</label>
                    <input type="text" class="form-control" id="txtNumeroFin">
                  </div>
                  <div class="col-sm-3">
                    <label>Autorización</label>
                    <input type="text" class="form-control" id="txtAutorizacion">
                  </div>
                  <div class="col-sm-3">
                    <label>Ruc imprenta</label>
                    <input type="text" class="form-control" id="txtRucImprenta">
                  </div>
                  </div>
                </div>
                <div class="form-group">
                <div class="row">
                <div class="update ml-auto mr-auto">
                    <button type="button" class="btn btn-info add-doc"><i class="fa fa-plus"></i>Agregar detalle</button>
                  </div>
                </div>
                </div>
                <table class="table table-bordered" id="tabladoc">
                  <thead>
                    <tr>
                      <th width="60">ID</th>
                      <th width="120">Docto.</th>
                      <th width="100">Inicio F.</th>
                      <th width="100">Fin F.</th>
                      <th width="140">Inicio N°</th>
                      <th width="140">Fin N°</th>
                      <th>Autorizacion</th>
                      <th>Ruc Imprenta</th>
                      <th>Acciones</th>
                    </tr>
                  </thead>
                  <tbody>
                  </tbody>
                </table>
                <div class="row">
                  <div class="update ml-auto mr-auto">
                    <button type="submit" class="btn btn-primary btn-round" id="savedoc">Guardar</button>
                  </div>
                </div>
              </div>
            </div>
            <iframe width="1" height="1" frameborder="0" name="contenedor_documento" style="display: none"></iframe>
          </form>
        </div>
      </div>
    </div>
  </div>
    <?php
}else{
    $consulta = $pdo->query("SELECT cli.ruc,id_cliente, fecha_registro, razon_social, nombre_comercial, categoria, status, ruc, usuario_asignado, cedula, 
    tipo_cliente, grupo_cliente, representante_legal, direccion, telefono1, telefono2, telefono3, telefono4, correo1, correo2, 
    ciudad, contacto, estado, digito, orden, sri, iess_domestico, iess_empresa, iess_afiliado, mrl1, mrl2, supercias_usuario, 
    supercias_clave, valor, foto_ruc, foto_cedula, mascara_ruc, mascara_cedula, asesor, empleados, municipio_clave, ussercop, 
    claversercop, clavebombero, actividadruc, contador, cont.nombre, detalle1, detalle2,id_asesor,id_ciudad,id_tipo,id_grupo,id_categoria,
    base_imponible, declaracion_patrimonial, afiliados, digito_placa, region
    FROM clientes cli, asesores ase, ciudades ciu, cliente_tipo tip, cliente_grupo gru, cliente_categoria cat, contadores cont
    where cli.asesor=ase.nombre and cli.ciudad=ciu.descripcion and cli.tipo_cliente=tip.descripcion
    and cli.grupo_cliente=gru.descripcion and contador=cont.id_contador
    and cli.categoria=cat.descripcion and ruc='$codi'");
    while ($fila = $consulta->fetch()) {
        ?>
        <div id="content-wrapper" class="d-flex flex-column">
          <!-- Page Heading -->

          <div class="tabs-container">
            <ul class="nav nav-tabs">
              <li class="nav-item">
                <a class="nav-link active" href="#menu1" data-toggle="tab">Datos personales</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#menu2" data-toggle="tab">Claves</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#menu3" data-toggle="tab">Datos informativos</a>

              </li>
              <li class="nav-item">
                <a class="nav-link" href="#menu4" data-toggle="tab">Documentos</a>
              </li>
            </ul>
          </div>


          <!-- MENU 1 - PRINCIPAL -->

          <div class="tab-content">
            <div class="tab-pane active" role="tabpanel" id="menu1">
                <div class="card card-user">
                  <div class="card-body">
                    <div class="row">

                      <div class="col-sm-2">
                        <div class="form-group">
                          <h5><b>RUC <a href="#" class="getRuc"><i class="fa fa-search"></i></a></b></h5>
                          <input type="text" maxlength="13" class="form-control" id="txtRucCed" name="txtRucCed" required placeholder="CI/RUC" value="<?= $fila['ruc']?>">
                        </div>
                      </div>

                      <div class="col-sm-5">
                        <div class="form-group">
                          <h5><b>Razon social</b></h5>
                          <input type="text" class="form-control" id="txtRazonSocial" name="txtRazonSocial" required placeholder="" onkeyup="javascript:this.value=this.value.toUpperCase();" value="<?= $fila['razon_social']?>">
                        </div>
                      </div>
                      <div class="col-sm-5">
                        <div class="form-group">
                          <h5 for="exampleInputEmail1"><b>Nombre Comercial</b></h5>
                          <input type="text" class="form-control" placeholder="" id="txtNombreComercial" required name="txtNombreComercial" onkeyup="javascript:this.value=this.value.toUpperCase();" value="<?= $fila['nombre_comercial']?>">
                        </div>
                      </div>

                      <div class="col-sm-2">
                        <div class="form-group">
                          <h5><b>Cedula</b></h5>
                          <input type="text" maxlength="13" class="form-control" id="txtCedula" name="txtCedula" required placeholder="Cedula" value="<?= $fila['cedula']?>">
                        </div>
                      </div>
                      <div class="col-sm-5">
                        <div class="form-group">
                          <h5 for="exampleInputEmail1"><b>Representante Legal</b></h5>
                          <input type="text" class="form-control" placeholder="Nombre" id="txtRepresentanteLegal" required name="txtRepresentanteLegal" onkeyup="javascript:this.value=this.value.toUpperCase();" value="<?= $fila['representante_legal']?>">
                        </div>
                      </div>
                      <div class="col-sm-5">
                        <div class="form-group">
                          <h5><b>Actividad comercial</b></h5>
                          <input type="text" class="form-control" required placeholder="Actividad" id="txtActividad" name="txtActividad" onkeyup="javascript:this.value=this.value.toUpperCase();" value="<?= $fila['actividadruc']?>">
                        </div>
                      </div>
                      <div class="col-sm-4">
                        <div class="form-group">
                          <h5><b>Correo</b></h5>
                          <input type="email" class="form-control" required placeholder="correo_example@hotmail.com" id="txtCorreo" name="txtCorreo" value="<?= $fila['correo1']?>">
                        </div>
                      </div>
                      <div class="col-sm-2">
                        <div class="form-group">
                          <h5><b>Teléfono 1</b></h5>
                          <input type="text" maxlength="10" class="form-control" required placeholder="" id="txtTelefono1" name="txtTelefono1" value="<?= $fila['telefono1']?>">
                        </div>
                      </div>
                      <div class="col-sm-2">
                        <div class="form-group">
                          <h5><b>Teléfono 2</b></h5>
                          <input type="text" maxlength="10" class="form-control" placeholder="" id="txtTelefono2" name="txtTelefono2" value="<?= $fila['telefono2']?>">
                        </div>
                      </div>

                      <div class="col-sm-4">
                        <div class="form-group">
                          <h5><b>Tipo de cliente</b></h5>
                          <select class="custom-select" id="txtTipoCliente" name="txtTipoCliente">
                          <option value="<?= $fila['categoria'] ?>"><?= $fila["categoria"] ?></option>
                            <?php
                            $color = 1;
                            $n = 0;
                            while ($row5 = mysqli_fetch_array($result2)) {
                              ?>
                              <option value="<?php echo $row5['descripcion'] ?>"><?php echo $row5["descripcion"] ?></option>
                            <?php
                            }

                            ?>
                          </select>
                        </div>
                      </div>
                    </div>

                    <div class="row">
                      <div class="col-sm-4">
                        <div class="form-group">
                          <h5><b>Ciudad </b></h5>
                          <select class="custom-select" id="txtCiudad" name="txtCiudad">
                          <option value="<?=$fila['ciudad'] ?>"><?= $fila["ciudad"] ?></option>
                            <?php
                            $color = 1;
                            $n = 0;
                            while ($row5 = mysqli_fetch_array($result5)) {
                              ?>
                              <option value="<?php echo $row5['descripcion'] ?>"><?php echo $row5["descripcion"] ?></option>
                            <?php
                            }

                            ?>
                          </select>
                        </div>
                      </div>

                      <!-- TIPO Y GRUPO-->
                      <div class="col-sm-4" hidden>
                        <div class="form-group">
                          <h5><b>Tipo </b></h5>
                          <select class="custom-select" id="txtTipo" name="txtTipo">
                            <?php
                            $color = 1;
                            $n = 0;
                            while ($rowtip = mysqli_fetch_array($resulttip)) {
                              ?>
                              <option value="<?php echo $rowtip['descripcion'] ?>"><?php echo $rowtip["descripcion"] ?></option>
                            <?php
                            }

                            ?>
                          </select>
                        </div>
                      </div>

                      <div class="col-sm-4" >
                        <div class="form-group">
                          <h5><b>Grupo</b></h5>
                          <select class="custom-select" id="txtGrupo" name="txtGrupo">
                          <option value="<?= $fila['tipo_cliente'] ?>"><?= $fila["tipo_cliente"] ?></option>
                            <?php
                            $color = 1;
                            $n = 0;
                            while ($rowgru = mysqli_fetch_array($resultgru)) {
                              ?>
                              <option value="<?php echo $rowgru['descripcion'] ?>"><?php echo $rowgru["descripcion"] ?></option>
                            <?php
                            }

                            ?>
                          </select>
                        </div>
                      </div>
                      <div class="col-sm-4">
                        <div class="form-group">
                          <h5><b>Contador</b></h5>
                          <select class="custom-select" id="txtContador" name="txtContador">
                          <option value="<?= $fila['contador'] ?>"><?=$fila["nombre"] ?></option>
                            <?php
                            $color = 1;
                            $n = 0;
                            while ($row5 = mysqli_fetch_array($result4)) {
                              ?>
                              <option value="<?php echo $row5['id_contador'] ?>"><?php echo $row5["nombre"] ?></option>
                            <?php
                            }

                            ?>
                          </select>
                        </div>
                      </div>
                      <!-- -->

                      <div class="col-sm-6">
                        <div class="form-group">
                         <h5><b>Dirección</b></h5>
                          <input type="text" class="form-control" required placeholder="Dirección" id="txtDireccion" name="txtDireccion" onkeyup="javascript:this.value=this.value.toUpperCase();" value="<?= $fila['direccion']?>">
                        </div>
                      </div>

                      <div class="col-sm-2">
                        <div class="form-group">
                         <h5><b>Asesor</b></h5>
                          <select class="custom-select" id="txtAsesor" name="txtAsesor">
                          <option value="<?= $fila['asesor'] ?>"><?= $fila["asesor"] ?></option>
                            <?php
                            $color = 1;
                            $n = 0;
                            while ($row5 = mysqli_fetch_array($result1)) {
                              ?>
                              <option value="<?php echo $row5['nombre'] ?>"><?php echo $row5["nombre"] ?></option>
                            <?php
                            }

                            ?>
                          </select>
                        </div>
                      </div>

                      <div class="col-sm-2" >
                        <div class="form-group">
                           <h5><b>Estado</b></h5>
                          <select class="custom-select" id="txtEstado" name="txtEstado">
                            <?php
                            if($fila['status']=="Activo"){
                              ?>
                              <option value="Activo" selected>Activo</option>
                              <option value="Inactivo">Inactivo</option>
                              <?php
                            }else{
                              ?>
                              <option value="Activo">Activo</option>
                              <option value="Inactivo" selected>Inactivo</option>
                              <?php
                            }
                            ?>
                          </select>
                        </div>
                      </div>

                      <div class="col-sm-2">
                        <div class="form-group">
                           <h5><b>Usuario</b></h5>
                          <select class="custom-select" id="txtUsuario" name="txtUsuario">
                          <option value="<?= $fila['usuario_asignado'] ?>"><?= $fila["usuario_asignado"] ?></option>
                            <?php
                            $color = 1;
                            $n = 0;
                            while ($row5 = mysqli_fetch_array($result3)) {
                              ?>
                              <option value="<?php echo $row5['usuario'] ?>"><?php echo $row5["usuario"] ?></option>
                            <?php
                            }

                            ?>
                          </select>
                        </div>
                      </div>
                      <div class="col-sm-3">
                        <div class="form-group">
                           <h5><b>Fecha de registro</b></h5>
                          <input type="date" class="form-control" required id="txtFechaRegistro" name="txtFechaRegistro" value="<?= $fila['fecha_registro']?>">
                        </div>
                      </div>
                      <div class="col-sm-3">
                      <h5><a href="#" onclick="javascript:subirimagen2();" >Subir cédula</a></h5>
                      <input class="form-control" type="text" name="txtImagenCedula" id="txtImagenCedula" value="<?= $fila['foto_cedula']?>"/>         
                      <input type="button" hidden name="button" id="button" value="Imagen" onclick="javascript:subirimagen2();"/>          	
                      </div>
                      <div class="col-sm-3">
                      <h5><a href="#" onclick="javascript:subirimagen1();" > Subir nombramiento</a></h5>
                      <input class="form-control" type="text" name="txtImagenNombramiento" id="txtImagenNombramiento" value="<?= $fila['foto_ruc']?>"/>
                      <input type="button"hidden name="button" id="button" value="Imagen" onclick="javascript:subirimagen1();"/> 
                      </div>
                      <div class="col-sm-3" hidden>
                        <label>Emisor eléctronico&nbsp;&nbsp;<input type="checkbox" name="emisor_electronico" value="si" id="emisor_electronico"/></label>   
                      </div>
                      <div class="col-sm-3">
                        <div class="form-group">
                          <h5><b>Empleados</b></h5>
                          <input type="number" class="form-control" required id="txtEmpleados" name="txtEmpleados" value="<?= $fila['empleados']?>">
                        </div>
                      </div>
                      <div class="col-sm-3" >
                        <div class="form-group">
                          <h5><b>GP/Proyeccion Gastos</b></h5>
                          <select class="custom-select" id="txtBaseImponible" name="txtBaseImponible">
                          <?php
                            if($fila['base_imponible']=="SI"){
                              ?>
                              <option value="SI" selected>SI</option>
                              <option value="NO">NO</option>
                              <?php
                            }else{
                              ?>
                              <option value="SI">SI</option>
                              <option value="NO" selected>NO</option>
                              <?php
                            }
                            ?>
                          </select>
                        </div>
                      </div>

                      <div class="col-sm-3" >
                        <div class="form-group">
                          <h5><b>Declaracion Patrimonial</b></h5>
                          <select class="custom-select" id="txtDeclaracionPatrimonial" name="txtDeclaracionPatrimonial">
                          <?php
                            if($fila['declaracion_patrimonial']=="SI"){
                              ?>
                              <option value="SI" selected>SI</option>
                              <option value="NO">NO</option>
                              <?php
                            }else{
                              ?>
                              <option value="SI">SI</option>
                              <option value="NO" selected>NO</option>
                              <?php
                            }
                            ?>
                          </select>
                        </div>
                      </div>
                      <div class="col-sm-3" >
                        <div class="form-group">
                          <h5><b>Afiliados</b></h5>
                          <select class="custom-select" id="txtAfiliados" name="txtAfiliados">
                          <?php
                            if($fila['afiliados']=="SI"){
                              ?>
                              <option value="SI" selected>SI</option>
                              <option value="NO">NO</option>
                              <?php
                            }else{
                              ?>
                              <option value="SI">SI</option>
                              <option value="NO" selected>NO</option>
                              <?php
                            }
                            ?>
                          </select>
                        </div>
                      </div>
                      <div class="col-sm-3" >
                        <div class="form-group">
                          <h5><b>Region</b></h5>
                          <select class="custom-select" id="txtRegion" name="txtRegion">
                          <?php
                            if($fila['region']=="SIERRA"){
                              ?>
                              <option value="SIERRA" selected>SIERRA</option>
                              <option value="COSTA">COSTA</option>
                              <?php
                            }else{
                              ?>
                              <option value="SIERRA">SIERRA</option>
                              <option value="COSTA" selected>COSTA</option>
                              <?php
                            }
                            ?>
                          </select>
                        </div>
                      </div>
                    </div>

                    <div class="row">

                    </div>

                    <!-- Boton de guardar -->
                    <div class="row">
                      <div class="update ml-auto mr-auto">
                      </div>
                    </div>
                  </div>
            </div>
          </div>


          <!-- MENU 2 -->


          <div class="tab-pane" role="tabpanel" id="menu2">
              <div class="card card-user">
                <div class="card-body">
                  <div class="row">
                    <div class="col-sm-3">
                      <div class="form-group">
                        <h5 for="exampleInputEmail1"><img src="imagenes/sri.png" max-width="2px" alt="N"> Clave SRI </h5>
                        <input type="text" class="form-control" placeholder="" id="txtSri"  name="txtSri" value="<?= $fila['sri']?>">
                      </div>
                    </div>

                    <div class="col-sm-3">
                      <div class="form-group">
                        <label for="exampleInputEmail1"><img src="imagenes/iess.png" max-width="2px" alt="N">Clave IESS Empleado</label>
                        <input type="text" class="form-control" placeholder="" id="txtIessEmpleado"  name="txtIessEmpleado" value="<?= $fila['iess_afiliado']?>">
                      </div>
                    </div>

                    <div class="col-sm-3">
                      <div class="form-group">
                        <label for="exampleInputEmail1"><img src="imagenes/iess.png" max-width="2px" alt="N">Clave IESS Empleador</label>
                        <input type="text" class="form-control" placeholder="" id="txtIessEmpleador"  name="txtIessEmpleador" value="<?= $fila['iess_empresa']?>">
                      </div>
                    </div>

                    <div class="col-sm-3">
                      <div class="form-group">
                        <label for="exampleInputEmail1"><img src="imagenes/iess.png" max-width="2px" alt="N">Clave IESS Domestica</label>
                        <input type="text" class="form-control" placeholder="" id="txtIessDomestica"  name="txtIessDomestica" value="<?= $fila['iess_domestico']?>">
                      </div>
                    </div>


                    <div class="col-sm-3">
                      <div class="form-group">
                        <label for="exampleInputEmail1"><img src="imagenes/MRL.png" max-width="2px" alt="N">Clave MRL Contratos</label>
                        <input type="text" class="form-control" placeholder="" id="txtMrl1"  name="txtMrl1" value="<?= $fila['mrl1']?>">
                      </div>
                    </div>

                    <div class="col-sm-3">
                      <div class="form-group">
                        <label for="exampleInputEmail1"><img src="imagenes/MRL.png" max-width="2px" alt="N">Clave MRL Formularios</label>
                        <input type="text" class="form-control" placeholder="" id="txtMrl2"  name="txtMrl2" value="<?= $fila['mrl2']?>">
                      </div>
                    </div>

                    <div class="col-sm-3">
                      <div class="form-group">
                        <label for="exampleInputEmail1"><img src="imagenes/super.png" max-width="2px" alt="N"> Usuario Super</label>
                        <input type="text" class="form-control" placeholder="" id="txtUsuarioSuper"  name="txtUsuarioSuper" value="<?= $fila['supercias_usuario']?>">
                      </div>
                    </div>

                    <div class="col-sm-3">
                      <div class="form-group">
                        <label for="exampleInputEmail1"><img src="imagenes/super.png" max-width="2px" alt="N"> Clave Super</label>
                        <input type="text" class="form-control" placeholder="" id="txtClaveSuper"  name="txtClaveSuper" value="<?= $fila['supercias_clave']?>">
                      </div>
                    </div>

                    <div class="col-sm-3">
                      <div class="form-group">
                        <label for="exampleInputEmail1"><img src="imagenes/municipio.png" max-width="2px" alt="N"> Clave Municipio</label>
                        <input type="text" class="form-control" placeholder="" id="txtMunicipio"  name="txtMunicipio" value="<?= $fila['municipio_clave']?>">
                      </div>
                    </div>

                    <div class="col-sm-3">
                      <div class="form-group">
                        <label for="exampleInputEmail1"><img src="imagenes/bomberos.png" max-width="2px" alt="N"> Clave Bomberos</label>
                        <input type="text" class="form-control" placeholder="" id="txtBomberos"  name="txtBomberos" value="<?= $fila['clavebombero']?>">
                      </div>
                    </div>
                    <div class="col-sm-3">
                      <div class="form-group">
                        <label for="exampleInputEmail1"><img src="imagenes/sercop.png" max-width="2px" alt="N"> Usuario Sercop</label>
                        <input type="text" class="form-control" placeholder="" id="txtUsuarioSercop"  name="txtUsuarioSercop" value="<?= $fila['ussercop']?>">
                      </div>
                    </div>
                    <div class="col-sm-3">
                      <div class="form-group">
                        <label for="exampleInputEmail1"><img src="imagenes/sercop.png" max-width="2px" alt="N"> Clave Sercop</label>
                        <input type="text" class="form-control" placeholder="" id="txtClaveSercop"  name="txtClaveSercop" value="<?= $fila['claversercop']?>">
                      </div>
                    </div>
                  </div>
                  <!-- Boton de guardar -->
                  <div class="row">
                    <div class="update ml-auto mr-auto">
                    </div>
                  </div>
                </div>
          </div>
        </div>

        <!-- MENU 3 -->
        <div class="tab-pane" role="tabpanel" id="menu3">
          <form action="insertardatosadic.php" method="POST" target="contenedor_adicionales">
            <div class="card card-user">
              <div class="card-body">
                <div class="form-group">
                <div class="row">
                  <div class="col-sm-4">
                    <button type="button" class="btn btn-info add-new"><i class="fa fa-plus"></i>Nuevo</button>
                    <input type="text" name="adi_ruc" id="adi_ruc" hidden>
                  </div>
                </div>
                </div>
                <table class="table table-bordered" id="tableadic">
                  <thead>
                    <tr>
                      <th>Dato 1</th>
                      <th>Dato 2</th>
                      <th>Dato 3</th>
                      <th>Acciones</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>

                    </tr>
                  </tbody>
                </table>
                <div class="row">
                  <div class="update ml-auto mr-auto">
                    <button type="submit" class="btn btn-primary btn-round" id="saveadic">Guardar</button>
                  </div>
                </div>
              </div>
            </div>
            <iframe width="1" height="1" frameborder="0" name="contenedor_adicionales" style="display: none"></iframe>
          </form>
        </div>
        <div class="tab-pane" role="tabpanel" id="menu4">
          <form action="insertardocumentos.php" method="POST" target="contenedor_documento">
            <div class="card card-user">
              <div class="card-body">
                <div class="form-group">
                  <div class="row">
                  <div class="col-sm-4">
                    <label>Tipo documento</label>
                    <select class="form-control documento" id="txtDocumento">
                    <?php
                     while ($rowdoc = mysqli_fetch_array($resultdoc)) {
                    ?>
                      <option value="<?php echo $rowdoc['id_documento'] ?>"><?php echo $rowdoc["documento"] ?></option>
                      <?php
                     }
                     ?>
                    </select>
                  </div>
                  <div class="col-sm-4">
                    <label>Fecha inicio</label>
                    <input type="date" class="form-control" id="txtFechaInicio">
                  </div>
                  <div class="col-sm-4">
                    <label>Fecha fin</label>
                    <input type="date" class="form-control" id="txtFechaFin">
                  </div>
                  </div>
                </div>

                <div class="form-group">
                  <div class="row">
                  <div class="col-sm-3">
                    <label>N° inicio</label>
                    <input type="text" class="form-control" id="txtNumeroInicio">
                    <input type="text" name="doc_ruc" id="doc_ruc" hidden>
                  </div>
                  <div class="col-sm-3">
                    <label>N° Fin</label>
                    <input type="text" class="form-control" id="txtNumeroFin">
                  </div>
                  <div class="col-sm-3">
                    <label>Autorización</label>
                    <input type="text" class="form-control" id="txtAutorizacion">
                  </div>
                  <div class="col-sm-3">
                    <label>Ruc imprenta</label>
                    <input type="text" class="form-control" id="txtRucImprenta">
                  </div>
                  </div>
                </div>
                <div class="form-group">
                <div class="row">
                <div class="update ml-auto mr-auto">
                    <button type="button" class="btn btn-info add-doc"><i class="fa fa-plus"></i>Agregar detalle</button>
                  </div>
                </div>
                </div>
                <table class="table table-bordered" id="tabladoc">
                  <thead>
                    <tr>
                      <th width="60">ID</th>
                      <th width="120">Docto.</th>
                      <th width="100">Inicio F.</th>
                      <th width="100">Fin F.</th>
                      <th width="140">Inicio N°</th>
                      <th width="140">Fin N°</th>
                      <th>Autorizacion</th>
                      <th>Ruc Imprenta</th>
                      <th>Acciones</th>
                    </tr>
                  </thead>
                  <tbody>
                  </tbody>
                </table>
                <div class="row">
                  <div class="update ml-auto mr-auto">
                  </div>
                </div>
              </div>
            </div>
            <iframe width="1" height="1" frameborder="0" name="contenedor_documento" style="display: none"></iframe>
          </form>
        </div>
      </div>
    </div>
  </div>
        <?php
    }
}
?>  