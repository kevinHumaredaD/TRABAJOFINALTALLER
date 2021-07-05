<?php
    include 'partes/conexion.php';
    $sentencia_plato = "SELECT * FROM plato";
    $sentencia=$db->query($sentencia_plato);
    $plato= $sentencia->fetchAll();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="imagen/favicon.png">
    <title>Home</title>
    <link rel="stylesheet" href="hojaestilo/estilodepagina.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
</head>
<body>
    <?php include 'partes/header.php'?>
    <div style="background-color:#1e1e1e;">
        <h1 style="text-align:center; margin:0px;color:white;" class="pt-2">Bienvenido</h1>
        <?php if(isset($_GET["error"])) {?>
            <br/>
            <div class="alert alert-danger ml-3 mr-3" style="text-align:center" role="alert">
                <strong>El correo que acaba de ingresar no se encuentra en la base de datos, intentelo nuevamente</strong> 
            </div>    
        <?php }?> 
        <?php if(isset($_GET["exito"])) {?>
            <br/>
            <div class="alert alert-success ml-3 mr-3" style="text-align:center" role="alert">
                <strong>Nos alegra que se encuentre en casa sano y salvo, procedimos a eliminar su nombre de la lista</strong> 
            </div>    
        <?php }?> 
        <?php if(count($plato) == 0) {?>
            <br/>
            <p style="text-align:center; color:white; margin-bottom:0px " >No existen platillos registrados hasta el momento</p>     
        <?php }?> 
    </div>

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