<?php 
/**
* 
*/
class Perfil 
{
	public function RetunrValue($conn)
	{
		$stmt = $conn->query("SELECT * FROM perfil"); 
        foreach ($stmt as $key => $value) 
        {
	       echo "el id ".$value["id_perfil"]."  =  ".$value["cargo"]."<br>";
         }
	}
}
$hosla = "hola perfil.php"




 ?>