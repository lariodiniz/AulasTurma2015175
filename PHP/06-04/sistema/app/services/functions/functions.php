<?php

	require_once BASE_PATH . DS . "database" . DS . "conexao.php";

	switch($get){
		case "login":
			login($con);
		break;
		case "cadastrarUsuario":
			cadastrarUsuario($con);
		break;	
	}
	
	function login($con)
	{
		
		$email = trim(strip_tags(addslashes(filter_input(INPUT_POST, "email"))));
		$senha = trim(strip_tags(addslashes(filter_input(INPUT_POST, "senha"))));
		$sql = "SELECT * FROM usuario WHERE email = ? AND senha = ?";
		$stmt = $con->prepare($sql);
		$stmt->bindValue(1, $email);
		$stmt->bindValue(2, sha1($senha));
		$resul = $stmt->execute();
		
		if($stmt->rowCount() > 0){
			$dados = $stmt->fetch(PDO::FETCH_ASSOC);
			
			session_start();
			$_SESSION['nome'] = $dados['nome'];
			$_SESSION['token'] = md5($dados['email']);
			$_SESSION['id'] = $dados['id'];
			$info = array (
				"erro" => false
			);
		}
		else
		{
			$info = array(
				"erro" => true,
				"mensagem" => "Verifique email e/ou senha."
			);
		}
		retorno($info);
	}
	function cadastrarUsuario($con)
	{
		$dir = explode("/",BASE_PATH); 
		$dir = $dir[0]."/".$dir[1]."/".$dir[2]."/".$dir[3]."/".$dir[4];		
		$dir .= "/assets/imagens/usuarios/";
		
		echo $dir;
		#$imagem = $_FILES['arquivo];
		#$ext = $imagem['type'];
		$ext = @end(explode("/", $_FILES['arquivo']['type']));
		$tmp_name = $_FILES['arquivo']['tmp_name'];
		$nomeImg = md5(date("d/m/Y H:i:s").$_POST['email']);
		
		$nome = trim(addslashes(strip_tags(filter_input(INPUT_POST,'nome'))));
		$email = trim(addslashes(strip_tags(filter_input(INPUT_POST,'email'))));
		$senha = trim(addslashes(strip_tags(filter_input(INPUT_POST,'senha'))));
		$senha = sha1($senha);
		
		$imagem = $nomeImg.".".$ext;
		
		$imagem = (empty($_FILES)) ? "avatar.png" : $imagem;
		
		$sql = "INSERT INTO usuario (nome,email, senha, imagem) VALUES(?,?,?,?)";
		
		$stmt = $con->prepare($sql);
		$stmt->bindValue(1, $nome);
		$stmt->bindValue(2, $email);
		$stmt->bindValue(3, $senha);
		$stmt->bindValue(4, $imagem);
		$resul = $stmt->execute();
		
		retorno($resul);
		
		
		move_uploaded_file($tmp_name, $dir.$nomeImg.".".$ext);

	}
	function retorno($array)
	{
		header("Content-Type: application/json");
		echo json_encode($array);
	}
?>