<?php
    include 'partes/conexion.php';
    $idCategoria= $_GET["id"];
    $sentencia_plato = "SELECT * FROM plato where IdCategoria = $idCategoria";
    $sentencia=$db->query($sentencia_plato);
    $plato= $sentencia->fetchAll();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Platos</title>
    <link rel="shortcut icon" href="imagen/favicon.png">
    <link rel="stylesheet" href="hojaestilo/estilodepagina.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
</head>
<body>
    <?php include 'partes/header.php'?>
    <div class="row row-cols-1 row-cols-md-4 w-100 mr-0 ml-0 pr-3 pl-3 pt-3" style="background-color:#1e1e1e">
        
        <?php foreach($plato as $p){ ?>
            <div class="col mb-4">
                <div class="card h-100">
                    <img src="<?php echo $p["Foto"]; ?>" class="alto card-img-top " alt="...">
                    <div class="card-body" style="text-align:center">
                        <h5 class="card-title"><?php echo $p["NombrePlato"]; ?></h5>
                        <div class="pl-4 pr-4"style="display: flex; justify-content:space-between">
                            <p class="card-text">Duracion: </p>
                            <p class="card-text"><?php echo $p["Duracion"]; ?> minutos</p>                        
                        </div>
                        <div class="pl-4 pr-4"style="display: flex; justify-content:space-between">
                            <p class="card-text">Dificultad: </p>
                            <p class="card-text"><?php echo $p["Dificultad"]; ?></p>                        
                        </div>  
                        <div>
                            <form action="visualizar_receta.php" method="get">
                                <input type="hidden" name="IdPlato" value="<?php echo $p["IdPlato"]; ?>">
                                <button type="submit"class="btn btn-primary pl-5 pr-5" >Ver Receta</button>
                            </form>                      
                        </div>  
                    </div>
                </div>
                
            </div>
            
        <?php }?>
    </div> 
    <?php include 'partes/footer.php'?>   
</body>
</html>