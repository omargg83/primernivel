<?php
	require_once("db_.php");
	$idcatregio2019=$_REQUEST['idcatregio2019'];
	$nom_loca = "";
	$clv_jurloc = "";
	$jur_loc = "";
	$mpio_loc = "";
	$clues_unidad = "";
	$nom_unidad = "";
	$tipologia = "";
	$institucion = "";
	$pob_total = "";
	$hom_total = "";
	$muj_total = "";
	$pob_derhab = "";
	$hom_derhab = "";
	$muj_derhab = "";
	$pob_noderhab = "";
	$hom_noderhab = "";
	$muj_noderhab = "";
	$pob_ssh = "";
	$pob_imssbienestar = "";
	$med_trans = "";
	$tipo_cam = "";
	$tiempo_loc = "";
	$distancia = "";
	$aux_salud = "";
	$casa_salud = "";
	$parteras = "";
	$grad_margina = "";
	$localidad_ind = "";
	$jur_cs = "";
	$mpio_cs = "";
	if($idcatregio2019>0)
	{
		$pd1 = $db->detalles_loc0($idcatregio2019);
	foreach($pd1 as $pd0)  {
		$jur_cs = $pd0->jur_cs;
		$mpio_cs = $pd0->mpio_cs; }
		$pd2 = $db->detalles_loc($idcatregio2019);
  foreach($pd2 as $pd)		{
		$nom_loca = $pd->nom_loca;
		$clv_jurloc = $pd->clv_jurloc;
		$jur_loc = $pd->jur_loc;
		$mpio_loc = $pd->mpio_loc;
		$clues_unidad = $pd->clues_unidad;
		$nom_unidad = $pd->nom_unidad;
		$tipologia = $pd->tipologia;
		$institucion = $pd->institucion;
		$pob_total = $pd->pob_total;
		$hom_total = $pd->hom_total;
		$muj_total = $pd->muj_total;
		$pob_derhab = $pd->pob_derhab;
		$hom_derhab = $pd->hom_derhab;
		$muj_derhab = $pd->muj_derhab;
		$pob_noderhab = $pd->pob_noderhab;
		$hom_noderhab = $pd->hom_noderhab;
		$muj_noderhab = $pd->muj_noderhab;
		$pob_ssh = $pd->pob_ssh;
		$pob_imssbienestar = $pd->pob_imssbienestar;
		$med_trans = $pd->med_trans;
		$tipo_cam = $pd->tipo_cam;
			if($tipo_cam=='A'){$tipo_camino="A (Autopista)";}
			else if($tipo_cam=='B'){$tipo_camino="B (Brecha)";}
			else if($tipo_cam=='CH'){$tipo_camino="CH (Herradura)";}
			else if($tipo_cam=='CP'){$tipo_camino="CP (Pavimentado)";}
			else if($tipo_cam=='CT'){$tipo_camino="CT (Terraceria)";}
		$tiempo_loc = $pd->tiempo_loc;
		$distancia = $pd->distancia;
		$aux_salud = $pd->aux_salud;
		$casalud = $pd->casa_salud;
			if($casalud=='AE'){$casa_salud="AE (Adaptada Equipada)";}
			else if($casalud=='ASE'){$casa_salud="ASE (Adaptada Sin Equipar)";}
			else if($casalud=='CE'){$casa_salud="CE (Construida y Equipada)";}
			else if($casalud=='CSE'){$casa_salud="CSE (Construida Sin Equipar)";}
			else if($casalud=='NA'){$casa_salud="NA (No Aplica)";}
		$parteras = $pd->parteras;
		$grad_margina = $pd->grad_margina;
		$localidad_ind = $pd->localidad_ind;	  }
	}
?>

