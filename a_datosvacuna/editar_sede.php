<?php
	date_default_timezone_set('America/Mexico_City');
	require_once("db_.php");
	$idsede=$_REQUEST['idsede'];

	$nombre_sede = "";
	$clues_sede = "";
	$sede_activa = 1;
	$lista_juris = $db->lista_juris();
	$lista_mpio =  $db->lista_mpio();
	$lista_remesas = $db->lista_remesas();
	$lista_procesos = $db->lista_procesos();
	if($idsede>0){
			$pd = $db->sede_editar($idsede);
			$id_juris = $pd->id_juris;
			$id_mpio = $pd->id_mpio;
			$id_remesa = $pd->id_remesa;
			$id_proceso = $pd->id_proceso;
			$clues_sede = $pd->clues_sede;
			$nombre_sede = $pd->nombre_sede;
			$sede_activa = $pd->sede_activa;
			$lista_juris = $db->lista_juris();
			$lista_mpio =  $db->lista_mpio();
			$lista_remesas = $db->lista_remesas();
			$lista_procesos = $db->lista_procesos();
		}
?>
	<div class="container">
	<form is="f-submit" id="form_personal" db="a_datosvacuna/db_" fun="guardar_sede" des="a_datosvacuna/editar_sede" desid="idsede" v_idsede="<?php echo $idsede; ?>">
		<input type="hidden" class="form-control form-control-sm" name="id_sede" id="id_sede" value="<?php echo $idsede;?>" placeholder="No" readonly>
		<div class='card'>
			<div class='card-header text-white bg-secondary'>
				<b>Datos</b>
			</div>

			<div class='card-body' style="color:black;">
				<div class='row'>
					<div class="col-8">
						<label for="">Nombre de la sede:</label>
						<input type="text" class="form-control form-control-sm" name="nombre_sede" id="nombre_sede" value="<?php echo $nombre_sede ;?>" placeholder="Nombre de la sede de vacunación" required>
					</div>
					<div class="col-4">
						<label for="">CLUES asignada:</label>
						<input type="text" class="form-control form-control-sm" name="clues_sede" id="clues_sede" value="<?php echo $clues_sede;?>" placeholder="CLUES donde resguardará el biológico" required>
					</div>
				</div>
				<div class='row'>
					<div class="col-6">
						<label for="">Proceso de vacunación:</label>
						<select class="form-control form-control-sm" name='id_proceso' id='id_proceso' required>";
							<option value="" disabled selected hidden>Proceso</option>
							<?php
								foreach($lista_procesos as $pd1){
									if($id_proceso==$pd1->id_proceso){
										echo"<option value='".$pd1->$id_proceso."' selected class='form-control'>".$pd1->nombre_proceso."</option> ";
									}
									else{
											 echo"<option value='".$pd1->$id_proceso."' class='form-control'>".$pd1->nombre_proceso."</option>";
										 }
										}
							?>
						</select>
					</div>
					<div class="col-6">
						<label for="">Remesa de biológico que se aplicará:</label>
						<select class="form-control form-control-sm" name='id_remesa' id='id_remesa' required>";
							<option value="" disabled selected hidden>Biologico</option>
							<?php
								foreach($lista_remesas as $pd2){
									if($id_remesa == $pd2->id_remesa){
										echo"<option value='".$pd2->id_remesa."' selected class='form-control'>".$pd2->nombre_remesa."</option> ";
									}
									else{
											 echo"<option value='".$pd2->id_remesa."' class='form-control'>".$pd2->nombre_remesa."</option>";
										 }
										}
							?>
						</select>
					</div>
				</div>
				<div class='row'>
					<div class="col-5">
						<label for="">Jurisdicción Sanitaria:</label>
						<select class="form-control form-control-sm" name='id_juris' id='id_juris' required>";
							<option value="" disabled selected hidden>Jurisdicción Sanitaria</option>
							<?php
								foreach($lista_juris as $pd3){
									if($id_juris == $pd3->id_juris){
										echo"<option value='".$pd3->id_juris."' selected class='form-control'>".$pd3->clv_juris." - ".$pd3->nombre_juris."</option> ";
									}
									else{
											 echo"<option value='".$pd3->id_juris."' class='form-control'>".$pd3->clv_juris." - ".$pd3->nombre_juris."</option>";
										 }
										}
							?>
						</select>
					</div>
					<div class="col-5">
						<label for="">Municipio donde está la sede:</label>
						<select class="form-control form-control-sm" name='id_mpio' id='id_mpio' required>";
							<option value="" disabled selected hidden>Municipio de la sede</option>
							<?php
								foreach($lista_mpio as $pd4){
									if($id_mpio == $pd4->id_mpio){
										echo"<option value='".$pd4->id_mpio."' selected class='form-control'>".$pd4->nombre_mpio."</option> ";
									}
									else{
											 echo"<option value='".$pd4->id_mpio."' class='form-control'>".$pd4->nombre_mpio."</option>";
										 }
										}
							?>
						</select>
					</div>
					<div class="col-2">
						<label for="" style='font-weight:700;'>Sede activa:</label>
						<select class="form-control form-control-sm" name='sede_activa' id='sede_activa' required>";
							<?php
									if($sede_activa == 1){
										echo"<option value='1' selected class='form-control'>SI</option> ";
										echo"<option value='0' class='form-control'>NO</option> ";  		}
									else{	echo"<option value='1' class='form-control'>NO</option> ";
										echo"<option value='0' selected class='form-control'>NO</option> ";	 }
							?>
						</select>
					</div>
				</div>


			</div>
	    <div class='card-footer'>
				<div class='row'>
					<div class="col-12">
						<button class="btn btn-warning" type="submit"><i class='far fa-save'></i>  Guardar </button>
						<button class="btn btn-danger" type="button" is="b-link" des="a_datosvacuna/lista_sedes" dix="trabajo"><i class="fas fa-undo"></i> Regresar </button>
					</div>
				</div>
			</div>

		</div>
	</form>
	</div>
