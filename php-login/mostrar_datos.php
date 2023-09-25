<?php
include 'database.php';
$conn->exec("set names utf8");
$sql = "SELECT * FROM pacientes";
$result = $conn->query($sql);

if ($result->rowCount() > 0) {
    echo "<table>
            <tr>
                <th>ID</th>
                <th>Nombre</th>
                <th>Detalles</th>
            </tr>";
    while($row = $result->fetch(PDO::FETCH_ASSOC)) {
        echo "<tr>
                <td>" . $row["ID_Paciente"]. "</td>
                <td>" . $row["Nombre"]. "</td>

                
                <td><a href='../php/Pantalla8.php?ID_Paciente=".$row["ID_Paciente"]."'>Ver Detalle</a></td>
              </tr>";
    }
    echo "</table>";
} else {
    echo "0 resultados";
}

$conn = null; 
