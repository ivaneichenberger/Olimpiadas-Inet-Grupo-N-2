<?php
  session_start();

  require 'database.php';

  if (isset($_SESSION['user_id'])) {
    $records = $conn->prepare('SELECT id, email, password FROM users WHERE id = :id');
    $records->bindParam(':id', $_SESSION['user_id']);
    $records->execute();
    $results = $records->fetch(PDO::FETCH_ASSOC);

    $user = null;

    if (count($results) > 0) {
      $user = $results;
    }
  }
?>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Codigo Azul</title>
    <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
    <link rel="stylesheet" href="../php/style.css">
    <link rel="icon" href="../imagenes/icono.png">
  </head>
  <body>
    <?php require 'partials/header.php' ?>

    <?php if(!empty($user)): ?>
      <br> Bienvenido. <?= $user['email']; ?>
      <br>Logeado correctamente
      <h1>tu codigo de usuario es:"x"</h1>
<div class="centrado">
   <div class="azul-crear">
       <li class="boton"><a href="../php/Pantalla3.php">Codigo Azul</a></li>
   </div>
   <div class="azul-crear">
       <li class="boton"><a href="signup.php">Crear Paciente</a></li>
   </div>
</div>
<div class="centrado">
   <div class="emer-creados">
       <li class="boton"><a href="../php/Pantalla5.php">Pacientes en emergencia</a></li>
   </div>
   <div class="emer-creados">
       <li class="boton"><a href="../php/Pantalla6.php">Pacientes Creados</a></li>
   </div>
</div>
      <a href="logout.php">
        Salir
      </a>
    <?php else: ?>
      <h1>Iniciar sesion</h1>

      <a href="login.php">Iniciar Sesion</a>
    <?php endif; ?>
  </body>
</html>
