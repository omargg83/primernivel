<?php
	$id=$_REQUEST['idusuario'];
?>
<div class='modal-header'>
	<h5 class='modal-title'>Cambiar contraseña</h5>
</div>
  <div class='modal-body' >
	<form is="f-submit" id="form_clientepass" db="a_usuarios/db_" fun="password" cmodal="1">
	<?php
		echo "<input  type='hidden' id='id' NAME='id' value='$id'>";
	?>
		<p class='input_title'>Contraseña:</p>
		<div class='form-group input-group'>
			<div class='input-group-prepend'>
				<span class='input-group-text'> <i class='fas fa-user-circle'></i>
			</div>
			<input class='form-control' placeholder='pass1' type='password'  id='pass1' name='pass1' required>
		</div>

		<p class='input_title'>Contraseña:</p>
		<div class='form-group input-group'>
			<div class='input-group-prepend'>
				<span class='input-group-text'> <i class='fa fa-lock'></i>
			</div>
			<input class='form-control' placeholder='pass2' type='password'  id='pass2' name='pass2' required>
		</div>
		<div class='btn-group'>
		<button class='btn btn-warning btn-sm' type='submit' id='acceso' title='Guardar'><i class='far fa-save'></i>Guardar</button>
		<button type="button" class="btn btn-warning btn-sm" data-dismiss="modal" title='Cancelar'><i class="fas fa-sign-out-alt"></i>Cancelar</button>
		</div>
		</form>
  </div>
