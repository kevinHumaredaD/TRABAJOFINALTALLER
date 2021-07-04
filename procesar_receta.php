<?php
    $Nombre=$_POST["Nombre"];
    $Descripcion=$_POST["Descripcion"];
    $Duracion =$_POST["Duracion"];
    $Dificultad =$_POST["Dificultad"];
    $Pasos =$_POST["Pasos"];
    $IdCategoria =$_POST["IdCategoria"];
    $imagen= $_FILES["Imagen"]["name"];
    $ruta=$_FILES["Imagen"]["tmp_name"];
    $destino="receta/".$imagen;
    move_uploaded_file($ruta,$destino); 
    include 'partes/conexion.php';
    $db->query("INSERT INTO plato VALUES (NULL, '$Nombre', '$Descripcion','$Duracion','$Dificultad','$destino','$Pasos','$IdCategoria')");
    
    $sentencia_plato = "SELECT * FROM plato where NombrePlato = '$Nombre'";
    $sentencia = $db->query($sentencia_plato);
    $ingrediente= $sentencia->fetch();
    $id = $ingrediente['IdPlato'];

    header("Location:registrar_ingrediente.php?id=$id");

?>
