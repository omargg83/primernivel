<?php
	require_once("db_.php");
?>
	<nav class='navbar navbar-expand-lg navbar-light bg-light'>
	<a class='navbar-brand' is="a-link" des='a_datosvacuna/lista' dix='trabajo' tp="router"><i class='fas fa-cog'></i> Datos Vacuna</a>
	  <button class='navbar-toggler navbar-toggler-right' type='button' data-toggle='collapse' data-target='#navbarSupportedContent' aria-controls='principal' aria-expanded='false' aria-label='Toggle navigation'>
		<span class='navbar-toggler-icon'></span>
	  </button>
		  <div class='collapse navbar-collapse' id='navbarSupportedContent'>
			<ul class='navbar-nav mr-auto'>
			<li class='nav-item active'>
				<a class='nav-link barranav izq' is="a-link" des='a_datosvacuna/lista_procesos' dix='trabajo' tp="router" title='Procesos de vacunación contra COVID-19'><i class="fas fa-head-side-virus"></i> Procesos</a>
			</li>
			<li class='nav-item active'>
				<a class='nav-link barranav izq' is="a-link" des='a_datosvacuna/lista_remesas' dix='trabajo' tp="router" title='Remesas de vacuna contra COVID-19'><i class="fas fa-list-ol"></i> Remesas</a>
			</li>
			<li class='nav-item active'>
				<a class='nav-link barranav izq' is="a-link" des='a_datosvacuna/lista_sedes' dix='trabajo' tp="router" title='Sedes de vacunación contra COVID-19'><i class="fas fa-hospital-user"></i> Sedes</a>
			</li>
			<li class='nav-item active'>
				<a class='nav-link barranav izq' is="a-link" des='a_datosvacuna/lista_bio' dix='trabajo' tp="router" title='Biológicos usados en vacunación contra COVID-19'><i class="fas fa-vial"></i> Biológicos</a>
			</li>
			</ul>
	  </div>
	</nav>

<div id='trabajo'>
	<?php
		include 'lista.php';
	?>
</div>
