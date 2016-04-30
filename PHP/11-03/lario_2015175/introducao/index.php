<?php

header("Content-Type: text/html; charset=utf-8");
	
// comentario de uma linha

# comentario de uma linha

/*
	comentario de varias linhas
*/

// echo -> Imprime um comando na tela

	echo "<marquee behavior='alternate'>Programador Web 2015175</marquee>";
	
	echo "<h1>Hello Word!</h1>";

// echo -> Impriessão utilizada normalmente
	print "<p>Programador Web 2015175</p>";
	
# Variaveis
/*
	variaveis inicia-se com $
	variaveis não precisam ser iniciadas.
*/

	//String
	$nome="Lario Diniz";
	var_dump($nome);
	
	//Int
	$idade = 38;
	var_dump($idade);

	//float
	$salario = 500;
	var_dump($salario);
	
	// bollean
	$casado = true;
	var_dump($casado);
	
	echo "<br><br>";
#Constantes
/*
	Usa-se a função define("NOMEDACONSTANTE", "PARAMETRODACONSTANTE")
*/
	define("BASE_PATH", $_SERVER['REQUEST_URI']);
	
	
	echo BASE_PATH;
	
#Arrays

/*
	Usa-se a função array(, "PARAMETRO1", "PARAMETRO2", "PARAMETRO3", "PARAMETRO4"...)
*/

	$array = array("lario", 10, 15, 56, 30, 14, true);
	
	echo "<br><br>";
	
	print_r($array);
	
	echo "</pre>";
	
	$array = array(
					"nome" => "Lario Diniz",
					"idade" => 27,
					"salario" => 100.00,
					"casado" => true,
			);
			
	echo "<br><br>";
	
	print_r($array);
	
	echo "</pre>";
	
	
	$array = array("nome" => "Lario Diniz",
					38,
					"salario" => 500.00,
					true
					
			);
	
	echo "<br><br>";
	
	print_r($array);
	
	echo "</pre>";
	
	
	$array = array();
	
	$array['nome'] = "Lario Diniz";
	$array["idade"] = 27;
	$array["salario"] = 100.00;
	$array["casado"] = true;
	
	echo "<br><br>";
	
	print_r($array);
	
	echo "</pre>";
	

	
	$array = array();

// foreach -> para cada indice de uma array faça algo


$usuario = array(
			"Lorena",
			"Icaro",
			"Marcelo",
			"Francisco",
			"Robson",
			"Lucas",
			"Roberta",
			"Luiz",
			"Wendel",
			"Lário",
			"Fernando",
			"Romulo",
			"Rafael",
			"Alex",
			);
foreach($usuario as $key=>$value){
	echo "<br>";
	echo $value;
	
};
?>

