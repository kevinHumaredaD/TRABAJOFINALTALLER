<?php
    include 'partes/conexion.php';
    $sentencia_ingrediente = "SELECT * FROM ingrediente";
    $sentencia=$db->query($sentencia_ingrediente);
    $ingrediente= $sentencia->fetchAll();
    $idPlato= $_GET["id"];
    $sentencia_plato = "SELECT * FROM plato where IdPlato = $idPlato";
    $sentencia=$db->query($sentencia_plato);
    $plato= $sentencia->fetch();
    $sentencia_platoingrediente = "SELECT * FROM platoingrediente where IdPlato = $idPlato";
    $sentencia=$db->query($sentencia_platoingrediente);
    $platoingrediente= $sentencia->fetchAll();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Documentos</title>
    <link rel="stylesheet" href="hojaestilo/estilodepagina.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
</head>
<body>
    <?php include 'partes/header.php'?>
    
    <div style="background-color:#1e1e1e;">
        <br/>
        <h1 style="text-align:center; margin:0px;color:white;" class="pt-2">Ingredientes existentes en el platillo <?php echo $plato["NombrePlato"]?></h1>  
        <br/>
        <?php if(count($platoingrediente) == 0) {?>
            <br/>
            <p style="text-align:center; color:white; margin-bottom:0px " >No existen ingredientes para esta receta.</p>
                 
        <?php } else { ?> 
            <table class="table-striped table-dark table-bordered" style="width:80%;margin-left:auto;margin-right:auto">
                <thead>
                    <tr>
                    <th scope="col" style="text-align:center;">Nombre</th>
                    <th scope="col" style="text-align:center;">Foto</th>
                    <th scope="col" style="text-align:center;">Tipo</th>
                    <th scope="col" style="text-align:center;">Cantidad</th>
                    </tr>
                </thead>
                <tbody>
                    <?php foreach($platoingrediente as $pi) {?>
                    <tr>
                        <?php 
                            $idpi = $pi["IdIngrediente"];
                            $sentencia_ingrediente_existe = "SELECT * FROM ingrediente where IdIngrediente = $idpi";
                            $sentencia_ie=$db->query($sentencia_ingrediente_existe);
                            $i_existente= $sentencia_ie->fetch();
                        ?>
                        <td style="text-align:center;"><?php echo $i_existente["Nombre"]?></td>
                        <td style="text-align:center;"><img style="width:50px " src="<?php echo $i_existente["Foto"]; ?>" class="alto card-img-top " alt="..."></td>
                        <td style="text-align:center;"><?php echo $i_existente["Tipo"]?></td>
                        <td style="text-align:center;"><?php echo $pi["Cantidad"]?></td>
                    </tr>
                    <?php }?> 
                </tbody>
            </table>
            <div style="margin-left:auto;margin-right:auto;width:30%;">
                <a class="btn btn-outline-success" href="index.php" role="button">Terminar Registro</a>
            </div>
        <?php } ?> 
        <h1 style="text-align:center; margin:0px;color:white;" class="pt-2">Seleccionar Ingrediente para <?php echo $plato["NombrePlato"]?></h1>
    </div>

    <div class="w-100 mr-0 ml-0 pr-3 pl-3 pt-3" style="background-color:#1e1e1e">
        
            <table class="table-striped table-dark table-bordered" style="width:80%;margin-left:auto;margin-right:auto">
                <thead>
                    <tr>
                    <th scope="col" style="text-align:center;">Nombre</th>
                    <th scope="col"style="text-align:center;">Foto</th>
                    <th scope="col" style="text-align:center;">Tipo</th>
                    <th scope="col"style="text-align:center;">Añadir Ingrediente</th>
                    </tr>
                </thead>
                <tbody>
                    <?php foreach($ingrediente as $i){ ?>
                    <tr>
                        <td style="text-align:center;"><?php echo $i["Nombre"]?></td>
                        <td style="text-align:center;"><img style="width:50px "src="<?php echo $i["Foto"]; ?>" class="alto card-img-top " alt="..."></td>
                        <td style="text-align:center;"><?php echo $i["Tipo"]?></td>
                        <td style="text-align:center;">
                            <div>
                                <form action="procesar_ingrediente.php" method="post">
                                    <input type="hidden" name="IdPlato" value="<?php echo $idPlato; ?>">
                                    <input type="hidden" name="IdIngrediente" value="<?php echo $i["IdIngrediente"]; ?>">
                                    <input type="float" name="Cantidad" id="" required>
                                    <button type="submit"class="btn btn-primary " >Añadir Ingrediente</button>
                                </form>                     
                            </div> 
                        </td>
                    </tr>
                    <?php }?> 
                </tbody>
            </table>
    </div>    
    
    <?php include 'partes/footer.php'?>
</body>
</html>