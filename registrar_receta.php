<?php
    include 'partes/conexion.php';
    $sentencia_categoria = "SELECT * FROM categoria";
    $sentencia=$db->query($sentencia_categoria);
    $categoria= $sentencia->fetchAll();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registrar ingrediente</title>
    <link rel="shortcut icon" href="imagen/favicon.png">
    <link rel="stylesheet" href="hojaestilo/estilodepagina.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

</head>
<body>
    <?php include 'partes/header.php'?>
    <div class="contenedor">
        <div class="izquierda pt-3 pb-3">
            <p class="titulo">Registre la Receta</p>
            <p class="t2">Necesitamos conocer cierta información de la nueva receta.</p>
            <p class="t3">Para esto, complete el siguiente formulario:</p>
        </div>
        <div class="derecha pt-3 pb-3">
            <form action="procesar_receta.php" method="post"enctype="multipart/form-data">
                <div class="form-group">
                    <label for="Nombre">Nombre*</label>
                    <input type="text" class="form-control" id="Nombre" name="Nombre" placeholder="Ejemplo: Arroz con mariscos" required>
                </div>
                <div class="form-group">
                    <label for="Descripcion">Descripción*</label>
                    <textarea class="form-control" name="Descripcion" id="Descripcion" cols="30" rows="10" placeholder="Ingrese una descripción corta acerca de la receta, algo breve con lo que se pueda identificar esta receta"required></textarea>
                </div>
                <div class="form-group">
                    <label for="Duracion">Duración* (en minutos)</label>
                    <input type="number" class="form-control" id="Duracion" name="Duracion" placeholder="Ingrese solo la duración en minutos, ejemplo: 60 " required>
                </div>
                <div class="form-group">
                    <label for="Dificultad">Dificultad* </label>
                    <select class="form-control" aria-label="Default select example" name="Dificultad">
                        <option selected>Seleccione</option>
                        <option value="facil">Facil</option>
                        <option value="intermedio">Intermedio</option>
                        <option value="dificil">Dificil</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="Categoria">Categoria* </label>
                    <select class="form-control" aria-label="Default select example" name="IdCategoria">
                        <option selected>Seleccione</option>
                        <?php foreach($categoria as $c) { ?>
                        <option value="<?php echo $c["IdCategoria"]?>"><?php echo $c["Nombre"]?></option>
                        <?php }?>
                    </select>
                </div>
                <div class="form-group">
                    <label for="Pasos">Pasos*</label>
                    <textarea class="form-control" name="Pasos" id="Pasos" cols="30" rows="10" placeholder="Ingrese la serie de pasos necesarios para realizar la receta."required></textarea>
                </div>
                <div class="form-group">
                    <label for="exampleFormControlFile1">Ingrese una imagen referencial* </label>
                    <br/>
                    <input type="file" name="Imagen" class="form-control-file" id="Imagen" accept="image/*" required hidden="hidden">
                    <button type="button" id="custom-button">Escoja un archivo</button>
                    <span id="custom-text">Aún no ha seleccionado</span>
                    <script type="text/javascript">
                        const realFileBtn = document.getElementById("Imagen");
                        const customBtn = document.getElementById("custom-button");
                        const customTxt = document.getElementById("custom-text");

                        customBtn.addEventListener("click", function() {
                        realFileBtn.click();
                        });

                        realFileBtn.addEventListener("change", function() {
                        if (realFileBtn.value) {
                            customTxt.innerHTML = realFileBtn.value.match(
                            /[\/\\]([\w\d\s\.\-\(\)]+)$/
                            )[1];
                        } else {
                            customTxt.innerHTML = "Aún no ha seleccionado";
                        }
                        });
                    </script>
                </div>
                <button type="submit" class="btn btn-primary p-2">Registrar Receta</button>
            </form>
        </div>
    </div>
    
    <?php include 'partes/footer.php'?>
</body>
</html>
