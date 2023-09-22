<?php
include('database.php');


$sql = "SELECT * FROM pacientes"; 
$result = $conn->query($sql);


if ($result->num_rows > 0) {
   
    while($row = $result->fetch_assoc()) {
        echo "ID_Paciente: " . $row["ID_Paciente"]. " - Nombre: " . $row["Nombre"]. " - Apellido: " . $row["Apellido"]. " - Fecha_Nacimiento: " . $row["Fecha_Nacimiento"]. " - Genero: " . $row["Genero"]. " - Direccion: " . $row["Direccion"]. " - Telefono: " . $row["Telefono"]. " - Info_Medica: " . $row["Info_Medica"]. " - ID_Doctor: " . $row["ID_Doctor"]." <br>";
    }
} else {
    echo "0 resultados";
}

// Cierra la conexión
$conn->close();
?>
