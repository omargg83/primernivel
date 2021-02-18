<?php
	require_once("db_.php");
  $idcsprcovid19=$_REQUEST['idcsprcovid19'];
  $clv_clu = "";
  $nombre_clu = "";

if($idcsprcovid19>0){
//clues y nombre de clues par amostrar encabezado de tabla
  $pr = $db->id_clues_pr($idcsprcovid19);
  $ue = $db->ultima_existencia($idcsprcovid19);
  $clv_clu = $pr->clv_clues;
  $nombre_clu = $pr->nombre_clues;

  $ult_exis = $ue->existencia;
  $fecha_ult_exis = $ue->fecha_ult_reporte;
}
?>
<head>
	<script language="javascript">
	function Calc(className){
	var elements = document.getElementsByClassName(className);
	var total = 0;

	var exi_prev = parseInt(elements['ult_exis'].value);
	var igg = parseInt(elements['num_casos_igg'].value);
	var igm = parseInt(elements['num_casos_igm'].value);
	var iggigm = parseInt(elements['num_casos_igg_igm'].value);
	var no_iggigm = parseInt(elements['no_igg_igm'].value);
	var inv = parseInt(elements['num_invalidas'].value);
	var redis = parseInt(elements['distribucion'].value);

	total = exi_prev-igg-igm-iggigm-inv-no_iggigm+redis;
	//tot_pr = igg+igm+iggigm+inv+no_iggigm;

	document.form_pruebasrapidas.exis_pruebas.value = total;
	//document.form_pruebasrapidas.num_pruebas_realizadas.value = tot_pr;
	}

	</script>
