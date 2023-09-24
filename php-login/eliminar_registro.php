<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../php/style.css">
    <link rel="icon" href="../imagenes/icono.png">
    <title>Codigo Azul</title>
</head>
<body>
<?php
include 'database.php';

if(isset($_POST['ID_Paciente']) && is_numeric($_POST['ID_Paciente'])) {
    $id = $_POST['ID_Paciente'];
    $sql = "DELETE FROM pacientes WHERE ID_Paciente = :id";
    $stmt = $conn->prepare($sql);
    $stmt->bindParam(':id', $id, PDO::PARAM_INT);
    
    if($stmt->execute()) {
        echo "Registro eliminado exitosamente.";
    } else {
        echo "Error al eliminar el registro.";
    }
} else {
    echo "ID de registro no válido";
}

$conn = null; // 
?>
</body>
</html>
