<?php
	//require_once("db_.php");
	$buscar="";
?>

<div class="container">
<form is="f-submit" id="form_personal" db="a_regio2019/db_" fun="buscar_localidad" des="a_regio_2019/res_busqueda_ero" desid="buscar" v_buscar="<?php echo $buscar; ?>">
	<input type="hidden" class="form-control form-control-sm" name="idusuario" id="idusuario" value="<?php echo $idusuario ;?>" placeholder="No" readonly>
	<div class='card'>
		<div class='card-header'>
			<b><i class='fas fa-dice-d20'></i>       Ejercicio de Regionalización Operativa 2019</b>
		</div>
		<div class='card-body'>
			<div class='row'>
				<div class="col-12">
					<input type="text" class="form-control form-control-sm" name="buscar" id="buscar" value="<?php echo $buscar;?>" placeholder="Escriba el nombre a buscar" required>
					<br>
					<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="opcion_buscar" id="inlineRadio1" value=1>
							<label class="form-check-label" for="inlineRadio1">Buscar Centro de Salud</label>
					</div>
					<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="opcion_buscar" id="inlineRadio2" value=2 checked>
							<label class="form-check-label" for="inlineRadio2">Buscar localidad <b>incluyendo</b> AGEBS</label>
					</div>
					<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="opcion_buscar" id="inlineRadio3" value=3>
							<label class="form-check-label" for="inlineRadio3">Buscar localidad <b>SIN</b> AGEBS</label>
					</div>
				</div>
			</div>
    </div>
		<div class='card-footer'>
			<div class='row'>
				<div class="col-sm-12">
					<button class="btn btn-success btn-sm" type="submit"><i class='fas fa-search'></i>  Buscar </button>
				</div>
			</div>
		</div>

	</div>
</form>
</div>
