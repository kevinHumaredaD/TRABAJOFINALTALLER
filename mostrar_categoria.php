<?php
    include 'partes/conexion.php';
    $sentencia_categorias = "SELECT * FROM categoria";
    $sentencia=$db->query($sentencia_categorias);
    $categoria= $sentencia->fetchAll();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="hojaestilo/estilodepagina.css">
</head>
<body>
<img _ngcontent-c15="" alt="" class="nd-icons-custom-img" src="www.nooddle.es/assets/nooddle-nuevas-recetas-icon.png">
<div class="row row-cols-1 row-cols-md-4 w-100 mr-0 ml-0 pr-3 pl-3 pt-3" style="background-color:#1e1e1e">
    <?php foreach($categoria as $c){ ?>
            <div class="col mb-4">
                <div class="card h-100">
                <p></p>
</body>
</html>l