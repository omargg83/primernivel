<?php
	require_once("db_.php");
	$id_sede=$_REQUEST['idsede'];
	if($id_sede>0){
		$pd = $db->nombre_sede($id_sede);
		$pd2 = $db->fechas_sede_50a59($id_sede);
		$pd3 = $db->fechas_sede_60ymas($id_sede);
		$pd4 = $db->fechas_sede_SEPH($id_sede);
		$pd5 = $db->fechas_sede_40a49($id_sede);
	}
?>
<div class="container">
	<table class="table table-striped table-dark">
		<thead>
			<?php
				foreach($pd as $key){ ?>
					<tr>
						<th colspan="3" scope="row" class="bg-primary" style="text-align:center;font-weight: 900;vertical-align: middle;"><?php echo "Municipio: ".$key->nombre_mpio." <br> Sede: ".$key->nombre_sede;?></th>
					</tr>
			<?php	}	?>
	    <tr>
				<th scope="col"></th>
				<th scope="col">Fecha vacunación</th>
				<th scope="col">Proceso</th>
	    </tr>
	  </thead>
	  <tbody>
		<?php
			foreach($pd4 as $key){ ?>
				<tr>
					<td  style="vertical-align: middle;">
						<button class='btn btn-warning' type="button" is="b-link" des='a_consul_vac_covid/ver_inf_vac_seph' dix='trabajo' tp="edit" v_iddetvac='<?php echo $key->id_det_vac_seph; ?>' title='Visualizar reporte'>Visualizar reporte</button>
					</td>
					<th scope="row" style="font-weight: 800;vertical-align: middle;"><?php $originalDate = $key->fecha_reporte;
							$newDate = date("d / M / Y", strtotime($originalDate)); echo $newDate; ?>
					</th>
					<td scope="row" style="vertical-align: middle;">Vacunación contra COVID-19 a <b style="font-weight: bold;font-size: 110%"> personal educativo [SEPH] <?php if($key->num_dosis==4){echo " única dosis";}else{echo $key->num_dosis."ª dosis";} ?></b></td>
				</tr>
		<?php	}
				foreach($pd2 as $key){ ?>
					<tr>
						<td>
							<button class='btn btn-warning' type="button" is="b-link" des='a_consul_vac_covid/ver_inf_vac_50ymas' dix='trabajo' tp="edit" v_iddetvac='<?php echo $key->id_det_vac_50a59; ?>' title='Visualizar reporte'>Visualizar reporte</button>
						</td>
						<th scope="row" style="font-weight: 800;vertical-align: middle;"><?php $originalDate = $key->fecha_reporte;
								$newDate = date("d / M / Y", strtotime($originalDate)); echo $newDate; ?>
						</th>
						<td scope="row" style="vertical-align: middle;">Vacunación contra COVID-19 a población de<b style="font-weight: bold;font-size: 110%"> 50 a 59 años - <?php if($key->num_dosis==4){echo " única dosis";}else{echo $key->num_dosis."ª dosis";} ?></b></td>
					</tr>
			<?php	}
			foreach($pd3 as $key){ ?>
				<tr>
					<td>
						<button class='btn btn-warning' type="button" is="b-link" des='a_consul_vac_covid/ver_inf_vac_60ymas' dix='trabajo' tp="edit" v_iddetvac='<?php echo $key->id_det_vac_60ymas; ?>' title='Visualizar reporte'>Visualizar reporte</button>
					</td>
					<th scope="row" style="font-weight: 800;vertical-align: middle;"><?php $originalDate = $key->fecha_reporte;
							$newDate = date("d / M / Y", strtotime($originalDate)); echo $newDate; ?>
					</th>
					<td scope="row" style="vertical-align: middle;">Vacunación contra COVID-19 a población de<b style="font-weight: bold;font-size: 110%"> 60 años y más - <?php if($key->num_dosis==4){echo " única dosis";}else{echo $key->num_dosis."ª dosis";} ?></b></td>
				</tr>
		<?php	}	foreach($pd5 as $key){ ?>
			<tr>
				<td>
					<button class='btn btn-warning' type="button" is="b-link" des='a_consul_vac_covid/ver_inf_vac_40ymas' dix='trabajo' tp="edit" v_iddetvac='<?php echo $key->id_det_vac_40a49; ?>' title='Visualizar reporte'>Visualizar reporte</button>
				</td>
				<th scope="row" style="font-weight: 800;vertical-align: middle;"><?php $originalDate = $key->fecha_reporte;
						$newDate = date("d / M / Y", strtotime($originalDate)); echo $newDate; ?>
				</th>
				<td scope="row" style="vertical-align: middle;">Vacunación contra COVID-19 a población de<b style="font-weight: bold;font-size: 110%"> 40 a 49 años - <?php if($key->num_dosis==4){echo " única dosis";}else{echo $key->num_dosis."ª dosis";} ?></b></td>
			</tr>
	<?php	}	?>
		</tbody>
	</table>
</div>
