$(window).load(function(){
	
	$("#preloader").fadeOut(500);
	$("#site").fadeIn(500);	
	
});

function Usuario(){
		$("#formLogin").validate({
			rules: 
			{
				email : {
					required: true,
					email: true
				},
				
				senha: 
				{
					required: true,
					minlength: 6,
					maxlength: 12
				}	
			},
			messages: 
			{
				email : {
					required : "Preencha o campo e-mail.",
					email : "E-mail invalido."
				},
				senha: {
					required: "Preencha o campo senha.",
					minlength: "Sua senha deverá conter no mínimo 6 caracteres.",
					maxlength: "Sua senha deverá conter no máximo 12 caracteres."
				}
			},
			submitHandler: function(){
				formData = $("#formLogin").serialize();
				$.ajax({
					url: "app/services/login",
					type: "POST",
					data: formData
				}).done(function(data){
					
					if(data.erro){
						$("#feedback").empty();
						var alerta = $("<div />");
						alerta.attr({
							"class" : "alert alert-danger alert-dismissible",
							"role" : "alert"
						});
						var btn = $("<button />");
						btn.attr({
							"type" : "button",
							"class" : "close",
							"data-dismiss" : "alert",
							"aria-label" : "Fechar"
						});
						var span = $("<span />");
						span.attr({
							"aria-hidden" : "true"
						});
						span.html("&times;");
						var strong = $("<strong />");
						var icone = $("<span />");
						icone.attr({
							"class" : "glyphicon glyphicon-warning-sign",
							"aria-hidden" : "true"
						});
						strong.append(icone);
						btn.append(span);
						alerta.append(btn);
						alerta.append(strong);
						alerta.append(data.mensagem);
						$("#feedback").append(alerta);
						return false;
					}
					else{
						location.href="./painel";
					}
				});
				
			}
		});
		$("#formCadastroUsuario").validate({
			rules : 
			{
				nome : {
					required: true,
					minlength: 12
				},
				email : {
					required: true,
					email: true
				},
				senha : {
					required: true,
					minlength: 6,
					maxlength: 12
				},
				rsenha : {
					required: true
				}
			},
			messages : 
			{
				nome : { 
					required : "Preencha o campo nome.",
					minlength : "Seu nome deve conter no mínimo 12 caracteres."
				},
				email : {
					required : "Preencha o campo e-mail.",
					email : "E-mail invalido."
				},
				senha : {
					required : "Preencha o campo senha.",
					minlength : "sua senha deve conter no mínimo 6 caracteres.",
					maxlength: "Sua senha deverá conter no máximo 12 caracteres."
				},
				rsenha : {
					required : "Repita sua senha."
				}
			},
			submitHandler : function(dados){
				
				var formData = new FormData(dados);
				$.ajax ({
					url : "app/services/cadastrarUsuario",
					type: "POST",
					contentType : false,
					processData : false,
					data : formData,
					async : false
				}).done(function(resposta){
					console.log(resposta);
				});
			}
		});
		
	this.validaSenha = function( s, rs, campo){
		campo = "#"+campo;
		if (s != rs){
			
			$(".senha").remove();
			$(campo).after("<label class='error senha'> Senhas não conferem. </label>")
			.addClass('error')
			.val("");
		}
		else 
		{
			$(".senha").remove();
		}
	}
}






