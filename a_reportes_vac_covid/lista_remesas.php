<?php
	require_once("db_.php");
	$idproceso=$_REQUEST['idproceso'];
	$pd= $db->nombre_proceso($idproceso);
	$pd2 = $db->lista_remesas_proceso($idproceso);
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
					<div class="col-4">Nombre remesa</div>
					<div class="col-2">Biológico</div>
					<div class="col-2">Total dosis</div>
					<div class="col-2">Fecha recepción</div>
				</div>
					 <hr/>
						<?php
							foreach($pd2 as $key2){
						?>
						<div class='row' >
							<div class="col-2">
								<button class='btn btn-warning' type="button" is="b-link" des='a_reportes_vac_covid/reporte_remesa' dix='trabajo' tp="edit" v_idremesa='<?php echo $key2->id_remesa; ?>' title=''><i class='fas fa-check'></i> Seleccionar </button>
							</div>
							<div class="col-4"><?php echo $key2->nombre_remesa; ?></div>
							<div class="col-2"><?php echo $key2->nombre_bio; ?></div>
							<div class="col-2"><?php echo number_format($key2->cant_dosis); ?></div>
							<div class="col-2"><?php $fecha_rem=$key2->fecha_recepcion; echo date("d/M/Y", strtotime($fecha_rem)); ?></div>
						</div>
					 <hr/>
						<?php
							}
						?>
			</div>
	</div>
</div>
