<?php
	require_once("db_.php");
  	$pd = $db->clues_nousmer();
 ?>

<div class="container">
  <?php
  foreach($pd as $row_nousmer)
  { ?>
			<div class='row'>
            <div class="col-3" style="padding: 5px 8px 5px 0px;text-align:right;">
              <button class='btn btn-warning' type="button" is="b-link" des='a_pruebas/rep_prCOVID19' dix='trabajo' tp="edit" title=" Reportar resultados de pruebas rápidas" desid="idCSprCOVID19" v_idcsprcovid19='<?php echo $row_nousmer->id_CSprCOVID19; ?>' title='reportar'>Enviar reporte <i class="fas fa-clipboard-check"></i></button>
            </div>
            <div class="col-9" style="border-style: none none dotted none;border-width: 1px;padding: 11px 0px 5px 0px;vertical-align: middle;font-weight: 700;"><?php echo $row_nousmer->clv_clues." ".$row_nousmer->nombre_clues; ?></div>
      <br></div>
      <?php
      }
      ?>

</div>
