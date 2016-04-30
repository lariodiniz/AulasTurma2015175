<?php
	
	#echo $get = (string) trim(addslashes(strip_tags($_GET['param'])));
	$get = (string) trim(addslashes(strip_tags(filter_input(INPUT_GET, "param", FILTER_SANITIZE_STRING))));
	
	$allow = array("login", "painel");
	
	if(in_array($get, $allow))
	{
		$url = BASE_PATH . DS . "app" . DS . "views" . DS .  $get . ".php";
	}
	else
	{
		
		$url = BASE_PATH . DS . "app" . DS . "views" . DS . "404.php";
		
	}
	
	require_once BASE_PATH . DS . "app" . DS . "views" . DS . "template.php";

?>







