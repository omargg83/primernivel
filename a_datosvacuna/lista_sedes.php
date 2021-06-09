<?php
	require_once("db_.php");
	$pd = $db->lista_procesos();
?>

<div class="container">
	<center>
	<table class="table table-striped" style="color:black;">
		<thead>
	    <tr>
	      <th colspan="2" scope="col" style="vertical-align: middle;text-align:center;" width="75%">Seleccione el Proceso de Vacunación para visualizar sus sedes</th>
	    </tr>
	  </thead>
	  <tbody>
			<?php
				foreach($pd as $key){
			?>
					<tr>
						<td style="vertical-align: middle;text-align:center;">
							<button class='btn btn-info' type="button" is="b-link" des='a_datosvacuna\lista_sedes_proceso' dix='trabajo' tp="edit" v_idproceso='<?php echo $key->id_proceso; ?>' title='Ver sedes de proceso de vacunación'><i class="fas fa-eye"></i> Ver Sedes</button>
						</td>
						<td style="vertical-align: middle;"><?php echo $key->nombre_proceso; ?></td>
					</tr>
			<?php
				}
			?>
		</tbody>
	</table>
</center>
</div>
