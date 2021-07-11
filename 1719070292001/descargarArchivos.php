<?php 
ob_start();
    $nombre=$_GET["name"];

		try{
            $fileLocation="../repositorio/recursos/".$nombre;
            header('Content-Description: File Transfer');
            header("Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet");
            header("Content-Disposition: attachment; filename=\"".basename($fileLocation)."\"");
            header("Content-Transfer-Encoding: binary");
            header("Expires: 0");
            header("Pragma: public");
            header("Cache-Control: must-revalidate, post-check=0, pre-check=0");
            header('Content-Length: ' . filesize($fileLocation)); //Remove
        
            ob_clean();
            flush();
        
            readfile($fileLocation);
		} 
		catch(Exception $ex)
		{
			
			?>
			<script type="text/javascript">
              alert("Ha ocurrido un error, comunicate con el administrador");
              location.href="descargas.php"
		   </script>
	
	       <?php
        }
?>