<?php
	require_once("db_.php");
	$pd = $db->usuario_lista();
?>

<div class="container">

	<table class="table table-striped table-dark">
		<thead>
	    <tr>
	      <th scope="col"></th>
	      <th scope="col">Nombre del usuario</th>
				<th scope="col">ID usuario</th>
	      <th scope="col" style="text-align:center;">Nivel</th>
	      <th scope="col">Correo electrónico</th>
	    </tr>
	  </thead>
	  <tbody>
			<?php
				foreach($pd as $key){
			?>
					<tr>
						<td>
							<button class='btn btn-warning' type="button" is="b-link" des='a_usuarios/editar' dix='trabajo' tp="edit" v_idusuario='<?php echo $key->id_usuario; ?>' title='editar'>Editar</button>
						</td>
						<td style="vertical-align: middle;"><?php echo $key->nombre." ".$key->ap_paterno." ".$key->ap_materno; ?></td>
						<td style="font-family: Courier;vertical-align: middle;"><?php echo $key->usuario; ?></td>
						<th scope="row" style="text-align:center;font-weight: 900;vertical-align: middle;"><?php echo $key->nivel; ?></th>
						<td style="vertical-align: middle;"><?php echo $key->email; ?></td>
					</tr>
			<?php
				}
			?>
		</tbody>
	</table>
</div>
