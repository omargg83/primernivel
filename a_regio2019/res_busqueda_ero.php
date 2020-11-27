<?php
	require_once("db_.php");
  $buscar=$_REQUEST['buscar'];
  $opcion=$_REQUEST['opcion_buscar'];

?>

<div class="container">
<!--- form is="f-submit" id="form_personal" db="a_regio2019/db_" des="a_regio2019/editar" desid="idusuario" v_idusuario=""--->
	<input type="hidden" class="form-control form-control-sm" name="idusuario" id="idusuario" value="<?php echo $idusuario ;?>" placeholder="No" readonly>
	<div class="row">
		<div class="col-12">
			<div class="card">
				<div class="card-header">
						Resultados de búsqueda
				</div>
				<div class="card-body">
					<div class="card-text">
							<p style="vertical-align:middle;">
								 <b><?php echo $buscar ;?></b>
							</p>
              <p style="vertical-align:middle;">
								 <b><?php echo $opcion ;?></b>
							</p>
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

</form>
</div>
