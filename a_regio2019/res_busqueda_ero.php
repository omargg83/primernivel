<?php
	require_once("db_.php");
  $buscar=$_REQUEST['buscar'];
  $opcion=$_REQUEST['opcion_buscar'];
	//echo $opcion;
	/////////se guarda en un puntero $res el resultado
	$pag=0;
	$texto="";
	if(isset($_REQUEST['pag'])){
		$pag=$_REQUEST['pag'];
	}
	$res=$db->buscar_localidad($buscar,$opcion,$pag);
	//echo print_r($res);
	///foreach es un while que recorre el puntero y lo extrae en $v2 para mostrar
	/*echo "<table>";
	foreach($res as $v2){
		echo "<tr>";
		echo "<td>";
		if($opcion==1){
		echo $v2->nombre_juris;
		echo $v2->nombre_mpio;
		echo $v2->nombre_clues;
  	echo $v2->clv_clues;
		}else{
		echo $v2->nombre_localidad;}

		echo "</td>";
		echo "<tr>";
	}
	echo "</table>";*/
?>

<div class="container">
	<div class='tabla_v' id='tabla_css'>

		<?php if($opcion==1){ ?>
			<div class='header-row'>
				<div class='cell'>CLUES</div>
				<div class='cell'>Nombre unidad</div>
				<div class='cell'>Jurisdicción</div>
				<div class='cell'>Municipio</div>
				<div class='cell'></div>
			</div>

				<?php
					foreach($res as $localidad)
					{
						$clues=$localidad->clv_clues;
						$nom_clues=$localidad->nombre_clues;
						$nombre_juris=$localidad->nombre_juris;
						$nombre_mpio=$localidad->nombre_mpio;
						//$idcatregio2019=$localidad->id_catregio2019;
				?>
						<div class='body-row' draggable='true'>
							<div class='cell' data-titulo='CLUES'><b><?php echo $clues; ?></b></div>
							<div class='cell' data-titulo='Nombre unidad'><?php echo $nom_clues; ?></div>
							<div class='cell' data-titulo='Jurisdicción'><?php echo $nombre_juris; ?></div>
							<div class='cell' data-titulo='Municipio'><?php echo $nombre_mpio; ?></div>
							<div class='cell' data-titulo=''>
								<button class='btn btn-warning' type="button" is="b-link" des='a_regio2019/detalle_loc' dix='trabajo' tp="edit" v_idcatregio2019='<?php //echo $idcatregio2019; ?>' title='Detalles de la CLUES'>Detalles</button>
							</div>

						</div>
				<?php
					}
				}
		else if($opcion==2){ ?>
			<div class='header-row'>
				<div class='cell'>Localidad</div>
				<div class='cell'>Jurisdicción de la Localidad</div>
				<div class='cell'>Municipio de la Localidad</div>
				<div class='cell'></div>
			</div>

				<?php
					foreach($res as $localidad)
					{
						$nom_loc=$localidad->nombre_localidad;
						$juris_loc=$localidad->nombre_juris;
						$mpio_loc=$localidad->nombre_mpio;
						$idcatregio2019=$localidad->id_catregio2019;
				?>
						<div class='body-row' draggable='true'>
							<div class='cell' data-titulo='Localidad'><b><?php echo $nom_loc; ?></b></div>
							<div class='cell' data-titulo='Jurisdicción'><?php echo $juris_loc; ?></div>
							<div class='cell' data-titulo='Municipio'><?php echo $mpio_loc; ?></div>
							<div class='cell' data-titulo=''>
								<button class='btn btn-warning' type="button" is="b-link" des='a_regio2019/detalle_loc' dix='trabajo' tp="edit" v_idcatregio2019='<?php echo $idcatregio2019; ?>' title='Detalles de la localidad'>Detalles</button>
							</div>

						</div>
				<?php
					}
				}
			else if($opcion==3){ ?>
	<div class='header-row'>
		<div class='cell'>Localidad</div>
		<div class='cell'>Jurisdicción de la Localidad</div>
		<div class='cell'>Municipio de la Localidad</div>
		<div class='cell'></div>
	</div>

		<?php
			foreach($res as $localidad)
			{
				$nom_loc=$localidad->nombre_localidad;
				$juris_loc=$localidad->nombre_juris;
				$mpio_loc=$localidad->nombre_mpio;
				$idcatregio2019=$localidad->id_catregio2019;
		?>
				<div class='body-row' draggable='true'>
					<div class='cell' data-titulo='Localidad'><b><?php echo $nom_loc; ?></b></div>
					<div class='cell' data-titulo='Jurisdicción'><?php echo $juris_loc; ?></div>
					<div class='cell' data-titulo='Municipio'><?php echo $mpio_loc; ?></div>
					<div class='cell' data-titulo=''>
						<button class='btn btn-warning' type="button" is="b-link" des='a_regio2019/detalle_loc' dix='trabajo' tp="edit" v_idcatregio2019='<?php echo $idcatregio2019; ?>' title='Detalles de la localidad'>Detalles</button>
					</div>

				</div>
		<?php
			}
		}
		?>

	</div>
	  <div class='card-footer'>
			<div class="col-sm-12">
				<br>
				<button class="btn btn-danger btn-sm" type="button" is="b-link" des="a_regio2019/busqueda_ero2" dix="trabajo"><i class="fas fa-undo"></i>       Regresar</button>
			</div>
		</div>
