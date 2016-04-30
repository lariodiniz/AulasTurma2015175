<div class="col-xs-12 col-sm-8">
	<h3 id="titulo">Cadastrar Usuário</h3>
	

	<form id="formCadastroUsuario" novalidate>
		<input type="hidden" name="sbot" />
		
	  <div class="form-group">
		<label for="nome">Nome</label>
		<input type="text" class="form-control" id="nome" placeholder="Nome" name="nome">
	  </div>
	  
	  <div class="form-group">
		<label for="email">E-mail</label>
		<input type="email" class="form-control" id="email" placeholder="E-mail" name="email">
	  </div>
	  
	  	  
	  <div class="form-group">
		<label for="senha">Senha</label>
		<input type="password" class="form-control" id="senha" placeholder="Senha" name="senha">
	  </div>
	  
	  <div class="form-group">
		<label for="rsenha">Redigite a senha</label>
		<input type="password" class="form-control" id="rsenha" placeholder="Redigite a senha" name="rsenha">
	  </div>
	  
	  <div class="form-group">
		<p class="text-info">Apenas imagens jpg, jpeg e png</p>
		<label for="arquivo">Escolha sua imagem</label>
		<input type="file" name="arquivo" id="arquivo" >
	  </div>
	  
	  <button type="submit" class="btn btn-default">Cadastrar</button>
	</form>
</div>