<div class="container">
<!--- form is="f-submit" id="form_personal" db="a_regio2019/db_" des="a_regio2019/editar" desid="idusuario" v_idusuario=""--->
	<input type="hidden" class="form-control form-control-sm" name="idusuario" id="idusuario" value="<?php echo $idusuario ;?>" placeholder="No" readonly>
	<div class="row">

		<div class="col-6">
			<div class="card">
				<div class="card-header">
						Información General
				</div>
				<div class="card-body">
					<div class="card-text">
							<p style="vertical-align:middle;">
								 Localidad: <b style="vertical-align:middle; text-align:center; font-weight:bolder;font-size: 120%; color:black;"><?php echo $nom_loca ?></b><br>
							 	 Municipio: <b style="vertical-align:middle; text-align:center; font-weight:bolder;"><?php echo $mpio_loc ?></b><br>
								 Jurisdicción: <b style="vertical-align:middle; text-align:center; font-weight:bolder;"><?php echo $jur_loc ?></b><br>
								 Grado de Marginación<sup> 1</sup> : <b style="vertical-align:middle; text-align:center; font-weight:bolder;"><?php echo $grad_margina ?></b><br>
								 Localidad indígena<sup> 2</sup> : <b style="vertical-align:middle; text-align:center; font-weight:bolder;"><?php echo $localidad_ind ?></b><br>
								 Clave Jur. Loc.:  <b style="vertical-align:middle; text-align:center; font-weight:bolder;"><?php echo $clv_jurloc ?></b>
							</p>
					</div>
				</div>
			</div>
		</div>

		<div class="col-6">
			<div class="card">
	      <div class="card-header">
	        Unidad de Referencia
	      </div>
	      <div class="card-body">
					<div class="card-text">
							<span>CLUES: <b style="vertical-align:middle; text-align:center; font-weight:bolder;"><?php echo $clues_unidad ?></b><br>
							 	 Nombre: <b style="vertical-align:middle; text-align:center; font-weight:bolder;"><?php echo $nom_unidad ?></b><br>
								 Tipología: <b style="vertical-align:middle; text-align:center; font-weight:bolder;"><?php echo $tipologia ?></b><br>
								 Institución: <b style="vertical-align:middle; text-align:center; font-weight:bolder;"><?php echo $institucion ?></b><br>
								 Jurisdicción Unidad: <b style="vertical-align:middle; text-align:center; font-weight:bolder;"><?php echo $jur_cs ?></b><br>
								 Municipio Unidad: <b style="vertical-align:middle; text-align:center; font-weight:bolder;"><?php echo $mpio_cs ?></b>
							</span>
					</div>
	      </div>
  		</div>
	  </div>
  </div>
	<div class="row">
		<br>
	</div>
