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
    <link rel="shortcut icon" href="imagen/favicon.png">
    <title>Categorias</title>
    <link rel="stylesheet" href="hojaestilo/estilodepagina.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
</head>
<body>
<?php include 'partes/header.php'?>
<div class="row row-cols-1 row-cols-md-4 w-100 mr-0 ml-0 pr-3 pl-3 pt-3" style="background-color:#1e1e1e">
    <?php foreach($categoria as $c){ ?>
            <div class="col mb-4">
                <div class="card h-100">
                <div class="card-body pt-5 pb-5" style="text-align:center; 
                 background: linear-gradient(
                    rgba(0, 0, 0, 0.2),
                    rgba(0, 0, 0, 0.2)
                ),url(<?php echo $c["Foto"]?>) center;">
                    <form action="procesar_categoria.php" method="post">
                            <input type="hidden" name="IdCategoria" value="<?php echo $c["IdCategoria"]; ?>">
                            <button type="submit" style="border:1px solid transparent; background-color: transparent; color:white; font-weight:bold"><?php echo $c["Nombre"]; ?></button>
                    </form> 
                </div>     
                </div>
            </div>
    <?php }?>
</div>     
<?php include 'partes/footer.php'?>   
</body>
</html>l