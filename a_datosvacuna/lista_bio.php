<?php
	require_once("db_.php");
	$pd = $db->lista_bio();
?>

<div class="container">
<center>
	<div class="list-group col-6">
		<li class="list-group-item list-group-item-dark">
			<a class='a link' title='Nuevo biológico' id='new_personal'  is='a-link' des='a_datosvacuna/editar_bio' dix='trabajo' v_idbio='0'><i class='fas fa-plus'></i> Añadir biológico para proceso de vacunación contra COVID-19</a>
		</li>
		<br>
	</div>
	<table class="table table-striped table-dark" style="max-width:50%;">
		<thead>
	    <tr>
	      <th scope="col"></th>
				<th scope="col" style="text-align:center;">ID biológico</th>
	      <th scope="col">Nombre del biológico</th>
	    </tr>
	  </thead>
	  <tbody>
			<?php
				foreach($pd as $key){
			?>
					<tr>
						<td>
							<button class='btn btn-warning' type="button" is="b-link" des='a_datosvacuna/editar_bio' dix='trabajo' tp="edit" v_idbio='<?php echo $key->id_bio; ?>' title='Editar biológico'>Editar</button>
						</td>
						<td style="font-family: Courier;vertical-align: middle;text-align:center;"><?php echo $key->id_bio; ?></td>
						<td style="vertical-align: middle;"><?php echo $key->nombre_bio; ?></td>
					</tr>
			<?php
				}
			?>
		</tbody>
	</table>
</center>
</div>
