<?php
	require_once("db_.php");
	$idproceso=$_REQUEST['idproceso'];
  $tabla=$_REQUEST['tabla'];
	$fechareporte=$_REQUEST['fechareporte'];
	$pd2=$db->reporte_dia_seleccionado($fechareporte,$tabla,$idproceso);
?>
<div class="container">
<center>
<div style="color:black;">
	<input type='hidden' value='<?php echo $idproceso; ?>' readonly>
	<input type='hidden' value='<?php echo $tabla; ?>' readonly><br>
	<input type='hidden' value='<?php echo $fechareporte; ?>' readonly><br>
		<table style="background-color: white;">
			<thead class='card-header text-white bg-dark' colspan="10" style="text-align:center;">
				Avance en la aplicación de vacuna anti COVID-19 del día <b><?php echo date("d / M / Y", strtotime($fechareporte));?></b>
			</thead>
	  </table>
		<br>
		<table class="table table-striped" style="border: 1px solid darkgray; color:black;">
	  <thead class="thead-dark" style="font-weight:bold;font-size:80%;">
				<th scope="row" style="text-align:center;">Jurisdicción</th>
				<th scope="row" style="text-align:center;">Municipio</th>
				<th scope="row" style="text-align:center;">Sede</th>
				<th scope="row" style="text-align:center;">Dosis aplicadas a población</th>
					<?php
						if($tabla!=3){
								echo "<th scope='row' style='text-align:center;'>Dosis aplicadas a Mujeres Embarazadas</th scope='row' style='text-align:center;'>";
						}	?>
				<th scope="row" style="text-align:center;">Brigadistas vacunados</th>
				<th scope="row" style="text-align:center;">Personal de salud</th>
				<th scope="row" style="text-align:center;">Total de Dosis aplicadas</th>
				<th scope="row" style="text-align:center;">ESAVIs No Graves</th>
				<th scope="row" style="text-align:center;">ESAVIs Graves</th>
				<th scope="row" style="text-align:center;">Mermas / Perdidas en Operación</th>
			</thead>
			<tbody>
			<?php
				$tot_vac_pob=0;
				$tot_vac_emb=0;
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
							$idunico=$key2->id_unico;
							$pd3 = $db->rep_fecha_sede($fechareporte,$tabla,$idunico);
							foreach($pd3 as $key3){
						?>
							<td style="text-align:center;"><?php $tot_vac_pob+=$key3->total_vac_pob; echo number_format($key3->total_vac_pob); ?></td>
							<?php
								if($tabla!=3){
										$tot_vac_emb+=$key3->total_vac_emb;
										echo "<td style='text-align:center;''>".number_format($key3->total_vac_emb)."</td>";
								}
							?>
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
					<tr style="background-color:#ffeb9c; color:black; font-weight:bolder;">
							<th scope="row" colspan="3" style="text-align:center;">TOTALES</th>
							<th scope="row" style="text-align:center;"><?php echo number_format($tot_vac_pob); ?></th>
							<?php
								if($tabla!=3){
										echo "<th scope='row' style='text-align:center;'>".number_format($tot_vac_emb)."</th>";
								}	?>
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
