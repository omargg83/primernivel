<?php
	require_once("db_.php");
  $idproceso=$_REQUEST['idproceso'];
  $fechareporte=$_REQUEST['fechareporte'];
  $tabla=$_REQUEST['tabla'];
  $np= $db->nombre_proceso($idproceso);
  $pd= $db->sedes_dia_seleccionado($fechareporte,$tabla,$idproceso);
?>
<div class="container">
  	<input type='hidden' value='<?php echo $fechareporte; ?>' readonly><input type='hidden' value='<?php echo $idproceso; ?>' readonly>
    <input type='hidden' value='<?php echo $tabla; ?>' readonly>
  <div class='card'>
    <div class='card-header  text-white bg-info' style="font-size:105%;">
        <?php foreach($np as $key0){ echo $key0->nombre_proceso; }?> sedes del dia <b><?php echo date("d / M / Y", strtotime($fechareporte));?></b>
    </div>
  </div>
  <table class="table table-striped" style="border: 1px solid darkgray; color:black;">
    <thead class="thead-dark" style="font-weight:bold;font-size:80%;">
        <th></th>
        <th scope="row" style="text-align:center;">Jurisdicción</th scope="row" style="text-align:center;">
				<th scope="row" style="text-align:center;">Municipio</th scope="row" style="text-align:center;">
				<th scope="row" style="text-align:center;">Sede</th scope="row" style="text-align:center;">
		</thead>
		<tbody>
      <?php
        foreach($pd as $key){
      ?>
        <tr style="color:black;">
          <td>
            <button class='btn btn-secondary' type='button' is='b-link' des='a_reportes_vac_covid/reporte_fecha_sedes' dix='trabajo' tp='edit' v_idregistro='<?php echo $key->idregistro; ?>' v_tabla='<?php echo $tabla; ?>' title=''>
              <i class="fas fa-hospital-user"></i> Ver informe
            </button>
          </td>
          <td scope="row" style="text-align:center;"><?php echo $key->nombre_juris; ?></td>
					<td scope="row" style="text-align:center;"><?php echo $key->nombre_mpio; ?></td>
					<td scope="row" style="text-align:center;"><?php echo $key->nombre_sede; ?></td>
				</tr>
      <?php
        }
      ?>
		</tbody>
	</table>

</div>
