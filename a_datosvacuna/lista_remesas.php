<?php
	require_once("db_.php");
	$pd = $db->lista_remesas();
?>

<div class="container">
<center>
	<div class="list-group col-6">
		<li class="list-group-item list-group-item-dark">
			<a class='a link' title='Nueva remesa' id='new_personal'  is='a-link' des='a_datosvacuna/editar_remesa' dix='trabajo' v_idremesa='0'><i class='fas fa-plus'></i> Nueva remesa de biológico contra COVID-19</a>
		</li>
		<br>
	</div>
	<table class="table table-striped">
		<thead>
	    <tr>
	      <th scope="col"></th>
	      <th scope="col">Nombre Remesa</th>
				<th scope="col">Biológico</th>
				<th scope="col" style="vertical-align: middle;text-align:center;">Fecha de remesa</th>
	    </tr>
	  </thead>
	  <tbody>
			<?php
				foreach($pd as $key){
			?>
					<tr>
						<td  style="vertical-align: middle;">
							<button class='btn btn-warning' type="button" is="b-link" des='a_datosvacuna/editar_remesa' dix='trabajo' tp="edit" v_idremesa='<?php echo $key->id_remesa; ?>' title='Ver datos de remesa'><i class="fas fa-eye"></i> Ver datos</button>
						</td>
						<td style="vertical-align: middle;"><?php echo $key->nombre_remesa; ?></td>
						<td style="vertical-align: middle;"><?php echo $key->nombre_bio; ?></td>
						<td style="font-family: Courier;vertical-align: middle;text-align:center;"><?php     $oD=$key->fecha_recepcion; echo date("d/M/Y", strtotime($oD)); ; ?></td>
					</tr>
			<?php
				}
			?>
		</tbody>
	</table>
</center>
</div>
