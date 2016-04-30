<div class="col-xs-12 col-sm-8">
	<h3 id="titulo">Buscar Usuário</h3>
	

	<form id="formBuscarUsuario" class = "form-inline" novalidate>
		<input type="hidden" name="sbot" />
		
	  <div class="form-group">
		<label for="p">Nome, E-mail ou Senha</label>
		<input type="text" class="form-control" id="p" placeholder="Nome, E-mail ou Senha" name="p">
	  </div>	  
	  
	  <button type="submit" class="btn btn-default">Buscar</button>
	</form>
</div>
<div class="col-xs-12 col-sm8">
	<table id="tabelaResultados" class="table table-responsive">
		<thead>
			<th>ID</th>
			<th>Nome</th>
			<th>E-mail</th>
			<th colspan="2"> - </th>
		</thead>
		<tbody id="resultado"></tbody>
	</table>
</div>












