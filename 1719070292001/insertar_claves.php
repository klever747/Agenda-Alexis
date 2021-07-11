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
	$sri=$_POST["txtSri"];
	$iessempleado=$_POST["txtIessEmpleado"];
	$iessempleador=$_POST["txtIessEmpleador"];	
	$iessdomestica=$_POST["txtIessDomestica"];
	$mrl1=$_POST["txtMrl1"];
	$mrl2=$_POST["txtMrl2"];
	$ussuper=$_POST["txtUsuarioSuper"];
	$clavesuper=$_POST["txtClaveSuper"];
	$municipio=$_POST["txtMunicipio"];
	$bomberos=$_POST["txtBomberos"];
	$ussercop=$_POST["txtUsuarioSercop"];
	$clavesercop=$_POST["txtClaveSercop"];
	

	$sql4 = ("SELECT * FROM clientes WHERE ruc='$ruc'");
	$result4 = mysqli_query($conn, $sql4);
	$row4 = mysqli_num_rows($result4);

		$sql= "update clientes set sri='".$sri."', iess_afiliado='".$iessempleado."', iess_empresa='".$iessempleador."', iess_domestico='".$iessdomestica."', mrl1='".$mrl1."', mrl2='".$mrl2."', supercias_usuario='".$ussuper."',
		supercias_clave='".$clavesuper."', municipio_clave='".$municipio."', clavebombero='".$bomberos."', ussercop='".$ussercop."', claversercop='".$clavesercop."' where ruc='".$ruc."'";
		if ($conn->query($sql) === TRUE) 
		{
            echo "2";
		} 
		else 
		{
            echo "1";
		}		
	
	$conn->close();	
?>