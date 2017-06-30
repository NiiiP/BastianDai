<?php
$servername = "localhost";
$username = "root";
#En tu local va vacio
$password = "root";
$dbname = "dai";
$conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
$stmt = $conn->query("SELECT * FROM perfil"); 
foreach ($stmt as $key => $value) {
	echo "el id ".$value["id_perfil"]."  =  ".$value["cargo"]."<br>";
}