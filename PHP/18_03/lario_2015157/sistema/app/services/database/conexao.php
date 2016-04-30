<?php
	
	
	$dsn = "mysql:dbname=empresa_2015175; host=localhost";
	$user = "root";
	$pass = "";
	
	$con = new PDO($dsn, $user, $pass);
	
	$sql = "SELECT * FROM usuario";	
	$stmt = $con->query($sql);
	$result = $stmt->fetchAll(PDO::FETCH_ASSOC);
	
	echo "<pre>";
	print_r($resul);
	
	
?>