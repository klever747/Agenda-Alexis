<?php
	ob_start();
?>
<head>
	<script src="js/SweetAlert.js"></script> 
</head>
<body>
<?php
	require_once('Conexion/conexion.php');
	session_start();

//EN ESTA PARTE ESTAMOS UBICANDO LA RUTA DE LA BASE DE DATOS CORRESPONDIENTE A LA EMPRESA DEL USUARIO

//	$hostname_conexion = "localhost";
//	$database_conexion = "logeo"; //"alevlcom_logeo";
//	$username_conexion = "root"; //"organiza_danilo alevlcom_alevl";
//	$password_conexion = "a13337780";

	// Create connection
	$conn = mysqli_connect($hostname_conexion, $username_conexion, $password_conexion, $database_conexion);

	if (!$conn) 
	{
		die("Connection failed: " . mysqli_connect_error());
		echo "ERRor";
	} 

//	$empresa = $_POST["empresa_logeo"]; 
	$usuario = $_POST["usuario"];	
	$clave = $_POST["clave"];

//	$sql = ("SELECT * FROM empresas WHERE nombre='$empresa'");
//	$result = mysqli_query($conn, $sql);
//	$row = mysqli_fetch_array($result);
	
//	$base_datos = $row["base_datos"];	
//	$ruta_datos = $base_datos; //"organiza_".$base_datos;//"alevlcom_".$base_datos;
	
//	$conn->close();
//FIN DE UBICAR LA RUTA DE LA BASE DE DATOS
//AQUI YA TENEMOS LA RUTA DE LA BASE DE DATOS Y MANDAMOS LOS DATOS A LA RESPECTIVA BASE DE DATOS			
//	session_start();

//	$hostname_conexion = "localhost";
//	$database_conexion = "tareas";//$ruta_datos;
//	$username_conexion = "root";//"organiza_danilo alevlcom_alevl";
//	$password_conexion = "a13337780";

	// Create connection
//	$conn = mysqli_connect($hostname_conexion, $username_conexion, $password_conexion, $database_conexion);

//	if (!$conn) 
//	{
//		die("Connection failed: " . mysqli_connect_error());
//		echo "ERRor";
//	} 

	$sqlA = ("SELECT * FROM LICENCIA");
	$resultA = mysqli_query($conn, $sqlA);
	$rowA = mysqli_fetch_array($resultA);
	
	$sql = ("SELECT * FROM usuarios WHERE (usuario='$usuario'  AND clave='$clave')");
	$result = mysqli_query($conn, $sql);
	$numero = mysqli_num_rows($result);	
	$row = mysqli_fetch_array($result);
	
	if ($numero>0) 
	{	
		if ($row["status"]=="Bloqueado")
		{
			header("Location: login_bloqueado.php");
			exit;
		}
		else
		{	
			$_SESSION['nombre'] = $row["nombre"];
			$_SESSION['nivel'] = $row["nivel"];
			$_SESSION['status'] = $row["status"];
			$_SESSION['usuario'] = $row["usuario"];
			$_SESSION['suscrito'] = $rowA["suscrito"];
			//$_SESSION['ruta'] = $ruta_datos;
			header("Location: principal.php");
			exit;
		}
	}
	else
	{
		?>
    	<script>
		swal('Error','Usuario o Contraseña errada. Verifique','error'). then(function(result){
			window.location = "index.php";
		 });
        </script>
	    <?php
		exit;
	}

    if ($conn->query($sql) === TRUE) {
	    //header("Location: login_exitoso.php"); //echo "New record created successfully";
	} else {
	    echo "Error: " . $sql . "<br>" . $conn->error;
	}
	
	$conn->close();
?>
</body>