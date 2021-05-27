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
		<table style="background-color: white;">
			<th class='card-header text-white bg-dark' colspan="10" style="text-align:center;">
				Avance en la aplicación de vacuna anti COVID-19
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
		<table class="table table-striped" style="border: 1px solid darkgray; color:black;">
	  <thead class="thead-dark" style="font-weight:bold;font-size:80%;">
				<th scope="row" style="text-align:center;">Jurisdicción</th scope="row" style="text-align:center;">
				<th scope="row" >Municipio</th scope="row" style="text-align:center;">
				<th scope="row" style="text-align:center;">Sede</th scope="row" style="text-align:center;">
				<th scope="row" style="text-align:center;">Dosis aplicadas a población</th scope="row" style="text-align:center;">
				<th scope="row" style="text-align:center;">Dosis aplicadas a mujeres embarazadas</th scope="row" style="text-align:center;">
				<th scope="row" style="text-align:center;">Brigadistas vacunados</th scope="row" style="text-align:center;">
				<th scope="row" style="text-align:center;">Personal de salud</th scope="row" style="text-align:center;">
				<th scope="row" style="text-align:center;">Total de Dosis aplicadas</th scope="row" style="text-align:center;">
				<th scope="row" style="text-align:center;">ESAVIs No Graves</th scope="row" style="text-align:center;">
				<th scope="row" style="text-align:center;">ESAVIs Graves</th scope="row" style="text-align:center;">
				<th scope="row" style="text-align:center;">Mermas - Perdidas en Operación</th>
			</thead>
			<tbody>
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
				<tr>
					<td style="font-size:65%;"><?php echo $key2->nombre_juris; ?></td>
					<td style="font-size:65%;"><?php echo $key2->nombre_mpio; ?></td>
					<th scope="row" style="font-size:85%;"><?php echo $key2->nombre_sede; ?></th>
						<?php
							$idsede=$key2->id_sede;
							$pd3 = $db->rep_remesa_sede($idsede); //jala los totales de la tabla
							foreach($pd3 as $key3){
						?>
							<td style="text-align:center;"><?php $tot_vac_pob+=$key3->total_vac_pob; echo number_format($key3->total_vac_pob); ?></td>
							<td style="text-align:center;"><?php $tot_brig+=$key3->total_brig; echo number_format($key3->total_brig); ?></td>
							<td style="text-align:center;"><?php $tot_per_sal+=$key3->total_per_sal; echo number_format($key3->total_per_sal); ?></td>
							<td style="font-weight:bolder;text-align:center;"><?php $tot_dosis+=$key3->total_dosis; echo number_format($key3->total_dosis); ?></td>
							<td style="text-align:center;"><?php $tot_ENG+=$key3->total_ENG; echo number_format($key3->total_ENG); ?></td>
							<td style="text-align:center;"><?php $tot_EG+=$key3->total_EG; echo number_format($key3->total_EG); ?></td>
							<td style="text-align:center;"><?php $tot_mermas+=$key3->total_mermas; echo number_format($key3->total_mermas); ?></td>
						<?php
							}
						?>
					</tr>
					<?php
						}
					?>
					<tr style="background-color:#add8e6; color:black; font-weight:bolder;">
							<th scope="row" colspan="3" style="text-align:center;">TOTALES</th>
							<th scope="row" style="text-align:center;"><?php echo number_format($tot_vac_pob); ?></th>
							<th scope="row" style="text-align:center;"><?php echo number_format($tot_brig); ?></th>
							<th scope="row" style="text-align:center;"><?php echo number_format($tot_per_sal); ?></th>
							<th scope="row" style="text-align:center;"><?php echo number_format($tot_dosis); ?></th>
							<th scope="row" style="text-align:center;"><?php echo number_format($tot_ENG); ?></th>
							<th scope="row" style="text-align:center;"><?php echo number_format($tot_EG); ?></th>
							<th scope="row" style="text-align:center;"><?php echo number_format($tot_mermas); ?></th>
						</tr>
					</tbody>
				</table>
 </div>
</center>
</div>
