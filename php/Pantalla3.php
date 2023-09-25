<!DOCTYPE html>
<html>
<head>
    <title>Formulario de Registro de Eventos</title>
    <link rel="stylesheet" href="../php/style.css">
    <link rel="icon" href="../imagenes/icono.png">
</head>
<body>
    <form action="procesar_registro.php" method="post">
    <label for="id_paciente">ID del Paciente:</label>
        <input type="number" id="id_paciente" name="ID_Paciente" required>
        <input type="submit" value="Registrar Evento">
    </form>
</body>
</html>
