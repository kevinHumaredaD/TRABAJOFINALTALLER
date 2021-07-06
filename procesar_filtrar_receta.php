<?php
include 'partes/conexion.php';
$db->query("TRUNCATE TABLE filtro");
$text = "";
for ($i = 0; $i <= 68; $i++) {
    if(isset($_GET["$i"])){
        $var = $_GET["$i"];
            $text .= " IdIngrediente = '$var' or";
        }
}
$sentencia_plato_ingrediente = "SELECT distinct IdIngrediente FROM platoingrediente where ".$text." IdIngrediente = '100' ";
$sentencia=$db->query($sentencia_plato_ingrediente);
$plato_ingrediente= $sentencia->fetchAll();
for ($i = 1; $i <= 40; $i++) {

    $sentencia_plato = "SELECT distinct IdIngrediente FROM platoingrediente where IdPlato ='$i' ";
    $sentencia=$db->query($sentencia_plato);
    $plato= $sentencia->fetchAll();
    $numero = 0;
    
    foreach ($plato as $p) {
        foreach($plato_ingrediente as $pi){
            if($pi["IdIngrediente"] == $p["IdIngrediente"]){
                $numero++;
            }
        }
    }
    if($numero == count($plato_ingrediente) && count($plato_ingrediente) != 0 ){
        $db->query("INSERT INTO filtro VALUES ('$i')");
    }
}

$sentencia_filtro = "SELECT * FROM filtro f inner join plato p on p.IdPlato = f.IdPlato ";
$sentencia=$db->query($sentencia_filtro);
$filtro= $sentencia->fetchAll();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="hojaestilo/estilodepagina.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
</head>
<body>
    <?php include 'partes/header.php'?>
    <div style="background-color:#1e1e1e;">
        <h1 style="text-align:center; margin:0px;color:white;" class="pt-2">Estas son las Recetas Filtradas</h1>
        <?php if(count($filtro) == 0) {?>
            <br/>
            <p style="text-align:center; color:white; margin-bottom:0px " >No existen platillos registrados hasta el momento</p>     
        <?php }?> 
    </div>

    <div class="row row-cols-1 row-cols-md-4 w-100 mr-0 ml-0 pr-3 pl-3 pt-3" style="background-color:#1e1e1e">
        
        <?php foreach($filtro as $f){ ?>
            <div class="col mb-4">
                <div class="card h-100">
                    <img src="<?php echo $f["Foto"]; ?>" class="alto card-img-top " alt="...">
                    <div class="card-body" style="text-align:center">
                        <h5 class="card-title"><?php echo $f["NombrePlato"]; ?></h5>
                        <div class="pl-4 pr-4"style="display: flex; justify-content:space-between">
                            <p class="card-text">Duracion: </p>
                            <p class="card-text"><?php echo $f["Duracion"]; ?> minutos</p>                        
                        </div>
                        <div class="pl-4 pr-4"style="display: flex; justify-content:space-between">
                            <p class="card-text">Dificultad: </p>
                            <p class="card-text"><?php echo $f["Dificultad"]; ?></p>                        
                        </div>  
                        <div>
                            <form action="visualizar_receta.php" method="get">
                                <input type="hidden" name="IdPlato" value="<?php echo $f["IdPlato"]; ?>">
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

