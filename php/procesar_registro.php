<?php
include '../php-login/database.php';

$tipo_evento = "Codigo Azul";
$fecha_hora_evento = date('Y-m-d H:i:s');
$id_paciente = $_POST['ID_Paciente'];

$sql = "INSERT INTO registro_eventos (Tipo_Evento, Fecha_Hora_Evento, ID_Paciente) 
        VALUES (:tipo_evento, :fecha_hora, :id_paciente)";
$stmt = $conn->prepare($sql);
$stmt->bindParam(':tipo_evento', $tipo_evento, PDO::PARAM_STR);
$stmt->bindParam(':fecha_hora', $fecha_hora_evento, PDO::PARAM_STR);
$stmt->bindParam(':id_paciente', $id_paciente, PDO::PARAM_INT);

if($stmt->execute()) {
    echo "Evento registrado exitosamente.";
    header("Location: pantalla10.php");
} else {
    echo "Error al registrar el evento.";
}

$conn = null;
?>

