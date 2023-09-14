<?php
// Datos de conexión a la base de datos
$servername = "DESKTOP-N7B9PQ8\SQLSAYCO";
$username = "sa";
$password = "saycorecuperacion2";
$dbname = "SaycoRecuperacion";

$conn = new mysqli($servername, $username, $password, $dbname);

// Verifica si la conexión fue exitosa
if ($conn->connect_error) {
    die("Error de conexión a la base de datos: " . $conn->connect_error);
}

// Obtiene el número de crédito enviado desde el formulario HTML
$numeroDeCredito = $_GET["Numero_de_Credito"];

// Consulta SQL para verificar si el número de crédito existe en la base de datos
$sql = "SELECT * FROM CarteraBBVA WHERE Numero_de_Credito = '$numeroDeCredito'";
$result = $conn->query($sql);

// Verifica si se encontraron resultados
if ($result->num_rows > 0) {
    // El número de crédito existe en la base de datos, redirige a la segunda pantalla
    header("Location: index2.html");
    exit(); // Asegúrate de salir del script para evitar ejecución adicional
} else {
    // El número de crédito no existe en la base de datos, muestra un mensaje de error
    echo "El número de crédito no existe en la base de datos";
}

// Cierra la conexión a la base de datos
$conn->close();
?>