<?php
	require_once("db_.php");
	$pd = $db->usuario_lista_vac_sedes50a59();
?>
<div class="container">

	<table class="table table-striped table-dark">
		<thead>
	    <tr>
	      <th scope="col"></th>
	      <th scope="col">Municipio de la Sede</th>
				<th scope="col">Nombre de la sede</th>
	    </tr>
	  </thead>
	  <tbody>
			<?php
				foreach($pd as $key){
			?>
					<tr>
						<td  style="vertical-align: middle;">
							<button class='btn btn-warning' type="button" is="b-link" des='a_consul_vac_covid/consul_vac_sede' dix='trabajo' tp="edit" v_idsede='<?php echo $key->id_sede; ?>' title='Ver'>Ver informes de sede</button>
						</td>
						<th scope="row" style="vertical-align: middle;"><?php echo $key->nombre_mpio; ?></th>
						<td style="vertical-align: middle;"><?php echo $key->nombre_sede; ?></td>
					</tr>
			<?php
				}
			?>
		</tbody>
	</table>
</div>
