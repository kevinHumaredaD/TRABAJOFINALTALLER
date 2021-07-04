<?php
    $Nombre=$_POST["Nombre"];
    $Descripcion=$_POST["Descripcion"];
    $Duracion =$_POST["Duracion"];
    $Dificultad =$_POST["Dificultad"];
    
    $imagen= $_FILES["Imagen"]["name"];
    $ruta=$_FILES["Imagen"]["tmp_name"];
    $destino="receta/".$imagen;
    move_uploaded_file($ruta,$destino); 
    include 'partes/conexion.php';
    $db->query("INSERT INTO plato VALUES (NULL, '$Nombre', '$Descripcion','$Duracion','$Dificultad','$destino')");
    header("Location:index.php");

?>