</head>
<div class="container">
<form name="form_pruebasrapidas" id="form_pruebasrapidas" is="f-submit" db="a_pruebas/db_" fun="guardar_pruebasrapidas" des="a_pruebas/index" v_idcsprcovid19="<?php echo $idcsprcovid19; ?>">
	<input type="hidden" class="form-control form-control-sm" name="id_CSprCOVID19" id="id_CSprCOVID19" value="<?php echo $idcsprcovid19; ?>" placeholder="No" readonly>
	<!--input type="hidden" class="form-control form-control-sm" name="ult_exis" id="ult_exis" value="<?php echo $ult_exis; ?>" placeholder='No' readonly-->
	<div class='card'>
	<div class='card-header' style='vertical-align:middle;text-align:center; color:white; font-weight:700; background-color: #001a2b;'>
			<?php echo $clv_clu." ".$nombre_clu."<br>"; ?>
	</div>
	<div class='card-body'>
		 <div class='row'>
			 <div class='col-6'>
         <label style='vertical-align:middle;text-align:center; color: blue; font-weight: 700;'>Última existencia en sistema al día <?php $format = 'Y-m-d H:i:s'; $date = DateTime::createFromFormat($format, $fecha_ult_exis); echo date_format($date, 'd/m/Y'); ?></label>
				 <input type="text" class="form-control" name="ult_exis" id="ult_exis" value="<?php echo $ult_exis." pruebas rápidas"; ?>" placeholder='No' readonly style='vertical-align:middle;text-align:center; color: darkred; font-weight: 700;'>
       </div>
      <div class='col-3'>
        <label>Num. de Módulos</label>
        <input type='text' required id='num_modulos' name='num_modulos' value='1' class='form-control' placeholder=''>
      </div>
			<div class='col-3'>
				<label>Num. personal en módulos</label>
				<input type='text' required id='num_personal' name='num_personal' value='0' class='form-control' placeholder='' >
			</div>
			<!--div class='col-4'>
        <label style='vertical-align:middle;text-align:center; color: blue; font-weight: 700;'>Num. total de pruebas realizadas</label>
        <input type='text' readonly id='num_pruebas_realizadas' name='num_pruebas_realizadas' class='form-control col-5' placeholder='' >
      </div>
			<div class='col-4'>
        <label style='vertical-align:middle;text-align:center; color:red; font-weight: 700;'>Nueva existencia de pruebas</label>
        <input type='text' readonly id='exis_pruebas' name='exis_pruebas' class='form-control col-5' placeholder='' >
      </div-->
		</div><br>

		<div class='row'>
		<div class='col-12'>
		 <div class="card border-primary">
		  <div class="card-header" style='vertical-align:middle; text-align:center; color:white; font-weight:bolder; background-color: #3266a8;'>Prueba Rápida en Sangre</div>
			 <div class='card-body'>
				 <div class='row' style='vertical-align:middle;text-align:center; color: black;'>
		      <div class='col-3'>
		        <label><b><u>Total reactivos</u> a IgG<br>IgM-/IgG+</b></label>
		        <input type='text' required id='num_casos_igg' name='num_casos_igg' value='0' class='form-control suma' placeholder='' onKeyUp="Calc('suma')" onClick="this.focus();this.select();">
		      </div>
		      <div class='col-3'>
		        <label><b><u>Total reactivos</u> a IgM<br>IgM+/IgG-</b></label>
		        <input type='text' required id='num_casos_igm' name='num_casos_igm' value='0' class='form-control suma' placeholder='' onKeyUp="Calc('suma')" onClick="this.focus();this.select();">
		      </div>
		      <div class='col-3'>
		        <label><b><u>Total reactivos a ambos</u><br>IgM+/IgG+</b></label>
		        <input type='text' required id='num_casos_igg_igm' name='num_casos_igg_igm' value='0' class='form-control suma' placeholder='' onKeyUp="Calc('suma')" onClick="this.focus();this.select();">
		      </div>
					<div class='col-3'>
		        <label><b><u>Total NO reactivos</u><br>IgM-/IgG-</b></label>
		        <input type='text' required id='no_igg_igm' name='no_igg_igm' value='0' class='form-control suma' placeholder='' onKeyUp="Calc('suma')" onClick="this.focus();this.select();">
		      </div>
			  </div><br>
			  <div class='row'  style='color: black;'>
					<div class='col-3'>
						<label>Num. muestras inválidas</label>
						<input type='text' required id='num_invalidas' name='num_invalidas' value='0' class='form-control suma' placeholder='' onKeyUp="Calc('suma')" onClick="this.focus();this.select();">
					</div>
					<div class='col-3'>
						<label>Num. pruebas (re)distribuidas</label>
						<input type='text' required id='distribucion' name='distribucion' value='0' class='form-control suma' placeholder='' onKeyUp="Calc('suma')" onClick="this.focus();this.select();">
					</div>
		      <div class='col-6'>
							<label>Observaciones</label>
							<textarea class="form-control" rows="3" id='observaciones' name='observaciones' value='' class='form-control' placeholder='Describa con detalle observaciones, incidencias, surtimiento de pruebas, redistribuciones, etc. referente a las pruebas rápidas reportadas.' ></textarea>
			    </div>
				</div>
			</div>
		 </div>
	  </div></div><br>

		<div class='row'>
		<div class='col-6'>
		 <div class="card" style="border-color: #723494;">
		  <div class="card-header" style='vertical-align:middle; text-align:center; color:white; font-weight:bolder; background-color: #723494;'>Prueba Orofaríngea de Antígeno</div>
			  <div class='card-body'>
			  <div class='row' style='color: black;'>
					<div class='col-5'>
						<label>Num. pruebas realizadas</label>
						<input type='text' required id='num_pruebasorof' name='num_pruebasorof' value='0' class='form-control suma' onKeyUp="Calc('suma')" onClick="this.focus();this.select();">
					</div>
					<div class='col-5'>
						<label>Num. pruebas <b>positivas</b> a SARS-CoV-2</label>
						<input type='text' required id='num_pruebasorof_posi' name='num_pruebasorof_posi' value='0' class='form-control suma' onKeyUp="Calc('suma')" onClick="this.focus();this.select();">
					</div>
				</div>
			</div>
		 </div>
	  </div>
		 <div class='col-6'>
		 <div class="card" style="border-color: darkred;">
			<div class="card-header" style='vertical-align:middle; text-align:center; color:white; font-weight:bolder; background-color: darkred;'>Existencias Actuales</div>
				<div class='card-body'>
				<div class='row' style='color: black;'>
					<div class='col-5'>
						<label>Pruebas Rápidas en Sangre</label>
						<input readonly type='text' id='exis_pruebas_orof' name='exis_pruebas_orof' class='form-control' placeholder=''>
					</div>
					<div class='col-5'>
						<label>Pruebas Orofaríngeas de Antígenos</label>
						<input readonly type='text' id='exis_pruebas' name='exis_pruebas' class='form-control' placeholder=''>
					</div>
				</div>
			</div>
		 </div>
	   </div>
		</div>
  </div>
	<div class='card-footer'>
			<div class='row'>
				<div class="col-12">
					<button class='btn btn-warning' type="button" /><i class="fas fa-save"></i> Enviar información</button><span class="col-8"></span>
	        <button class="btn btn-danger" type="button" is="b-link" des="a_pruebas/reportar" dix="trabajo"><i class="fas fa-undo"></i> Regresar </button>
				</div>
			</div>
	</div>
	</div>
</form>
</div>
