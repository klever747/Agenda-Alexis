<?php ob_start();
	require_once('Conexion/conexion.php');
	// Create connection
	$conn = mysqli_connect($hostname_conexion, $username_conexion, $password_conexion, $database_conexion);

	if (!$conn) 
	{
		die("Connection failed: " . mysqli_connect_error());
		echo "ERRor";
	} 
	

	$ruc=$_POST["txtRuc"];
	$razonsocial=$_POST["txtRazonSocial"];
	$nombrecomercial=$_POST["txtNombreComercial"];
	$cedula=$_POST["txtCedula"];
	$replegal=$_POST["txtRepresentanteLegal"];
	$actividad=$_POST["txtActividad"];
	$correo=$_POST["txtCorreo"];
	$telf1=$_POST["txtTelefono1"];
	$telf2=$_POST["txtTelefono2"];
	$tipocliente=$_POST["txtTipoCliente"];
	$ciudad=$_POST["txtCiudad"];
	$direccion=$_POST["txtDireccion"];
	$asesor=$_POST["txtAsesor"];
	$usuario=$_POST["txtUsuario"];
	$contador=$_POST["txtContador"];
	$estado=$_POST["txtEstado"];
	$grupo=$_POST["txtGrupo"];
	$tipo=$_POST["txtTipo"];
	$fecharegistro=$_POST["txtFechaRegistro"];
	$imgcedula=$_POST["txtImagenCedula"];
    $imgnombramiento=$_POST["txtImagenNombramiento"];
    $empleados=$_POST["txtEmpleados"];
    $txtBaseImponible=$_POST["txtBaseImponible"];
    $txtDeclaracionPatrimonial=$_POST["txtDeclaracionPatrimonial"];
    $txtAfiliados=$_POST["txtAfiliados"];
    $txtRegion=$_POST["txtRegion"];
    
	$digito=substr($ruc, 8, 1);
	$orden=0;
	if($digito=='1'){
		$orden=10;
	}
	if($digito=='2'){
		$orden=12;
	}
	if($digito=='3'){
		$orden=14;
	}
	if($digito=='4'){
		$orden=16;
	}
	if($digito=='5'){
		$orden=18;
	}
	if($digito=='6'){
		$orden=20;
	}
	if($digito=='7'){
		$orden=22;
	}
	if($digito=='8'){
		$orden=24;
	}
	if($digito=='9'){
		$orden=26;
	}
	if($digito=='0'){
		$orden=28;
	}

	
	$sql4 = ("SELECT * FROM clientes WHERE ruc='$ruc'");
	$result4 = mysqli_query($conn, $sql4);
	$row4 = mysqli_num_rows($result4);
	
	if ($row4<1)
	{
		echo "0";		
	}
	else
	{
		$sql= "update clientes set razon_social='$razonsocial',nombre_comercial='$nombrecomercial', cedula='$cedula', 
		representante_legal='$replegal', actividadruc='$actividad', correo1='$correo',
		telefono1='$telf1',telefono2='$telf2', categoria='$tipocliente',status='$estado', ciudad='$ciudad', 
		direccion='$direccion', asesor='$asesor', usuario_asignado='$usuario', contador='$contador', fecha_registro='$fecharegistro',
		foto_cedula='$imgcedula', foto_ruc='$imgnombramiento',tipo_cliente='$tipo',grupo_cliente='$grupo',digito='$digito',
		orden='$orden',base_imponible='$txtBaseImponible',declaracion_patrimonial='$txtDeclaracionPatrimonial',afiliados='$txtAfiliados',
		region='$txtRegion',empleados=$empleados where ruc='$ruc'";
		
		if ($conn->query($sql) === TRUE)  
		{
			echo "2";
		} 
		else 
		{
            echo "1";
		}
	}