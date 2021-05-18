<?php
	require_once("db_.php");
		$pd = $db->lista_procesos();
?>
<div class="container">
	<div class='card'>
		<div class='card-header  text-white bg-primary'>
			Reportes generales vacunación contra COVID-19
		</div>
		<div class='card-body'>
			<div class='row'>
				<div class="col-12">
					<ul class="list-group"  style="font-size:125%;">
					  <li class="list-group-item list-group-item-dark">Seleccione un proceso de vacunación</li>
							<?php
								foreach($pd as $key){
							?>
					  		<li class="list-group-item list-group-item-action">
									<button class='btn btn-warning' type="button" is="b-link" des='a_reportes_vac_covid/lst_tipo_reporte' dix='trabajo' tp="edit" v_idproceso='<?php echo $key->id_proceso; ?>' title=''> <i class='fas fa-check'></i> Seleccionar </button>
									<?php $icono=$key->id_proceso;
												if($icono==1){echo"<i class='fas fa-blind'></i> ";}
												else if($icono==2){echo"<i class='fas fa-user-check'></i> ";}
												else if($icono==3){echo"<i class='fas fa-chalkboard-teacher'></i> ";}
									 echo $key->nombre_proceso;?>
								</li>
							<?php
								}
							?>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
