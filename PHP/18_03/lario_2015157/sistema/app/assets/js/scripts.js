 $(window).load(function(){
	$("#preloader").fadeOut(500);
	$("#site").fadeIn(500);
});

function Usuario(){
				
			$("#formLogin").validate({
					rules: {
							email:{
								required: true,
								email: true
							},
							senha:{
								required: true,
								minlength: 6,
								maxlength: 12
									
							}
					},
					messages:{
							email: {
									required: "Campo Email obrigatório",
									email: "Email inválido."
							},
							senha: {
									required: "Campo Senha obrigatório",
									minlength: "Senha minima de no mínimo 6 caracteres ",
									maxlength: "Senha maxima de no mínimo 12 caracteres ",
							}
					},
							submitHandler: function(){
									formData = $("#formLogin").serialize();
									$.ajax({
											url: "app/service/login",
											type: "POST",
											data: formData
									}).done(function(resp){
											console.log(resp);
									});
							}
				
			});
	
};