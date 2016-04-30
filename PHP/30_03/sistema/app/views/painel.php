<?php	
	session_start();
	if(isset($_SESSION["nome"]) && !empty($_SESSION["nome"]) && !empty($_SESSION["token"]) ){
		
		echo $_SESSION["nome"];
		
	}
	else {
		unset($_SESSION["nome"], $_SESSION["token"] );
		session_destroy();
		echo "Você não esta Logado.";
	}
	
	echo $_SESSION["nome"];
	
?>