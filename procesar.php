<?php
    $Nombre=$_POST["Nombre"];
    $DNI=$_POST["DNI"];
    $Edad =$_POST["Edad"];
    $Email =$_POST["Email"];
    $Telefono =$_POST["Telefono"];
    $ContactoEmergencia =$_POST["ContactoEmergencia"];
    $TelefonoEmergencia =$_POST["TelefonoEmergencia"];
    $Lugar =$_POST["Lugar"];
    
    $imagen= $_FILES["Imagen"]["name"];
    $ruta=$_FILES["Imagen"]["tmp_name"];
    $destino="user/".$imagen;
    move_uploaded_file($ruta,$destino); 
    include 'partes/conexion.php';
    $db->query("INSERT INTO usuario VALUES (NULL, '$Nombre', '$DNI','$Edad','$Email','$Telefono','$ContactoEmergencia'
    ,'$TelefonoEmergencia','$Lugar','$destino',0)");
    header("Location:index.php");

?>


<?php
/*
    echo 'Hola';
    $nombre=strtoupper($_POST["nombre"]);
    $apellido=strtoupper($_POST["apellido"]);
    $imagen= $_FILES["imagen"]["name"];
    $ruta=$_FILES["imagen"]["tmp_name"];
    $destino="user/".$imagen;
    move_uploaded_file($ruta,$destino); 
    $db= new PDO('mysql:host=127.0.0.1;dbname=gausstut_HDi9Ww4k;charset=utf8mb4','gausstut_HDi9Ww4k','Aa123456789Kevin');
    $db->query("INSERT INTO Usuarios VALUES (NULL, '$nombre', '$destino','$apellido')");
    header("Location:index.php");




    
?>
 