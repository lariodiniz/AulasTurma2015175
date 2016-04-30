//Coment�rio de uma linha
/*
  coment�rio de varias linhas
 */
 

alert("Hello Word!"); // Abre uma janela e mostra o texto que esta entre os parenteses
/*document.write("<h2>Hello World</h2>"); // Escreve dentro do body o que esta entre os parenteses
*/

/*
 * VARIAVEIS e CONSTANTES
 */
var x = 10; // Declarando explicitamente uma vari�vel (o uso da palavra reservada "var" serve para declarar uma vari�vel explicitamente)
var X = 20; // JavaScript � Case Sensitive

y = 3; // Declarando implicitamente uma vari�vel

var soma = x + y; //soma as vari�veis y e x

// alert(soma);  

const PI = 3.14;

//document.write("O Valor de PI �: " + PI); // Voc� pode concatenar uma string com um numero usando o sinal de +

 /*
  * Operadores
  */
 
 var x = 10;
 var y = 2;
 var soma = x + y;
 var subtracao = x-y;
 var multi = x * y;
 var div = x / y;
 var resto = x % y;
 document.getElementById("opArit1").innerHTML = "A soma �: " + soma; //o getElementById pega um elemento dentro do documento com o id igual ao que estiver dentro dos parenteses, entre aspas, e o innerHTML adciona o que estiver apos o sinal de igual dentro deste elemento
 document.getElementById("opArit2").innerHTML = "A subtra��o �: " + subtracao;
 document.getElementById("opArit3").innerHTML = "A multiplica��o �: " + multi;
 document.getElementById("opArit4").innerHTML = "A divis�o �: " + div;
 document.getElementById("opArit5").innerHTML = "O resto �: " + resto;
 
 /*
  * EVENTOS
  * eventos s�o disparados pelos usuarios e realizam alguma funionalidade
  */
 //A Palavra Reservada function serve para criar fun��es.
 function eventoClique(){
		alert("Capturou o evento clique da fun��o");
 }
 
 function eventoOnMouseOver(){
		alert("Capturou o evento onmauseover");
		
 }
 
 function eventoOnMouseOut(){
		alert("Capturou o evento Mouseout");
		
 }
 
 function eventoChange(){
		var fruta = document.getElementById("frutas").value;
		alert("Voc� escolheu: " + fruta);
 }
 
function eventoOnKeyDown(){
		var nome = document.getElementById("nome").value;
		document.getElementById("respKeyDown").innerHTML = nome;
}

function eventoOnKeyUp(){
	var nome = document.getElementById("time").value;
	document.getElementById("respKeyup").innerHTML = nome;
}

// setInterval executa uma funcionalidade indefinidamente at� que uma fun��o o pare ou o navegador seja fechado

//setInterval("document.getElementById('respKeyDown') = 'Ola eu sou o seInterval'", 1000);

function setInterValTime(){
		var tempo = new Date();
		document.getElementById("tempo").innerHTML = tempo.toLocaleTimeString(); 
}

setInterval(setInterValTime, 1000);
//var tempo = new Date();
//setTimeout("document.getElementById('timeout').innerHTML = tempo.toLocaleDateString()", 5000);

var cores = setInterval(mudaCor, 2000);

function mudaCor(){
		var corpo = document.body;

		//Operador ternario
		corpo.style.backgroundColor = corpo.style.backgroundColor == 'red' ? 'blue' : 'yellow';
}