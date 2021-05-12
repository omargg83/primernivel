<?php
	require_once("db_.php");
	$pd = $db->lista_procesos();
?>

<div class="container">
<center>
<div class="list-group col-6">
	<li class="list-group-item list-group-item-dark">
		<a class='a link' title='Nuevo proceso' id='new_personal'  is='a-link' des='a_datosvacuna/editar_proceso' dix='trabajo' v_idproceso='0'><i class='fas fa-plus'></i> Nuevo proceso de vacunación contra COVID-19</a>
	</li>
	<br>
</div>
	<table class="table table-striped table-dark" style="max-width:60%;">
		<thead>
	    <tr>
	      <th scope="col"></th>
				<th scope="col" style="text-align:center;">ID proceso</th>
	      <th scope="col">Proceso de Vacunación</th>
	    </tr>
	  </thead>
	  <tbody>
			<?php
				foreach($pd as $key){
			?>
					<tr>
						<td style="text-align:center;">
							<button class='btn btn-warning' type="button" is="b-link" des='a_datosvacuna/editar_proceso' dix='trabajo' tp="edit" v_idproceso='<?php echo $key->id_proceso; ?>' title='Editar proceso de vacunación'>Editar</button>
						</td>
						<td style="font-family: Courier;vertical-align: middle;text-align:center;"><?php echo $key->id_proceso; ?></td>
						<td style="vertical-align: middle;"><?php echo $key->nombre_proceso; ?></td>
					</tr>
			<?php
				}
			?>
		</tbody>
	</table>
</center>
</div>
