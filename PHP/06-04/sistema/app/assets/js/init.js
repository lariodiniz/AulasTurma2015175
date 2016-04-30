var usuario = new Usuario();
var formLogin = $("#formLogin");

var senha = $("#senha");
var rsenha = $("#rsenha");

(function($){
	$(function(){
		
		rsenha.blur(function(){
			s = senha.val();
			rs = rsenha.val();
			campo = rsenha.attr('id');
			usuario.validaSenha( s, rs, campo);
		});
		
	})
	
})(jQuery)