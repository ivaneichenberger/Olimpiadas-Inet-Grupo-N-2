<?php
include 'database.php';

if(isset($_GET['ID_Paciente']) && is_numeric($_GET['ID_Paciente'])) {
    $id = $_GET['ID_Paciente'];
    $sql = "SELECT * FROM pacientes WHERE ID_Paciente = :id";
    $stmt = $conn->prepare($sql);
    $stmt->bindParam(':id', $id, PDO::PARAM_INT);
    $stmt->execute();

    $row = $stmt->fetch(PDO::FETCH_ASSOC);

    if($row) {
        echo "<table border='1'>
        <tr>
            <th>ID Paciente</th>
            <th>Nombre</th>
            <th>Apellido</th>
            <th>Fecha de Nacimiento</th>
            <th>Género</th>
            <th>Teléfono</th>
            <th>Información Médica</th>
            <th>ID Doctor</th>
            <th>DNI</th>
            <th>ELIMINAR</th>
        </tr>";

echo "<tr>
        <td>" . $row["ID_Paciente"]. "</td>
        <td>" . $row["Nombre"]. "</td>
        <td>" . $row["Apellido"]. "</td>
        <td>" . $row["Fecha_Nacimiento"]. "</td>
        <td>" . $row["Genero"]. "</td>
        <td>" . $row["Telefono"]. "</td>
        <td>" . $row["Info_Medica"]. "</td>
        <td>" . $row["ID_Doctor"]. "</td>
        <td>" . $row["DNI"]. "</td> 
        <td><a href='../php-login/eliminar_registro.php?ID_Paciente=".$row["ID_Paciente"]."'>Eliminar</a></td>
      </tr>";

echo "</table>";
    } else {
        echo "Registro no encontrado";
    }
} else {
    echo "ID de registro no válido";
}


$conn = null; 
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
</body>
</html>
