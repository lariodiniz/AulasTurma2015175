<?php

if($_SERVER['REQUEST_METHOD'] == "POST") {
	$sbot = (string) trim(addslashes(strip_tags(filter_input(INPUT_POST, "sbot", FILTER_SANITIZE_STRING))));
	
	if(!empty($sbot)) {
		die("Acesso negado");
	}
	else {	
	
		define("DS", "/");
		define("BASE_PATH", str_replace("\\", DS, dirname(__FILE__)));
		
		$get = (string) trim(addslashes(strip_tags(filter_input(INPUT_GET, "acao", FILTER_SANITIZE_STRING))));
		
		$allow = array("login", "painel", "cadastrarUsuario");
				
		if(in_array($get, $allow))
		{
			require_once BASE_PATH . DS . "functions". DS ."functions.php";
		}
		else
		{			
			die("Acesso negado");			
		}
	}
}
else
{
	die("Acesso negado");
}
	
	
?>








