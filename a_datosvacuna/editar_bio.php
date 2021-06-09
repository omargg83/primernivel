<?php
	require_once("db_.php");
	$id_bio=$_REQUEST['idbio'];
	$nombre_bio="";
	if($id_bio>0){
		$pd = $db->bio_editar($id_bio);
		$nombre_bio=$pd->nombre_bio;
	}
?>
<script src="librerias15/swal/dist/sweetalert2.min.js"></script>
<div class="container">
<form is="f-submit" id="form_personal" db="a_datosvacuna/db_" fun="guardar_bio" des="a_datosvacuna/editar_bio" desid="idbio" v_idbio="<?php echo $id_bio; ?>">
	<input type="hidden" class="form-control form-control-sm" name="id_bio" id="id_bio" value="<?php echo $id_bio ;?>" placeholder="No" readonly>
	<div class='card'>
		<div class='card-header text-white bg-secondary'>
			<b>Datos</b>
		</div>

		<div class='card-body'>
			<div class='row'>
				<div class="col-12">
					<label for="">Nombre del biológico contra COVID-19:</label>
					<input type="text" class="form-control form-control" name="nombre_bio" id="nombre_bio" value="<?php echo $nombre_bio ;?>" placeholder="Nombre del biológico de vacunación contra COVID-19" required>
				</div>
			</div>
		</div>

    <div class='card-footer'>
			<div class='row'>
				<div class="col-12">
					<button class="btn btn-warning" type="submit"><i class='far fa-save'></i>  Guardar </button>
					<button class="btn btn-danger" type="button" is="b-link" des="a_datosvacuna/lista" dix="trabajo"><i class="fas fa-undo"></i> Regresar </button>
				</div>
			</div>
		</div>

	</div>
</form>
</div>
