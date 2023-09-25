<!DOCTYPE html>
<html>
<head>
    <title>Mostrar Eventos</title>
    <link rel="stylesheet" href="../php/style.css">
    <link rel="icon" href="../imagenes/icono.png">
</head>
<body>
    <a href="../php-login/index.php">Atras</a>
    <h1>Eventos Registrados</h1>

    <?php
    include '../php-login/database.php';

    $sql = "SELECT * FROM registro_eventos";
    $stmt = $conn->prepare($sql);
    $stmt->execute();
    $eventos = $stmt->fetchAll();

    if (count($eventos) > 0) {
        echo '<table border="1">';
        echo '<tr><th>ID Evento</th><th>Tipo de Evento</th><th>Fecha y Hora del Evento</th><th>ID Paciente</th></tr>';
        foreach ($eventos as $evento) {
            echo '<tr>';
            echo '<td>' . $evento['ID_Evento'] . '</td>';
            echo '<td>' . $evento['Tipo_Evento'] . '</td>';
            echo '<td>' . $evento['Fecha_Hora_Evento'] . '</td>';
            echo '<td>' . $evento['ID_Paciente'] . '</td>';
            echo '</tr>';
            
        }
        echo '</table>';
    } else {
        echo "No se encontraron eventos registrados.";
    }

    $conn = null;
    ?>
</body>
</html>
