<?php
	require_once("db_.php");
	$idproceso=$_REQUEST['idproceso'];
	$pd= $db->nombre_proceso($idproceso);
	$pd2 = $db->lista_fechas_proceso_seph($idproceso);
	$pd3 = $db->lista_fechas_proceso_50a59($idproceso);
	$pd4 = $db->lista_fechas_proceso_60ymas($idproceso);
?>
<div class="container">
<div style="color:black;">
	<input type='hidden' value='<?php echo $idproceso; ?>' readonly>
		<div class='card'>
			<div class='card-header  text-white bg-info' style="font-size:105%;">
				<b><?php foreach($pd as $key){ echo $key->nombre_proceso; }?></b>
			</div>
		</div>
			<div class="row" style="font-weight:bolder;">
					<div class="col-2"></div>
					<div class="col-2"></div>
					<div class="col-2" style="text-align:center;">Fecha de Aplicación</div>
					<div class="col-1" style="text-align:center;">Número de reportes</div>
					<div class="col-4" style="text-align:center;">Proceso de vacunación</div>
				</div>
					 <hr/>
<!--tabla personal educativo-->
						<?php
							foreach($pd2 as $key2){
						?>
						<div class='row' >
							<div class="col-2" style="text-align:center;">
								<button class='btn btn-secondary' type="button" is="b-link" des='a_reportes_vac_covid/reporte_fecha_sedes' dix='trabajo' tp="edit" v_fechareporte='<?php echo $key2->fecha_reporte; ?>' v_tabla='3' v_idproceso='<?php echo $idproceso; ?>' title=''><i class="fas fa-hospital-user"></i> Ver sedes</button>
							</div>
							<div class="col-2">
								<button class='btn btn-success' type="button" is="b-link" des='a_reportes_vac_covid/reporte_fecha' dix='trabajo' tp="edit" v_fechareporte='<?php echo $key2->fecha_reporte; ?>' v_idproceso='<?php echo $idproceso; ?>' v_tabla='3' title=''><i class="fas fa-poll"></i>  Reporte general </button>
							</div>
							<div class="col-2" style="text-align:center;font-weight:bolder;"><?php echo date("d / M / Y", strtotime($key2->fecha_reporte)); ?></div>
							<div class="col-1" style="text-align:center;"><?php echo $key2->tot_reg_fecha; ?></div>
							<div class="col-4" style="text-align:center; font-size:70%;"><?php echo $key2->nombre_proceso; ?></div>
						</div>
					 <hr/>
						<?php
							}
						?>
<!--tabla 50 a 59 años-->
						<?php
							foreach($pd3 as $key3){
						?>
						<div class='row' >
							<div class="col-2" style="text-align:center;">
								<button class='btn btn-secondary' type="button" is="b-link" des='a_reportes_vac_covid/reporte_fecha_sedes' dix='trabajo' tp="edit" v_fechareporte='<?php echo $key3->fecha_reporte; ?>' v_tabla='2' v_idproceso='<?php echo $idproceso; ?>'title=''><i class="fas fa-hospital-user"></i> Ver sedes</button>
							</div>
							<div class="col-2">
								<button class='btn btn-success' type="button" is="b-link" des='a_reportes_vac_covid/reporte_fecha' dix='trabajo' tp="edit" v_fechareporte='<?php echo $key3->fecha_reporte; ?>' v_idproceso='<?php echo $idproceso; ?>' v_tabla='2' title=''><i class="fas fa-poll"></i> Reporte general </button>
							</div>
							<div class="col-2" style="text-align:center;font-weight:bolder;"><?php echo date("d / M / Y", strtotime($key3->fecha_reporte)); ?></div>
							<div class="col-1" style="text-align:center;"><?php echo $key3->tot_reg_fecha; ?></div>
							<div class="col-4" style="text-align:center; font-size:70%;"><?php echo $key3->nombre_proceso; ?></div>
						</div>
					 <hr/>
						<?php
							}
						?>
<!--tabla 60 y mas años-->
					<?php
						foreach($pd4 as $key4){
					?>
					<div class='row' >
						<div class="col-2" style="text-align:center;">
							<button class='btn btn-secondary' type="button" is="b-link" des='a_reportes_vac_covid/reporte_fecha_sedes' dix='trabajo' tp="edit" v_fechareporte='<?php echo $key4->fecha_reporte; ?>' v_tabla='1' v_idproceso='<?php echo $idproceso; ?>' title=''><i class="fas fa-hospital-user"></i> Ver sedes</button>
						</div>
						<div class="col-2">
							<button class='btn btn-success' type="button" is="b-link" des='a_reportes_vac_covid/reporte_fecha' dix='trabajo' tp="edit" v_fechareporte='<?php echo $key4->fecha_reporte; ?>' v_idproceso='<?php echo $idproceso; ?>' v_tabla='1' title=''><i class="fas fa-poll"></i> Reporte general </button>
						</div>
						<div class="col-2" style="text-align:center;font-weight:bolder;"><?php echo date("d / M / Y", strtotime($key4->fecha_reporte)); ?></div>
						<div class="col-1" style="text-align:center;"><?php echo $key4->tot_reg_fecha; ?></div>
						<div class="col-4" style="text-align:center; font-size:70%;"><?php echo $key4->nombre_proceso; ?></div>
					</div>
					<hr/>
					<?php
						}
					?>
			</div>
	</div>
</div>
