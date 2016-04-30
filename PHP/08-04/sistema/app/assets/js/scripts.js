$(window).load(function(){
	
	$("#preloader").fadeOut(500);
	$("#site").fadeIn(500);	
	
});

function Usuario(){
	
	
		
	$("#formLogin").validate({
		rules: {
			email : {
				required: true,
				email: true				
			},
			
			senha: {
				required: true,
				minlength: 6,
				maxlength: 12
			}
			
		},
		messages: {
			email : {
				required : "Preencha o campo e-mail.",
				email : "Email inválido."
			},
			senha: {
				required : "Preencha o campo senha.",
				minlength : "Sua senha deverá conter no mínimo 6 caracteres.",
				maxlength : "Sua senha deverá conter no máximo 12 caracteres."
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
					
					var alerta =  $("<div />");
					
					alerta.attr({
						"class" : "alert alert-danger alert-dismissible", "role" : "alert"
					});
					
					var btn = $("<button />");
					btn.attr({
						"type": "button",
						"class":"close",
						"data-dismiss":"alert",
						"aria-label": "Fechar"
					});
					
					var span = $("<span />");
					span.attr({
						"aria-hidden": "true"
					});
					span.html("&times;");
					
					// cria elemento strog
					var strong = $("<strong />");
					
					// cria icone 
					var icone = $("<span />");
					icone.attr({
						"class" : "glyphicon glyphicon-warning-sign",
						"aria-hidden": "true"
					});
					
					// adiciona icone no strong
					strong.append(icone);
					
					
					// adiciona span no btn					
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
	
	/* =-= Validação do formulário de cadastro de usuários =-= */
	
	$("#formCadastroUsuario").validate({		
		rules : {
			nome : {
				required : true,
				minlength : 10
			},
			email : {
				required : true,
				email : true
			},
			senha : {
				required : true,
				minlength : 6,
				maxlength : 12
			},
			rsenha : {
				required : true
			}
		},
		messages : {
			nome : {
				required : "Preencha o campo nome.",
				minlength : "Seu nome deve conter no mínimo 10 caracteres."
			},
			email : {
				required : "Preencha o campo e-mail.",
				email : "E-mail inválido."
			},
			senha : {
				required : "Preencha o campo senha.",
				minlength : "Sua senha deve conter no mínimo 6 caracteres.",
				maxlength : "Sua senha deve conter no máximo 12 caracteres."
			},
			rsenha : {
				required : "Repita sua senha."
			}
		},
		submitHandler : function(dados){
			var formData = new FormData(dados);
			
			$.ajax({
				url: "app/services/cadastrarUsuario",
				type: "POST",
				contentType : false,
				processData: false,
				data : formData,
				async: false
			}).done(function(resposta){
				
				if(resposta.erro){
					$(".alert").remove();
					feedback("#titulo","alert-danger","glyphicon-warning-sign",resposta.mensagem);
				}
				else{
					$(".alert").remove();
					feedback("#titulo","alert-success","glyphicon-ok",resposta.mensagem);
				}
			});			
		}		
	});
	
	$('#formBuscarUsuario').validate({
		
		rules : {
			p : {
			required : true
			}
		},
		messages : {
			p : {
				required : "Informe um parametro para Busca"

			}
		},
		submitHandler : function(dados){
			
			$.ajax({
				url:"app/services/buscarUsuario",
				type: "POST",
				data: dados.serialize()
			}).done(function(){
				
				if(resposta.erro){
					$(".alert").remove;
					feedback("#titulo","alert-success","glyphicon-ok",resposta.mensagem);
				}
				else{
					$("#resultado").append(
					'<tr>'+
						'<td>'+resposta.id+'</td>'
						'<td>'+resposta.nome+'</td>'
						'<td>'+resposta.email+'</td>'
						'<td>'+'<span class="glyphicon glyphicon-remove btn-remove"></span>'+'</td>'+
						'<td>'+'<span class="glyphicon glyphicon-pencil btn-editar"></span>'+'</td>'+
						'</tr>'
					
					)
				}
			});
			
		}

		
	});
	
	function feedback(a, b, c, d){

		$(a).after(		
		'<div class="alert '+b+' alert-dismissible" role="alert">'+
  '<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>'+
  '<strong>'+'<span class="glyphicon '+c+'"></span>'+'</strong> '+d+
'</div>'
		);

	};
	
	this.validaSenha = function(s, rs, campo){		
		campo = "#"+campo;		
		if(s != rs)
		{			
			$(".senha").remove();
			
			$(campo).after("<label class='error senha'>Senhas não conferem.</label>")
			.addClass('error')
			.val("");			
		}
		else
		{
			$(".senha").remove();
		}
		
	};
	
	
	
}


























