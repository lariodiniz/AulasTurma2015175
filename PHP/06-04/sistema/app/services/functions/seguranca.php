<?php 
	session_start();
	
	
	function valida(){
		
	}
	
	
	function expulsa(){
	
		unset($_SESSION['nome'], $_SESSION['token'], $_SESSION['id']);
		
		session_destroy();
		
		header("location: ./login");
		
	}
	

?>