<div class="row">
	<div class="col-6">
		<div class="accordion" id="accordionExample">
		  <div class="card">
				<div class="card-header" id="headingOne">
		        <button class="btn btn-success col-sm-6" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
		          <i class="fas fa-users"></i>       Proyección Población Total
		        </button>
		    </div>
		    <div id="collapseOne" class="collapse " aria-labelledby="headingOne" data-parent="#accordionExample">
					<div class="card-body">
						<dl class="row">
								<dt class="col-sm-3"><i class="fas fa-restroom"></i> Total</dt>
								<dd class="col-sm-9"><?php echo $pob_total ?> </dd>
								<dt class="col-sm-3"><i class="fas fa-male"></i> Hombres</dt>
								<dd class="col-sm-9"><?php echo $hom_total ?> </dd>
								<dt class="col-sm-3"><i class="fas fa-female"></i> Mujeres</dt>
								<dd class="col-sm-9"><?php echo $muj_total ?> </dd>
							</dl>
		      </div>
		    </div>
		  </div>

			<div class="card">
		    <div class="card-header" id="headingTwo">
		        <button class="btn btn-secondary collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo" style="font-weight:bolder;">
		          <i class="fas fa-procedures"></i>       Proyección Población Derechohabiencia
		        </button>
		    </div>
		    <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
		      <div class="card-body">
						<dl class="row">
								<dt class="col-sm-3"><i class="fas fa-restroom"></i> Total</dt>
								<dd class="col-sm-9"><?php echo $pob_derhab ?> </dd>
								<dt class="col-sm-3"><i class="fas fa-male"></i> Hombres</dt>
								<dd class="col-sm-9"><?php echo $hom_derhab ?> </dd>
								<dt class="col-sm-3"><i class="fas fa-female"></i> Mujeres</dt>
								<dd class="col-sm-9"><?php echo $muj_derhab ?> </dd>
							</dl>
		      </div>
		    </div>
		  </div>

			<div class="card">
		    <div class="card-header" id="headingThree">
					<button class="btn btn-primary collapsed" type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree" style="font-weight:bolder;">
			          <i class="far fa-hospital"></i>       Proyección Población No Derechohabiente
		        </button>
		    </div>
		    <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
		      <div class="card-body">
						<div class="card-body">
							<dl class="row">
									<dt class="col-sm-3"><i class="fas fa-restroom"></i> Total</dt>
									<dd class="col-sm-9"><?php echo $pob_noderhab ?> </dd>
									<dt class="col-sm-3"><i class="fas fa-male"></i> Hombres</dt>
									<dd class="col-sm-9"><?php echo $hom_noderhab ?> </dd>
									<dt class="col-sm-3"><i class="fas fa-female"></i> Mujeres</dt>
									<dd class="col-sm-9"><?php echo $muj_noderhab ?> </dd>
								</dl>
			      </div>
		      </div>
		    </div>
		  </div>
		</div>
 </div>

 <div class="col-6">
 	<div class="card">
 		<div class="card-header">
 			Acceso
 		</div>
 		<div class="card-body">
 			<div class="card-text">
 					<span>Medio de transporte: <b style="vertical-align:middle; text-align:center; font-weight:bolder;"><?php if($med_trans=='V'){echo "V (Automotor)";} else if($med_trans=='S'){echo "S (Semoviente)";}else if($med_trans=='P'){echo "P (A pie)";}  ?></b><br>
 						 Tipo de camino: <b style="vertical-align:middle; text-align:center; font-weight:bolder;"><?php echo $tipo_camino; ?></b><br>
 						 Tiempo de la localidad a unidad de salud: <b style="vertical-align:middle; text-align:center; font-weight:bolder;"><?php echo $tiempo_loc; ?> minutos</b><br>
						 Distancia: <b style="vertical-align:middle; text-align:center; font-weight:bolder;"><?php echo $distancia; ?> kms.</b><br>
						 Partera: <b style="vertical-align:middle; text-align:center; font-weight:bolder;"><?php echo $parteras; ?></b><br>
						 Auxiliar de salud: <b style="vertical-align:middle; text-align:center; font-weight:bolder;"><?php echo $aux_salud; ?></b><br>
 						 Casa de salud: <b style="vertical-align:middle; text-align:center; font-weight:bolder;"><?php echo $casa_salud; ?></b>
 					</span>
 			</div>
 		</div>
 	</div>
 </div>
	</div>

	<div class='card-footer'>
		<div class='row'>
			<div class="col-sm-12">
				<footer><b>Fuente de la información: </b><cite title="Source Title">Estudio de Regionalización Operativa (ERO) 2019 de la Dirección de Planeación, Presupuesto y Evaluación de los Servicios de Salud de Hidalgo. Actualización a <b>Abril 2020</b>.</cite><br>
				<b><sup>1</sup></b> <cite title="Source Title">Fuente: IDHM-IMM 2015-2010.</cite><br>
				<b><sup>2</sup></b> <cite title="Source Title">Fuente: Localidades Indigenas 2010 CDI.</cite></footer>
				<br>
				<button class="btn btn-danger btn-sm" type="button" is="b-link" des="a_regio2019/busqueda_ero2" dix="trabajo"><i class="fas fa-undo"></i>       Regresar</button>
			</div>
		</div>
	</div>

</form>
</div>
