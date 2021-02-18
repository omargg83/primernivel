<?php
	require_once("db_.php");

	$pag=0;
	$texto="";
	if(isset($_REQUEST['pag'])){
		$pag=$_REQUEST['pag'];
	}
	$pd = $db->listado_loca($pag);
?>

	<div class='container'>
		<div class='tabla_v' id='tabla_css'>

		<div class='header-row'>
			<div class='cell'>Localidad</div>
			<div class='cell'>Jurisdicción de la Localidad</div>
			<div class='cell'>Municipio de la Localidad</div>
			<div class='cell'>Centro de Salud de referencia</div>
			<div class='cell'>Institución</div>
			<div class='cell'>Población Total</div>
			<div class='cell'></div>
		</div>

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
					<div class='body-row' draggable='true'>
						<div class='cell' data-titulo='Localidad'><b><?php echo $nom_loc; ?></b></div>
						<div class='cell' data-titulo='Jurisdicción'><?php echo $juris_loc; ?></div>
						<div class='cell' data-titulo='Municipio'><?php echo $mpio_loc; ?></div>
						<div class='cell' data-titulo='CS referencia'><?php echo $unidad; ?></div>
						<div class='cell' data-titulo='Institución'><b><?php echo $instit; ?></b></div>
						<div class='cell' data-titulo='Población Total' style="text-align: center;"><?php echo $poblacion; ?></div>
						<div class='cell' data-titulo=''>
							<button class='btn btn-warning' type="button" is="b-link" des='a_regio2019/detalle_loc' dix='trabajo' tp="edit" v_idcatregio2019='<?php echo $idcatregio2019; ?>' title='Detalles de la localidad'>Detalles</button>
						</div>

					</div>
			<?php
				}
			?>
		</div>

		<?php

				//////////poner la misma consulta de listado_local para obtener el numero de registros
				$sql="select count(id_catregio2019) as total
				FROM cat_regio2019
				left join cat_jurisdicciones on cat_regio2019.id_juris_loc = cat_jurisdicciones.id_juris
				left join cat_municipios on cat_regio2019.id_mpio_loc = cat_municipios.id_mpio
				left join cat_clues on cat_regio2019.id_clues = cat_clues.id_clues
				left join cat_instituciones on cat_clues.id_inst=cat_instituciones.id_inst
				order by cat_regio2019.id_catregio2019 asc";

				$sth = $db->dbh->query($sql);
				$contar=$sth->fetch(PDO::FETCH_OBJ);
				$paginas=ceil($contar->total/$_SESSION['pagina']);
				$pagx=$paginas-1;

				echo $db->paginar($paginas,$pag,$pagx,"a_regio2019/listado","trabajo");

		?>

	</div>
