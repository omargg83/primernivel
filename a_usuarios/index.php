<?php
	require_once("db_.php");
?>
	<nav class='navbar navbar-expand-lg navbar-light bg-light'>
	<a class='navbar-brand' ><i class='fas fa-user-check'></i> Usuarios</a>
	  <button class='navbar-toggler navbar-toggler-right' type='button' data-toggle='collapse' data-target='#navbarSupportedContent' aria-controls='principal' aria-expanded='false' aria-label='Toggle navigation'>
		<span class='navbar-toggler-icon'></span>
	  </button>
		  <div class='collapse navbar-collapse' id='navbarSupportedContent'>
			<ul class='navbar-nav mr-auto'>
			<li class='nav-item active'>
				<a class='nav-link barranav' is="a-link" des='a_usuarios/lista' dix='trabajo' tp="router"><i class='fas fa-plus'></i>Lista</a>
			</li>
			<li class='nav-item active'>
				<a class='nav-link barranav izq' title='Nuevo' id='new_personal'  is='a-link' des='a_usuarios/editar' dix='trabajo' v_idusuario='0'>Nuevo</a>
			</li>
			</ul>

	  </div>
	</nav>

<div id='trabajo'>
	<?php
		include 'lista.php';
	?>
</div>
