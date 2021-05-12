<?php
	require_once("db_.php");
	$id_proceso=$_REQUEST['idproceso'];
	$nombre_proceso="";
	if($id_proceso>0){
		$pd = $db->proceso_editar($id_proceso);
		$nombre_proceso=$pd->nombre_proceso;
	}
?>

<div class="container">
<form is="f-submit" id="form_personal" db="a_datosvacuna/db_" fun="guardar_proceso" des="a_datosvacuna/editar_proceso" desid="idproceso" v_idproceso="<?php echo $id_proceso; ?>">
	<input type="hidden" class="form-control form-control-sm" name="id_proceso" id="id_proceso" value="<?php echo $id_proceso ;?>" placeholder="No" readonly>
	<div class='card'>
		<div class='card-header text-white bg-secondary'>
			<b>Datos</b>
		</div>

		<div class='card-body'>
			<div class='row'>
				<div class="col-12">
					<label for="">Nombre del proceso:</label>
					<input type="text" class="form-control form-control" name="nombre_proceso" id="nombre_proceso" value="<?php echo $nombre_proceso ;?>" placeholder="Nombre del proceso de vacunación" required>
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
