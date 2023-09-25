<?php
include 'database.php';

$id = $_GET['ID_Paciente'];
$sql = "DELETE FROM pacientes WHERE ID_Paciente = :id";
$query = $conn ->prepare($sql);
$result = $query->execute([
    'id' => $id
]);
header('Location: ../php/pantalla9.php') 
?>