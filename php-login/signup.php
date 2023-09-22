<?php

  require 'database.php';

  $message = '';

  if (!empty($_POST['email']) && !empty($_POST['password'])) {
    $sql = "INSERT INTO users (email, password) VALUES (:email, :password)";
    $stmt = $conn->prepare($sql);
    $stmt->bindParam(':email', $_POST['email']);
    $password = password_hash($_POST['password'], PASSWORD_BCRYPT);
    $stmt->bindParam(':password', $password);

    if ($stmt->execute()) {
      header("Location: ../php/Pantalla7.php");;
    } else {
      $message = 'Hubo un problema para crear la cuenta';
    }
  }
?>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Registro</title>
    <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
    <link rel="stylesheet" href="../css/style.css">
    <link rel="icon" href="../imagenes/icono.png">
  </head>
  <body>

    <?php require 'partials/header.php' ?>

    <?php if(!empty($message)): ?>
      <p> <?= $message ?></p>
    <?php endif; ?>

    <h1>Registrar paciente</h1>
    <span>or <a href="index.php">Volver atras</a></span>

    <form action="signup.php" method="POST">
      <input name="email" type="text" placeholder="nombre de usuario">
      <input name="password" type="password" placeholder="contraseña">
      <input name="confirm_password" type="password" placeholder="repita su contraseña">
      <input type="submit" value="Submit">
    </form>

  </body>
</html>
