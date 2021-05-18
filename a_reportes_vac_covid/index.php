<?php
	require_once("db_.php");
?>
	<nav class='navbar navbar-expand-lg navbar-light bg-light'>
	<a class='navbar-brand' is="a-link" des='a_reportes_vac_covid/lista' dix='trabajo' tp="router"><i class="fas fa-file-powerpoint"></i> Reportes Generales</a>
	  <button class='navbar-toggler navbar-toggler-right' type='button' data-toggle='collapse' data-target='#navbarSupportedContent' aria-controls='principal' aria-expanded='false' aria-label='Toggle navigation'>
		<span class='navbar-toggler-icon'></span>
	  </button>
		  <!--div class='collapse navbar-collapse' id='navbarSupportedContent'>
			<ul class='navbar-nav mr-auto'>
			<li class='nav-item active'>
				<a class='nav-link barranav' is="a-link" des='a_reportes_vac_covid/reportesseph' dix='trabajo' tp="router"><i class="fas fa-chalkboard-teacher"></i> Personal educativo</a>
			</li>
			<li class='nav-item active'>
				<a class='nav-link barranav' is="a-link" des='a_reportes_vac_covid/reportes50a59' dix='trabajo' tp="router"><i class="fas fa-user-check"></i> 50 a 59 años</a>
			</li>
			<li class='nav-item active'>
				<a class='nav-link barranav' is="a-link" des='a_reportes_vac_covid/reportes60ymas' dix='trabajo' tp="router"><i class="fas fa-blind"></i> 60 y más</a>
			</li>

			</ul>

	  </div-->
	</nav>

<div id='trabajo'>
	<?php
		include 'lista.php';
	?>
</div>
