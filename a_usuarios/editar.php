<?php
	require_once("db_.php");

	$idusuario=$_REQUEST['idusuario'];

	$nombre="";
	$ap_paterno="";
	$ap_materno="";
	$autoriza="";
	$nivel="";
	$correo="";
	$foto="";
	if($idusuario>0){
		$pd = $db->usuario_editar($idusuario);
		$nombre=$pd->nombre;
		$ap_paterno=$pd->ap_paterno;
		$ap_materno=$pd->ap_materno;
		$email=$pd->email;

	}
?>

<div class="container">
	<form is="f-submit" id="form_personal" db="a_usuarios/db_" fun="guardar_usuario" des="a_usuarios/editar" desid="idusuario" v_idusuario="<?php echo $idusuario; ?>">
		<input type="hidden" class="form-control form-control-sm" name="idusuario" id="idusuario" value="<?php echo $idusuario ;?>" placeholder="No" readonly>
		<div class='card'>
		<div class='card-header'>
			Usuarios
		</div>
		<div class='card-body'>

			<div class='row'>
				<div class="col-4">
					<label for="">Nombre:</label>
					<input type="text" class="form-control form-control-sm" name="nombre" id="nombre" value="<?php echo $nombre ;?>" placeholder="Nombre" required>
				</div>

				<div class="col-3">
					<label for="">Apellido Paterno:</label>
					<input type="text" class="form-control form-control-sm" name="ap_paterno" id="ap_paterno" value="<?php echo $ap_paterno ;?>" placeholder="Apellido Paterno" required>
				</div>

				<div class="col-3">
					<label for="">Apellido Materno:</label>
					<input type="text" class="form-control form-control-sm" name="ap_materno" id="ap_materno" value="<?php echo $ap_materno;?>" placeholder="Apellido Materno">
				</div>

				<div class="col-4">
					<label for="">Correo:</label>
					<input type="text" class="form-control form-control-sm" name="email" id="email" value="<?php echo $email ;?>" placeholder="Usuario" >
				</div>

			</div>
		</div>

		<div class='card-footer'>
			<div class='row'>
				<div class="col-sm-12">

					<button class="btn btn-warning btn-sm" type="submit"><i class='far fa-save'></i>Guardar</button>
				
					<button class="btn btn-warning btn-sm" type="button" is="b-link" des="a_usuarios/lista" dix="trabajo"><i class="fas fa-undo"></i>Regresar</button>
				</div>
			</div>
		</div>
	</div>
	</form>
</div>
