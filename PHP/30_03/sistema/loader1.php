<?php	
	$get = (string) trim(addslashes(strip_tags(filter_input(INPUT_GET, "param", FILTER_SANITIZE_STRING))));
	
	$allow = array("login", "painel");
	
	
	if(in_array($get, $allow))
	{
		switch($get)
		{
			case "painel" :
				require_once BASE_PATH . DS . "app" . DS . "views" . DS . $get . ".php";
				break;
				
			case "login" :
				require_once BASE_PATH . DS . "app" . DS . "views" . DS . $get . ".php";
					
			default :
				require_once BASE_PATH . DS . "app" . DS . "views" . DS . "home.php";
		}		
	}
	else
	{
		require_once BASE_PATH . DS . "app" . DS . "views" . DS . "home.php";
	}

?>







