<?php
	require_once("db_.php");
	$idremesa=$_REQUEST['idremesa'];
	$pd= $db->datos_remesa($idremesa);
	$pd2 = $db->sedes_activas_remesa($idremesa);
?>
<div class="container">
<center>
<div style="color:black;">
	<input type='text' value='remesaID : <?php echo $idremesa; ?>' readonly>
		<table style="width:95%;background-color: white;">
			<th class='card-header text-white bg-dark' colspan="10" style="text-align:center;">
				Avance en la aplicación de vacuna anti COVID-19 Personal Educativo en el Estado de Hidalgo
			</th>
			<tr style="border: 1px solid darkgray;">
					 <td colspan="3" style="text-align:center;" width="10%">Nombre de la remesa: </td><td colspan="3" width="40%"><b><?php foreach($pd as $key){ echo $key->nombre_remesa; }?></b></td>
			 	   <td colspan="4" style="border-left: 1px solid darkgray; text-align:left;" width="50%"> Detalles de la remesa: <i style="font-size:90%;"><?php foreach($pd as $key){ echo $key->destinado; }?></i></td>
			</tr>
			<tr style="border: 1px solid darkgray;"> <td style="text-align:center;">Biológico: </td> <td style="text-align:center;padding-right:5px;"> <b><?php foreach($pd as $key){ echo $key->nombre_bio; }?></b> </td>
			 	   <td style="border-left: 1px solid darkgray; text-align:center;">Total de dosis: </td> <td style="text-align:center;margin-right:5px;"><b><?php foreach($pd as $key){ echo number_format($key->cant_dosis); }?></b></td>
					 <td style="border-left: 1px solid darkgray; text-align:center;">Total de Frascos: </td> <td style="text-align:center;margin-right:5px;"><b><?php foreach($pd as $key){ echo number_format($key->cant_frasco); }?></b></td>
					 <td style="border-left: 1px solid darkgray; text-align:center;">Lote(s): </td> <td style="text-align:center;margin-right:5px;"><b><?php foreach($pd as $key){ echo $key->lote; }?></b></td>
			     <td style="border-left: 1px solid darkgray; text-align:center;">Fecha de recepción: </td> <td style="text-align:center;margin-right:5px;"><b><?php foreach($pd as $key){ $fecha_rem=$key->fecha_recepcion; echo date("d/M/Y", strtotime($fecha_rem)); }?></b></td>
			</tr>
	  </table>
		<br>
		<div class="row text-white bg-dark" style="background-color:darkgray;font-weight:bolder;font-size:80%;">
				<div class="col-1">Jurisdicción</div>
				<div class="col-1">Municipio</div>
				<div class="col-3">Sede</div>
				<div class="col-1">Dosis aplicadas a población</div>
				<div class="col-1">Brigadistas vacunados</div>
				<div class="col-1">Personal de salud</div>
				<div class="col-1">Total de Dosis aplicadas</div>
				<div class="col-1">ESAVIs No Graves</div>
				<div class="col-1">ESAVIs Graves</div>
				<div class="col-1">Mermas | Perdidas en Operación</div>
			</div>
			<?php
				$tot_vac_pob=0;
				$tot_brig=0;
				$tot_per_sal=0;
				$tot_dosis=0;
				$tot_ENG=0;
				$tot_EG=0;
				$tot_mermas=0;
				foreach($pd2 as $key2){
			?>
				<div class='row' >
					<div class="col-1" style="font-size:65%;"><?php echo $key2->nombre_juris; ?></div>
					<div class="col-1" style="font-size:65%;"><?php echo $key2->nombre_mpio; ?></div>
					<div class="col-3" style="font-weight:bold;"><?php echo $key2->nombre_sede; ?></div>
						<?php
							$idsede=$key2->id_sede;
							$pd3 = $db->rep_remesa_sede($idsede);
							foreach($pd3 as $key3){
						?>
							<div class="col-1"><?php $tot_vac_pob+=$key3->total_vac_pob; echo number_format($key3->total_vac_pob); ?></div>
							<div class="col-1"><?php $tot_brig+=$key3->total_brig; echo number_format($key3->total_brig); ?></div>
							<div class="col-1"><?php $tot_per_sal+=$key3->total_per_sal; echo number_format($key3->total_per_sal); ?></div>
							<div class="col-1" style="font-weight:bolder;"><?php $tot_dosis+=$key3->total_dosis; echo number_format($key3->total_dosis); ?></div>
							<div class="col-1"><?php $tot_ENG+=$key3->total_ENG; echo number_format($key3->total_ENG); ?></div>
							<div class="col-1"><?php $tot_EG+=$key3->total_EG; echo number_format($key3->total_EG); ?></div>
							<div class="col-1"><?php $tot_mermas+=$key3->total_mermas; echo number_format($key3->total_mermas); ?></div>
						<?php
							}
						?>
					</div>
				 <hr/>
					<?php
						}
					?>
					<div class="row" style="background-color:#add8e6; color:black; font-weight:bolder;">
							<div class="col-5">Total</div>
							<div class="col-1"><?php echo number_format($tot_vac_pob); ?></div>
							<div class="col-1"><?php echo number_format($tot_brig); ?></div>
							<div class="col-1"><?php echo number_format($tot_per_sal); ?></div>
							<div class="col-1"><?php echo number_format($tot_dosis); ?></div>
							<div class="col-1"><?php echo number_format($tot_ENG); ?></div>
							<div class="col-1"><?php echo number_format($tot_EG); ?></div>
							<div class="col-1"><?php echo number_format($tot_mermas); ?></div>
						</div>
				 <hr/>
</div>

</center>
</div>
