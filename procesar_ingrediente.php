<?php
    $IdPlato = $_POST["IdPlato"];
    $IdIngrediente = $_POST["IdIngrediente"];
    $Cantidad = $_POST["Cantidad"];
    include 'partes/conexion.php';
    $db->query("INSERT INTO platoingrediente VALUES (NULL, '$Cantidad', '$IdPlato','$IdIngrediente')");
?>