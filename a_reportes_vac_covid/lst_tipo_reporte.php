<?php
	require_once("db_.php");
	$idproceso=$_REQUEST['idproceso'];
	$pd = $db->nombre_proceso($idproceso);
?>
<div class="container">
<div style="color:black;">
	<input type='hidden' value='<?php echo $idproceso; ?>' readonly>
	<div class='card'>
		<div class='card-header  text-white bg-info' style="font-size:105%;">
			<b><?php foreach($pd as $key){echo $key->nombre_proceso;}?></b>
		</div>
		<div class='card-body' style="font-size:150%;">
			<div class='row'>
				<div class="col-12">
					<ul class="list-group">
						<li class='list-group-item list-group-item-action'>
							<button class='btn btn-warning' type="button" is="b-link" des='a_reportes_vac_covid/lista_remesas' dix='trabajo' tp="edit" v_idproceso='<?php echo $idproceso; ?>' title=''><i class="fas fa-file-alt"></i> Ver reportes</button>
							<i class="fas fa-list-ol"></i>  Remesas usadas en el proceso
						</li>
						<li class='list-group-item list-group-item-action'>
							<button class='btn btn-warning' type="button" is="b-link" des='a_reportes_vac_covid/lista_sedes' dix='trabajo' tp="edit" v_idproceso='<?php echo $idproceso; ?>' title=''><i class="fas fa-file-alt"></i> Ver reportes</button>
								<i class="fas fa-hospital-user"></i>  Sedes de vacunación
						</li>
						<li class='list-group-item list-group-item-action'>
							<button class='btn btn-warning' type="button" is="b-link" des='a_reportes_vac_covid/lista_fechas' dix='trabajo' tp="edit" v_idproceso='<?php echo $idproceso; ?>' title=''><i class="fas fa-file-alt"></i> Ver reportes</button>
								<i class="far fa-calendar-alt"></i>  Fechas de vacunación
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
