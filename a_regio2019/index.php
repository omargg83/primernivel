<?php
	//require_once("db_.php");
?>
	<nav class='navbar navbar-expand-lg navbar-light bg-light'>
	<a class='navbar-brand'><i class="fas fa-sitemap"></i>   Estudio de Regionalización Operativa 2019</a>
	  <button class='navbar-toggler navbar-toggler-right' type='button' data-toggle='collapse' data-target='#navbarSupportedContent' aria-controls='principal' aria-expanded='false' aria-label='Toggle navigation'>
		<span class='navbar-toggler-icon'></span>
	  </button>
		  <div class='collapse navbar-collapse' id='navbarSupportedContent'>
			<ul class='navbar-nav mr-auto'>
			<li class='nav-item active'>
				<a class='nav-link barranav' is="a-link" des='a_regio2019/listado' title='Listado completo de todo el ERO' dix='trabajo' tp="router"><i class="fas fa-atlas"></i> Listado completo</a>
			</li>
			<li class='nav-item active'>
				<a class='nav-link barranav' is="a-link" des='a_regio2019/busqueda_ero2' title='Búsqueda' dix='trabajo' tp="router"><i class='fas fa-dice-d20'></i>       Ejercicio de Regionalización Operativa 2019</a>
			</li>
			</ul>

	  </div>
	</nav>

<div id='trabajo'>
	<?php
		include 'busqueda_ero2.php';
	?>
</div>
