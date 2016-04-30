function valida(){
		var prefix = document.form;
		
		if ( prefix.handle.value != "" ){
				return false;		
		}
		else{
				if(prefix.nome.value==""){
						alert("Preencha seu nome!");
						prefix.nome.focus();
						return false;
				}
				
				else if(prefix.senha.value==""){
					alert("Preencha sua senha!");
					prefix.senha.focus();
					return false;
				}
			
				else if(prefix.confSenha.value==""){
					alert("Preencha sua confirmação de senha!");
					prefix.confSenha.focus();
					return false;
				}
				
			else if(prefix.confSenha.value != prefix.senha.value){
				alert("Senhas não conferem!");				
				prefix.confSenha.value = "";
				prefix.senha.value = "";
				prefix.senha.focus();
				return false;
			}
			else{
					alert("Enviado com sucesso!")
					return true;
			}

		}
}