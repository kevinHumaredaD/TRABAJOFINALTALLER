<?php
    $Email=$_POST["Email"];
    include 'partes/conexion.php';
    $sentencia=$db->query("SELECT * FROM usuario where Email = '$Email'");
    $usuario= $sentencia->fetchAll();
    if(count($usuario)==0){
        header("Location:index.php?error=1");
    }else{
        $db->query("UPDATE usuario SET Estado = 2 WHERE Email = '$Email'");
        header("Location:index.php?exito=1");
    }
?>