<?php
    include 'partes/conexion.php';
    $idPlato= $_GET["IdPlato"];
    $sentencia_plato = "SELECT * FROM plato where IdPlato = $idPlato";
    $sentencia=$db->query($sentencia_plato);
    $plato= $sentencia->fetch();
    $sentencia_ingrediente = "SELECT i.foto, i.nombre, pli.cantidad, i.tipo FROM Ingrediente i
    JOIN  platoingrediente pli 
    ON i.idingrediente = pli.idingrediente JOIN plato p ON p.IdPlato = pli.IdPlato where pli.IdPlato=$idPlato ";
    $sentencia_i=$db->query($sentencia_ingrediente);
    $ingrediente= $sentencia_i->fetchAll();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="hojaestilo/estilodepagina.css">
    <link rel="stylesheet" href="node_modules/bootstrap/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <title>Visualizar receta</title>
    <link rel="shortcut icon" href="imagen/favicon.png">
</head>
<body>
    <?php include 'partes/header.php' ?>
    <div class="row justify-content-center bg-light">
      <div class="col-6">
        <div class="row m-2 shadow bg-white position-relative overflow-hidden">
            <img class="" src="<?php echo $plato["Foto"];?>" alt="">
            <div class="row align-self-end fs-3 position-absolute d-inline" style="background: rgb(0,0,0,.3); padding: .3em">
              <h1 class="ps-4" style="color:aliceblue"><?php echo $plato["NombrePlato"];?></h1>
            </div>
        </div>
        <div class="row m-2 bg-white">
            <h2 class="text-center">Introducción</h2>
            <p class="text-center fs-5"><?php echo $plato["Descripción"];?></p>
        </div>
        <div class="row m-2 bg-white">
            <div class="col-6">
              <p class="text-center fs-5">Dificultad: <span class="fw-bold"><?php echo $plato["Dificultad"];?></span></p>
            </div>
            <div class="col-6">
              <p class="text-center fs-5">Duración: <span class="fw-bold"><?php echo $plato["Duracion"];?> minutos</span></p>
            </div>
        </div>
        <div class="row fs-3 m-2 bg-white">
          <h2 class="text-center">Ingredientes</h2>
          <?php foreach($ingrediente as $i){ ?>
            <div class="row m-1 bg-light">
              <div class="col-1 align-self-center">
                <img style="width:60px" src="<?php echo $i["foto"];?>" alt="">
              </div>
              <div class="col-11 fs-5 pl-5">
                <div class="row fw-bolder"><?php echo $i["nombre"];?></div>
                <div class="row fs-6 ">
                  <?php echo $i["cantidad"];?>
                  <?php echo $i["tipo"];?>
                </div>
              </div>
            </div>
            
          <?php } ?>
        </div>
        <div class="row fs-3 m-2 bg-white">
          <h2 class="text-center">Pasos</h2>
          <p class="text-center fs-5"><?php echo $plato["Pasos"];?></p>
        </div>
      </div>
    </div>
    <?php include 'partes/footer.php'?>
</body>
</html>