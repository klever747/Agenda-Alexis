<?php
//Create a new PHPMailer instance
include "PHPMailer/class.phpmailer.php";
include "PHPMailer/class.smtp.php";

$ruc=$_POST["txtRuc"];
$nombre=$_POST["txtNombre"];
$whatsapp=$_POST["txtWhatsapp"];
$correo=$_POST["txtEmail"];

$mail = new PHPMailer();
$mail->IsSMTP();
 
//Configuracion servidor mail
$mail->From = "alexisandinom@gmail.com"; //remitente
$mail->SMTPAuth = true;
$mail->SMTPSecure = 'tls'; //seguridad
$mail->Host = "smtp.gmail.com"; // servidor smtp
$mail->Port = 587; //puerto
$mail->Username ='alexisandinom@gmail.com'; //nombre usuario
$mail->Password = 'ivanaandino2011'; //contraseña

$message = 'RUC: '.$ruc. PHP_EOL;
$message .= 'NOMBRE: '.$nombre. PHP_EOL;
$message .= 'WHATSAPP: '.$whatsapp. PHP_EOL;
$message .= 'EMAIL: '.$correo. PHP_EOL;

//Agregar destinatario
$mail->AddAddress("alexisandinom@hotmail.com");
$mail->Subject = "SUSCRIPCION NUEVA";
$mail->Body = $message;


//Avisar si fue enviado o no y dirigir al index
if ($mail->Send()) {
    echo'<script type="text/javascript">
           alert("Enviado Correctamente");
           location.href="principal.php";
        </script>';
} else {
    echo'<script type="text/javascript">
           alert("NO ENVIADO, intentar de nuevo");
           location.href="principal.php";
        </script>';
}
?>