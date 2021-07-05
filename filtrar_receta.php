<?php
    include 'partes/conexion.php';
    $sentencia_ingrediente = "SELECT * FROM ingrediente";
    $sentencia=$db->query($sentencia_ingrediente);
    $ingrediente= $sentencia->fetchAll();
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
    
    

    <div class="w-100 mr-0 ml-0 pr-3 pl-3 pt-3" style="background-color:#1e1e1e">
            <h2><a asp-action="Create" style="color:white">Filtrar Ingredientes</a></h2>   <!--Poner el metodo de accion para create-->
            <h4 style="color:white;">
                Buscar<input class="form-control" id="myInput" type="text" placeholder="Search..." />
                <br />
            </h4>
            <table class="table-striped table-dark table-bordered" style="width:80%;margin-left:auto;margin-right:auto">
                <thead>
                    <tr>
                    <th scope="col" style="text-align:center;">Ingrediente</th>
                    <th scope="col"style="text-align:center;">Imagen</th>
                    <th scope="col"style="text-align:center;">Añadir Ingrediente</th>
                    </tr>
                </thead>
                <tbody id="myTable">
                    <form action="procesar_filtrar_receta.php" method="get">
                    <?php foreach($ingrediente as $i){ ?>
                    <tr>
                        <td style="text-align:center;"><?php echo $i["Nombre"]?></td>
                        <td style="text-align:center;"><img style="width:50px "src="<?php echo $i["Foto"]; ?>" class="alto card-img-top " alt="..."></td>
                        
                        <td style="text-align:center;">  
                                <div class="form-check">
                                <input class="form-check-input" type="checkbox" name="<?php echo $i["IdIngrediente"] ?>" value="<?php echo $i["IdIngrediente"] ?>" id="defaultCheck1">
                                <label class="form-check-label" for="defaultCheck1">
                                    Seleccione este Ingrediente
                                </label>
                                </div> 
                        </td>
                    </tr>
                    <?php }?> 
                        <button type="submit">Filtrar</button>

                    </form>
                </tbody>

            </table>
    </div>   
    
    <?php include 'partes/footer.php'?>

</body>
</html>

<script>
    $(document).ready(function () {
        $("#myInput").on("keyup", function () {
            var value = $(this).val().toLowerCase();


            $("#myTable tr").filter(function () {
                $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
            });
        });
    });
</script>



