<?php
    $IdPlato = $_POST["IdPlato"];
    $IdIngrediente = $_POST["IdIngrediente"];
    $Cantidad = $_POST["Cantidad"];
    include 'partes/conexion.php';
    $db->query("INSERT INTO platoingrediente VALUES ('$Cantidad', '$IdPlato','$IdIngrediente')");
    header("Location:registrar_ingrediente.php?id=$IdPlato");
?>