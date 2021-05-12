<?php
	require_once("db_.php");
?>
<div class="container">
	<div class='card'>
		<div class='card-header'>
			Vacunación contra COVID-19
		</div>
		<div class='card-body'>
			<div class='row'>
				<div class="col-12">
					<ul class="list-group"  style="font-size:180%;">
					  <li class="list-group-item list-group-item-primary">Seleccione un proceso de vacunación</li>
					  <li class="list-group-item list-group-item-action">
						<a is="a-link" des='a_consul_vac_covid/listaseph' dix='trabajo' tp="router"><i class="fas fa-chalkboard-teacher"></i> Personal educativo</a></li>
						<li class="list-group-item list-group-item-action">
						<a is="a-link" des='a_consul_vac_covid/lista50a59' dix='trabajo' tp="router"><i class="fas fa-user-check"></i> 50 a 59 años</a></li>
						<li class="list-group-item list-group-item-action">
						<a is="a-link" des='a_consul_vac_covid/lista60ymas' dix='trabajo' tp="router"><i class="fas fa-blind"></i> 60 años y más</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
