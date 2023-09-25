<?php
    include '../php-login/database.php';

    $sql = "SELECT * FROM registro_eventos";
    $stmt = $conn->prepare($sql);
    $stmt->execute();
    $eventos = $stmt->fetchAll();

    if (count($eventos) > 0) {
        echo '<table border="1">';
        echo '<tr><th>ID Evento</th><th>Tipo de Evento</th><th>Fecha y Hora del Evento</th><th>ID Paciente</th> <th>Detalles</th> </tr>';
        foreach ($eventos as $evento) {
            echo '<tr>';
            echo '<td>' . $evento['ID_Evento'] . '</td>'
            echo '<td>' . $evento['Tipo_Evento'] . '</td>'
            echo '<td>' . $evento['Fecha_Hora_Evento'] . '</td>'
            echo '<td>' . $evento['ID_Paciente'] . '</td>'
            echo '<td><a href='Pantalla8.php?ID_Paciente=".$row["ID_Paciente"]."'>Ver Detalle</a></td>'
            echo '</tr>';
        }
        echo '</table>';
    } else {
        echo "No se encontraron eventos registrados.";
    }

    $conn = null;
    ?>