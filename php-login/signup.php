<?php

require 'database.php';

$message = '';

if (!empty($_POST['nombre']) && !empty($_POST['apellido']) && !empty($_POST['fecha_nacimiento']) && !empty($_POST['genero']) && !empty($_POST['telefono']) && !empty($_POST['info_medica']) && !empty($_POST['ID_Doctor']) && !empty($_POST['DNI'])) {
    $sql = "INSERT INTO pacientes (Nombre, Apellido, Fecha_Nacimiento, Genero, Telefono, Info_Medica, ID_Doctor, DNI) VALUES (:nombre, :apellido, :fecha_nacimiento, :genero, :telefono, :info_medica, :ID_Doctor, :DNI)";
    $stmt = $conn->prepare($sql);
    $stmt->bindParam(':nombre', $_POST['nombre']);
    $stmt->bindParam(':apellido', $_POST['apellido']);
    $stmt->bindParam(':fecha_nacimiento', $_POST['fecha_nacimiento']);
    $stmt->bindParam(':genero', $_POST['genero']);
    $stmt->bindParam(':telefono', $_POST['telefono']);
    $stmt->bindParam(':info_medica', $_POST['info_medica']);
    $stmt->bindParam(':ID_Doctor', $_POST['ID_Doctor']);
    $stmt->bindParam(':DNI', $_POST['DNI']);

    if ($stmt->execute()) {
        header("Location: ../php/Pantalla7.php");
    } else {
        $message = 'Hubo un problema al registrar al paciente';
    }
} else {
    $message = 'Por favor, complete todos los campos.';
}
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Registro de Paciente</title>
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
    <input name="nombre" type="text" placeholder="Nombre">
    <input name="apellido" type="text" placeholder="Apellido">
    <input name="fecha_nacimiento" type="date" placeholder="Fecha de Nacimiento">
    <input name="genero" type="text" placeholder="Genero">
    <input name="telefono" type="text" placeholder="Telefono">
    <input name="info_medica" type="text" placeholder="Información Médica">
    <input name="ID_Doctor" type="text" placeholder="ID del Doctor">
    <input name="DNI" type="text" placeholder="DNI">
    <input type="submit" value="Registrar">
</form>

</body>
</html>
