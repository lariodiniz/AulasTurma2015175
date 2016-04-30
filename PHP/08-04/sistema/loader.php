<?php
	
	$get = (string) trim(addslashes(strip_tags(filter_input(INPUT_GET, "param", FILTER_SANITIZE_STRING))));
	
	$allow = array("login", "painel", "cadastrarUsuario", "buscarUsuario");
	
	
	if(in_array($get, $allow))
	{
		
		$restritas = ["painel", "cadastrarUsuario", "buscarUsuario"];
		
		if(in_array($get, $restritas))
		{
			include_once BASE_PATH . "/app/services/functions/seguranca.php";
			valida();
		}
		
		$url = BASE_PATH . DS . "app" . DS . "views" . DS .  $get . ".php";
		$title = ucfirst($get);
		
		$menu = BASE_PATH . DS . "app" . DS . "views" . DS . "menu.html";
		
		$menu = ($get == "login") ? null : file_get_contents($menu);	
	}
	else
	{
		
		$url = BASE_PATH . DS . "app" . DS . "views" . DS . "404.php";
		
	}
	
	require_once BASE_PATH . DS . "app" . DS . "views" . DS . "template.php";

?>







