<?php
	require_once("db_.php");
	$pd = $db->listado_loca();
?>

<div class="container">

	<table class="table table-sm table-striped table-dark">
		<thead>
	    <tr>
	      <th scope="col" style="vertical-align: middle; text-align:center;">Localidad</th>
				<th scope="col" style="vertical-align: middle; text-align:center;">Jurisdicción de la Localidad</th>
			  <th scope="col" style="vertical-align: middle; text-align:center;">Municipio de la Localidad</th>
				<th scope="col" style="vertical-align: middle; text-align:center;">Centro de Salud de referencia</th>
				<th scope="col" style="vertical-align: middle; text-align:center;">Institución</th>
				<th scope="col" style="vertical-align: middle; text-align:center;">Población Total</th>
	    </tr>
	  </thead>
	  <tbody>
			<?php
				foreach($pd as $localidad)
				{
					$nom_loc=$localidad->nom_loca;
					$juris_loc=$localidad->jur;
					$mpio_loc=$localidad->mpio;
					$id_unidad=$localidad->id_clues;
					$unidad=$localidad->unidad;
					$instit=$localidad->institucion;
					$poblacion=$localidad->pob_total;
					$idcatregio2019=$localidad->id_catregio2019;
			?>
					<tr>
						<td style="vertical-align: middle;font-weight:bolder;"><?php echo $nom_loc; ?></td>
						<td style="vertical-align: middle;text-align:center;font-size: 85%;"><?php echo $juris_loc; ?></td>
						<td style="vertical-align: middle;text-align:center;font-size: 85%;"><?php echo $mpio_loc; ?></td>
						<td style="vertical-align: middle;text-align:center;font-size: 85%;"><?php echo $unidad; ?></td>
						<td style="vertical-align: middle;text-align:center;font-size: 85%;"><?php echo $instit; ?></td>
						<td style="vertical-align: middle;text-align:center;font-weight:bold;"><?php echo $poblacion; ?></td>
						<td>
							<button class='btn btn-warning' type="button" is="b-link" des='a_regio2019/detalle_loc' dix='trabajo' tp="edit" v_idcatregio2019='<?php echo $idcatregio2019; ?>' title='Detalles de la localidad'>Detalles</button>
						</td>

					</tr>
			<?php
				}
			?>
		</tbody>
	</table>
</div>
