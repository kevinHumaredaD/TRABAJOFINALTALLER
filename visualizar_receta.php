<?php
    include 'partes/conexion.php';
    $idPlato= $_GET["IdPlato"];
    $sentencia_plato = "SELECT * FROM plato where IdPlato = $idPlato";
    $sentencia=$db->query($sentencia_plato);
    $plato= $sentencia->fetch();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="node_modules/bootstrap/dist/css/bootstrap.min.css">
    <title>Document</title>
</head>
<body>
    <?php include 'partes/header.php' ?>
    <div class="row justify-content-center">
        <img src="<?php echo $plato["Foto"];?>" alt="">
    </div>
    <div class="row fs-1 justify-content-center py-2 ">Introducción
    
    </div>
    <div class="row justify-content-center py-2 ">Items</div>
    <div class="row justify-content-center py-2 ">Ingredientes</div>
    <div class="row justify-content-center py-2 ">Pasos</div>
</body>
</html>