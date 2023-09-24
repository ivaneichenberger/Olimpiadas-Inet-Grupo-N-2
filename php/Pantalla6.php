<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <link rel="icon" href="../imagenes/icono.png">
    <title>Codigo Azul</title>
</head>
<body>
    <button><a href="../php-login/index.php">Atras</a></button><br>
    <h1>TABLA DE PACIENTES CREADOS</h1> 
    <div class="column-container">
           <?php
               include '../php-login/mostrar_datos.php';
            ?>
            
    </div>
    <script src="script.js"></script>
</body>
</html>