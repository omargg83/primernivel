<?php
	date_default_timezone_set('America/Mexico_City');
	require_once("db_.php");
	$id_remesa=$_REQUEST['idremesa'];

	$nombre_remesa = "";
	$fecha_recepcion = "";
	$cant_frasco = "";
	$cant_dosis = "";
	$lote = "";
	$nombre_remesa = "";
	$destinado = "";
	$lista_bio = $db->lista_bio();
	$lista_procesos = $db->lista_procesos();
	$fecha_recepcion = "";

		if($id_remesa>0){
			$pd = $db->remesa_editar($id_remesa);
			$id_bio = $pd->id_bio;
			$id_proceso = $pd->id_proceso;
			$fecha_recepcion = $pd->fecha_recepcion;
			$cant_frasco = $pd->cant_frasco;
			$cant_dosis = $pd->cant_dosis;
			$lote = $pd->lote;
			$nombre_remesa = $pd->nombre_remesa;
			$destinado = $pd->destinado;
			$lista_bio = $db->lista_bio();
			$lista_procesos = $db->lista_procesos();
		}
?>
	<div class="container">
	<form is="f-submit" id="form_personal" db="a_datosvacuna/db_" fun="guardar_remesa" des="a_datosvacuna/editar_remesa" desid="idremesa" v_idremesa="<?php echo $id_remesa; ?>">
		<input type="hidden" class="form-control form-control-sm" name="id_remesa" id="id_remesa" value="<?php echo $id_remesa;?>" placeholder="No" readonly>
		<div class='card'>
			<div class='card-header text-white bg-secondary'>
				<b>Datos</b>
			</div>

			<div class='card-body' style="color:black;">
				<div class='row'>
					<div class="col-5">
						<label for="">Nombre de la remesa:</label>
						<input type="text" class="form-control form-control-sm" name="nombre_remesa" id="nombre_remesa" value="<?php echo $nombre_remesa ;?>" placeholder="Nombre de la remesa" required>
					</div>
					<div class="col-7">
						<label for="">Destinado para:</label>
						<input type="text" class="form-control form-control-sm" name="destinado" id="destinado" value="<?php echo $destinado;?>" placeholder="Especifique el uso de la remesa" required>
					</div>
				</div>
				<div class='row'>
					<div class="col-3">
						<label for="">Fecha recepción (aaaa-mm-dd):</label>
						<input type="text" class="form-control form-control-sm" name="fecha_recepcion" id="fecha_recepcion" value="<?php echo $fecha_recepcion;?>" placeholder="Fecha de recepción (aaaa-mm-dd)" required>
					</div>
					<div class="col-3">
						<label for="">Frascos recibidos:</label>
						<input type="text" class="form-control form-control-sm" name="cant_frasco" id="cant_frasco" value="<?php echo $cant_frasco;?>" placeholder="Total de viales (frascos) recibidos" required>
					</div>
					<div class="col-3">
						<label for="">Dosis recibidas:</label>
						<input type="text" class="form-control form-control-sm" name="cant_dosis" id="cant_dosis" value="<?php echo $cant_dosis;?>" placeholder="Total de viales (frascos) recibidos" required>
					</div>
					<div class="col-3">
						<label for="">Lote(s) de viales:</label>
						<input type="text" class="form-control form-control-sm" name="lote" id="lote" value="<?php echo $lote;?>" placeholder="Lote(s) recibido(s) en la remesa" required>
					</div>

				</div>
				<div class='row'>
					<div class="col-3">
						<label for="">Biológico recepcionado:</label>
						<select class="form-control form-control-sm" name='id_bio' id='id_bio' required>";
							<option value="" disabled selected hidden>Biologico</option>
							<?php
								foreach($lista_bio as $pd2){
									if($id_bio==$pd2->id_bio){
										echo"<option value='".$pd2->id_bio."' selected class='form-control'>".$pd2->nombre_bio."</option> ";
									}
									else{
											 echo"<option value='".$pd2->id_bio."' class='form-control'>".$pd2->nombre_bio."</option>";
										 }
										}
							?>
						</select>
					</div>
					<div class="col-7">
						<label for="">Proceso de vacunación:</label>
						<select class="form-control form-control-sm" name='id_proceso' id='id_proceso' required>";
							<option value="" disabled selected hidden>Proceso</option>
							<?php
								foreach($lista_procesos as $pd3){
									if($id_proceso==$pd3->id_proceso){
										echo"<option value='".$pd3->$id_proceso."' selected class='form-control'>".$pd3->nombre_proceso."</option> ";
									}
									else{
											 echo"<option value='".$pd3->$id_proceso."' class='form-control'>".$pd3->nombre_proceso."</option>";
										 }
										}
							?>
						</select>
					</div>
				</div>
			</div>
	    <div class='card-footer'>
				<div class='row'>
					<div class="col-12">
						<button class="btn btn-warning" type="submit"><i class='far fa-save'></i>  Guardar </button>
						<button class="btn btn-danger" type="button" is="b-link" des="a_datosvacuna/lista_remesas" dix="trabajo"><i class="fas fa-undo"></i> Regresar </button>
					</div>
				</div>
			</div>

		</div>
	</form>
	</div>
