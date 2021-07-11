<?php		
session_start();
require_once('Conexion/conexion.php');
    $conn = mysqli_connect($hostname_conexion, $username_conexion,$password_conexion,$database_conexion);
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
    echo "ERRor";
}

	$sql = $conn->prepare("SELECT actividad FROM actividad");			
	$sql->execute();
	$result = $sql->get_result();
	if ($result->num_rows > 0) {
		while($row = $result->fetch_assoc()) {
		$countryResult[] = $row["actividad"];
		}
		echo json_encode($countryResult);
	}
	$conn->close();
?>