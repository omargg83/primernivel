<?php
	require_once("db_.php");
?>
	<nav class='navbar navbar-expand-lg navbar-light bg-light'>
	<a class='navbar-brand'><i class="fas fa-thermometer"></i> Pruebas rápidas</a>
	  <button class='navbar-toggler navbar-toggler-right' type='button' data-toggle='collapse' data-target='#navbarSupportedContent' aria-controls='principal' aria-expanded='false' aria-label='Toggle navigation'>
		<span class='navbar-toggler-icon'></span>
	  </button>
		  <div class='collapse navbar-collapse' id='navbarSupportedContent'>
			<ul class='navbar-nav mr-auto'>
<?php if (($_SESSION['nivel_usuario']==3)||($_SESSION['nivel_usuario']==4)) { ?>
				<li class='nav-item active'>
					<a class='nav-link barranav izq' title='Reporte' id='reportar'  is='a-link' des='a_pruebas/reportar' dix='trabajo'>
						<i class="fas fa-clipboard-check"></i> Reportar unidad</a>
				</li>
<?php }?>
				<li class='nav-item active'>
					<a class='nav-link barranav' is="a-link" des='a_pruebas/informe' dix='trabajo' tp="router"><i class="fad fa-chart-line"></i> Informes </a>
				</li>
			</ul>

	  </div>
	</nav>

<div id='trabajo'>
	<?php
		include 'reportar.php';
	?>
</div>
