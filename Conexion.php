<?php

function conectar()
{ 
	$link=mysqli_connect('localhost','root','') or die('ERROR al conectar');
 	mysqli_select_db($link,'dai') or die("ERROR de BD");
  	return $link;
}

	conectar();


	$sql = "insert into "
 ?>

