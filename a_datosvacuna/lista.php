<?php
	require_once("db_.php");
?>
<div class="container">
<div style="color:black;">
	<div class='card'>
		<div class='card-header'>
			Datos de Vacuna contra COVID-19
		</div>
		<div class='card-body'>
			<div class='row'>
				<div class="col-12 succes">
					<ul class="list-group"  style="font-size:180%;">
						<li class="list-group-item list-group-item-info">Seleccione una opción</li>
						<li class='list-group-item list-group-item-action'>
							<a class='a-link' is="a-link" des='a_datosvacuna/lista_procesos' dix='trabajo' tp="router" title='Procesos de vacunación contra COVID-19'><i class="fas fa-head-side-virus"></i> Procesos</a>
						</li>
						<li class='list-group-item list-group-item-action'>
							<a class='a-link' is="a-link" des='a_datosvacuna/lista_remesas' dix='trabajo' tp="router" title='Remesas de vacuna contra COVID-19'><i class="fas fa-list-ol"></i> Remesas</a>
						</li>
						<li class='list-group-item list-group-item-action'>
							<a class='a-link' is="a-link" des='a_datosvacuna/lista_sedes' dix='trabajo' tp="router" title='Sedes de vacunación contra COVID-19'><i class="fas fa-hospital-user"></i> Sedes</a>
						</li>
						<li class='list-group-item list-group-item-action'>
							<a class='a-link' is="a-link" des='a_datosvacuna/lista_bio' dix='trabajo' tp="router" title='Biológicos usados en vacunación contra COVID-19'><i class="fas fa-vial"></i> Biológicos</a>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