</div>

<?php
		//////////poner la misma consulta de listado_local para obtener el numero de registros
		if($opcion==1){
			//Busca todos los centros de salud de la SSH (id_inst=12) con tipo de consulta externa (id_tipoesta=1)
			$sql="select `cat_jurisdicciones`.`nombre_juris`, `cat_municipios`.`nombre_mpio`,`cat_clues`.`clv_clues`, `cat_clues`.`nombre_clues`
						from `cat_clues`
							left join `cat_jurisdicciones` on `cat_clues`.`id_juris` = `cat_jurisdicciones`.`id_juris`
							left join `cat_municipios` on `cat_clues`.`id_mpio` = `cat_municipios`.`id_mpio`
						where cat_clues.nombre_clues like '%".$buscar."%' and cat_clues.id_tipoesta=1 and cat_clues.id_inst=12
						order by cat_clues.id_juris asc";
		}
		else if($opcion==2){
			//busca todas las localidades incluyendo AGEBs
			$sql="select cat_regio2019.id_catregio2019, cat_regio2019.nombre_localidad, cat_jurisdicciones.nombre_juris, cat_municipios.nombre_mpio
						from cat_regio2019
						left join cat_jurisdicciones on cat_regio2019.id_juris_cs = cat_jurisdicciones.id_juris
						left join cat_municipios on cat_regio2019.id_mpio_cs = cat_municipios.id_mpio
						where cat_regio2019.nombre_localidad like '%".$buscar."%'
						order by cat_regio2019.nombre_localidad asc";
		}
		else if($opcion==3){
			//busca todas las localidades SIN AGEBs
			$sql="select `cat_regio2019`.`id_catregio2019`,`cat_regio2019`.`nombre_localidad`,`cat_jurisdicciones`.`nombre_juris`, `cat_municipios`.`nombre_mpio`
						from `cat_regio2019`
							left join `cat_jurisdicciones` on `cat_regio2019`.`id_juris_cs` = `cat_jurisdicciones`.`id_juris`
							left join `cat_municipios` on `cat_regio2019`.`id_mpio_cs` = `cat_municipios`.`id_mpio`
						where cat_regio2019.nombre_localidad like '%".$buscar."%'
						and cat_regio2019.nombre_localidad not in (select `cat_regio2019`.`nombre_localidad`
																											 from `cat_regio2019`
																											 where  cat_regio2019.nombre_localidad like '%ageb%')
						order by cat_regio2019.nombre_localidad asc";
		}

		$sth = $db->dbh->query($sql);
		$contar=$sth->fetch(PDO::FETCH_OBJ);
		$paginas=ceil($contar->total/$_SESSION['pagina']);
		$pagx=$paginas-1;

		echo $db->paginar($paginas,$pag,$pagx,"a_regio2019/res_busqueda_ero","trabajo");

?>
