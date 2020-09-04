<?php
	require_once("db_.php");

	$idusuario=$_REQUEST['idusuario'];

	$nombre="";
	$ap_paterno="";
	$ap_materno="";
	$nivel="";
	$email="";
	$usuario="";
	$correo="";
	$lista_clues = $db->selecciona_clues();

	if($idusuario>0){
		$pd = $db->usuario_editar($idusuario);
		$lista_clues = $db->selecciona_clues();
		$nombre=$pd->nombre;
		$ap_paterno=$pd->ap_paterno;
		$ap_materno=$pd->ap_materno;
		$usuario=$pd->usuario;
		$clues=$pd->id_clues;
		$email=$pd->email;
	}
?>

<div class="container">
<form is="f-submit" id="form_personal" db="a_usuarios/db_" fun="guardar_usuario" des="a_usuarios/editar" desid="idusuario" v_idusuario="<?php echo $idusuario; ?>">
	<input type="hidden" class="form-control form-control-sm" name="idusuario" id="idusuario" value="<?php echo $idusuario ;?>" placeholder="No" readonly>
	<div class='card'>
		<div class='card-header'>
			Edición de Usuario
		</div>
		<div class='card-body'>

			<div class='row'>
				<div class="col-4">
					<label for="">Nombre:</label>
					<input type="text" class="form-control form-control-sm" name="nombre" id="nombre" value="<?php echo $nombre ;?>" placeholder="Nombre" required>
				</div>

				<div class="col-4">
					<label for="">Apellido Paterno:</label>
					<input type="text" class="form-control form-control-sm" name="ap_paterno" id="ap_paterno" value="<?php echo $ap_paterno ;?>" placeholder="Apellido Paterno" required>
				</div>

				<div class="col-4">
					<label for="">Apellido Materno:</label>
					<input type="text" class="form-control form-control-sm" name="ap_materno" id="ap_materno" value="<?php echo $ap_materno;?>" placeholder="Apellido Materno">
				</div>

				<div class="col-4">
					<label for="">Correo electrónico:</label>
					<input type="text" class="form-control form-control-sm" name="email" id="email" value="<?php echo $email ;?>" placeholder="Correo electrónico" required>
				</div>

				<div class="col-6">
					<label for="">CLUES:</label>
					<!--input type="text" class="form-control form-control-sm" readonly name="id_clues" id="id_clues" value="<?php //echo $clues;?>" placeholder="CLUES" -->
					<select class="form-control form-control-sm" required>";
						<?php
						  //echo $clues;
							foreach($lista_clues as $pd2){
								if($clues==$pd2->id_clues){
									echo"<option  name='id_clues' value='".$pd2->id_clues."' selected class='form-control'>".$pd2->clv_clues." ".$pd2->nombre_clues."</option> ";
								}
								else{
										 echo"<option name='id_clues' value='".$pd2->id_clues."' class='form-control'>".$pd2->clv_clues." ".$pd2->nombre_clues."</option>";
									 }
									}
						?>
					</select>
				</div>

				<div class="col-2">
					<label for="">ID de usuario:</label>
					<input type="text" style="font-family: Courier;" class="form-control form-control-sm" name="usuario" id="usuario" value="<?php echo $usuario ;?>" placeholder="ID Usuario" required>
				</div>

			</div>
		</div>

		<div class='card-footer'>
			<div class='row'>
				<div class="col-sm-12">
					<button class="btn btn-warning btn-sm" type="submit"><i class='far fa-save'></i>  Guardar </button>
					<button class="btn btn-danger btn-sm" type="button" is="b-link" des="a_usuarios/lista" dix="trabajo"><i class="fas fa-undo"></i> Regresar </button>
				</div>
			</div>
		</div>

	</div>
</form>
</div>
