<?php
	require_once("db_.php");
	$pd = $db->lista_sedes();
?>

<div class="container">
	<center>
		<div class="list-group col-6">
			<li class="list-group-item list-group-item-dark">
				<a class='a link' title='Nueva sede de vacunación' id='new_personal'  is='a-link' des='a_datosvacuna/editar_sede' dix='trabajo' v_idsede='0'><i class='fas fa-plus'></i> Nueva sede para vacunación anti COVID-19</a>
			</li>
			<br>
		</div>

	<table class="table table-striped table-dark">
		<thead>
	    <tr>
	      <th scope="col" style="vertical-align: middle;text-align:center;"></th>
				<th scope="col" style="vertical-align: middle;text-align:center;">Municipio</th>
				<th scope="col" style="vertical-align: middle;text-align:center;">Sede</th>
	      <th scope="col" width="37%">Proceso de Vacunación</th>
				<th scope="col" width="3%" style="vertical-align: middle;text-align:center;">Activa</th>
	    </tr>
	  </thead>
	  <tbody>
			<?php
				foreach($pd as $key){
			?>
					<tr>
						<td style="vertical-align: middle;text-align:center;">
							<button class='btn btn-warning' type="button" is="b-link" des='a_datosvacuna/editar_sede' dix='trabajo' tp="edit" v_idsede='<?php echo $key->id_sede; ?>' title='Editar sede (nombre, CLUES asociada, etc.)'>Editar</button>
						</td>
						<td style="vertical-align: middle;"><?php echo $key->nombre_mpio; ?></td>
						<td style="vertical-align: middle;"><?php echo $key->nombre_sede; ?></td>
						<td style="vertical-align: middle;font-size:75%;"><?php echo $key->nombre_proceso; ?></td>
						<td style="vertical-align: middle;text-align:center;font-weight: 700;"><?php $sa=$key->sede_activa; if($sa==1){echo "SI";}else{echo "NO";}; ?></td>
					</tr>
			<?php
				}
			?>
		</tbody>
	</table>
</center>
</div>
