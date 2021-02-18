<?php
	require_once("db_.php");
  $buscar=$_REQUEST['buscar'];
  $opcion=$_REQUEST['opcion_buscar'];
	//echo $opcion;
	/////////se guarda en un puntero $res el resultado
	$res=$db->buscar_localidad($buscar,$opcion);
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
	<input type="hidden" class="form-control form-control-sm" name="idusuario" id="idusuario" value="<?php echo $idusuario ;?>" placeholder="No" readonly>
	<div class="row">
		<div class="col-12">
			<div class="card">
				<div class="card-header">
						Resultados de búsqueda
				</div>
				<div class="card-body">
					<div class="card-text">
						<?php
						echo "<table>";
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
						echo "</table>";
						?>

							<!--p style="vertical-align:middle;">
								 <b><?php echo $buscar ;?></b>
							</p>
              <p style="vertical-align:middle;">
								 <b><?php echo $opcion ;?></b>
							</p-->
					</div>
				</div>

			</div>
		</div>
	  <div class='card-footer'>
			<div class="col-sm-12">
				<br>
				<button class="btn btn-danger btn-sm" type="button" is="b-link" des="a_regio2019/busqueda_ero2" dix="trabajo"><i class="fas fa-undo"></i>       Regresar</button>
			</div>
		</div>
	</div>
</div>
