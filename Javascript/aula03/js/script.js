var conteudo = document.getElementById('tela')
var larguraTela = conteudo.offsetWidth - 50;
var alturaTela =  conteudo.offsetHeight - 50;

window.onload = function(){
		
		/*Criando Botão */
		var btnStart = document.createElement("img");
		
		/* Criando Atributos */
		var attSrc = document.createAttribute("src");
		attSrc.value = "imagens/start.png";		
		var attId = document.createAttribute("id");
		attId.value = "start";
		
		/* adicionando atributos ao botão */
		btnStart.setAttributeNode(attSrc);
		btnStart.setAttributeNode(attId);
		
		conteudo.appendChild(btnStart);
		
		document.getElementById("start").addEventListener("click", function(e){
				this.style.display = 'none';
				var inicia = setInterval(
					function(){
						criarBolhas();
						var qtd = document.querySelectorAll('.bolha');
						if(qtd.length > 20){
								clearInterval(inicia);
								alert("Game Over!");
								//location.reload();
						}
					}, 500
				);
				
		});
		
		
}

document.getElementById("tela").addEventListener('mousemove', function(e){
		
		
		//Largura e altura da Janela
		var larguraJanela = window.screen.width;
		var alturaJanela = window.screen.height;
		
		
		var posX = e.pageX;
		var posY = e.pageY;
		
		var cursor = document.getElementById("cursor");
		cursor.style.left = (posX - 81)+'px';
		cursor.style.top = (posY - 9)+'px';

		
});

function criarBolhas(){
		

		/*Criando Bolha */
		var bolha = document.createElement("img");
		
		/* Criando Atributos */
		var attSrc = document.createAttribute("src");
		attSrc.value = "imagens/bolha.png";		
		var attClass = document.createAttribute("class");
		attClass.value = "bolha";
		var attClick = document.createAttribute("onclick");
		attClick.value = 'estoura(this)';
	
		

		
		/* adicionando atributos a bolha */
		bolha.setAttributeNode(attSrc);
		bolha.setAttributeNode(attClass);
		bolha.setAttributeNode(attClick);


		
		
		w = Math.ceil((Math.random() * larguraTela) + 1); 
		h = Math.floor((Math.random() * alturaTela) + 1); 
		bolha.style.left = w +'px';
		bolha.style.top = h +'px';
		conteudo.appendChild(bolha);
}
function estoura(elemento){		
		conteudo.removeChild(elemento)

		
}
