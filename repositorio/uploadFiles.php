<?php
include 'Conexion/conexion_pdo.php';

if (isset($_POST['uploadBtn']) && $_POST['uploadBtn'] == 'Upload') {
    if (isset($_FILES['uploadedFile']) && $_FILES['uploadedFile']['error'] === UPLOAD_ERR_OK) {
        // get details of the uploaded file
        $fileTmpPath = $_FILES['uploadedFile']['tmp_name'];
        $fileName = $_FILES['uploadedFile']['name'];
        $fileSize = $_FILES['uploadedFile']['size'];
        $fileType = $_FILES['uploadedFile']['type'];
        $fileNameCmps = explode(".", $fileName);
        $fileExtension = strtolower(end($fileNameCmps));

        $newFileName = $fileName;

        $allowedfileExtensions = array('jpg', 'gif', 'png', 'zip', 'txt', 'xls', 'doc', 'pdf');
        if (in_array($fileExtension, $allowedfileExtensions)) {

            // directory in which the uploaded file will be moved
            $uploadFileDir = 'recursos/';
            $dest_path = $uploadFileDir . $newFileName;

            if (move_uploaded_file($fileTmpPath, $dest_path)) {


                $nuevo = $pdo->query("insert into recursos (nombre, fecha) values('$newFileName',NOW())");

                if ($nuevo) {
                    $message = '<script>alert("Recurso cargado")</script>';
                    header('Location: repositorio.php');
                } else {
                    $message = '<script>alert("Recurso cargado, pero no registrado")</script>';
                    header('Location: repositorio.php');

                }
               
            } else {
                $message = '<script>alert("Recurso no cargado. Consulte con el proveedor")</script>';
                header('Location: repositorio.php');

            }       
        }
    }else{
        $message = '<script>alert("Recurso no cargado. Consulte con el proveedor")</script>';
                header('Location: repositorio.php');
    }
}else{
    $message = '<script>alert("Recurso no cargado. Consulte con el proveedor")</script>';
                header('Location: repositorio.php');
}
