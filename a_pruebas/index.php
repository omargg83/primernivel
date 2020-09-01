<?php
	require_once("db_.php");
?>

<h4>Ingrese los datos solicitados para cada centro de salud</h4>
<div class='container'>
  <div class='row' style='font-size:10px;'>
    <div class='col-1'>Centro de salud</div>
    <div class='col-1'>Num. Módulos</div>
    <div class='col-1'>Num. total de pruebas rápidas realizadas</div>
    <div class='col-1'>Num. casos reactivos a IgG</div>
    <div class='col-1'>Num. casos reactivos a IgM</div>
    <div class='col-1'>Num. casos reactivos a IgG y a IgM</div>
    <div class='col-1'>Num. muestras inválidas</div>
    <div class='col-1'>Num. personal en el módulo</div>
    <div class='col-1'>Num. pruebas (re) distribuidas</div>
    <div class='col-1'>Existencia de pruebas</div>
    <div class='col-1'>Observaciones</div>
  </div>

    <?php
      $sql="SELECT *  FROM cat_clues LEFT JOIN cat_CSprCOVID19 ON cat_clues.id_clues = cat_CSprCOVID19.id_clues
      WHERE (( id_juris = ".$_SESSION['id_juris'].") AND (cat_clues.id_clues = cat_CSprCOVID19.id_clues ))";
      $sth = $db->dbh->prepare($sql);
      $sth->execute();
      $resp=$sth->fetchAll(PDO::FETCH_OBJ);
      foreach($resp as $row_nousmer){
        echo "<form is='f-submit' id='form_algo".$row_nousmer->clv_clues."' db='a_pruebas/db_' fun='guardar_clues'>";
          echo "<div class='row' style='font-size:10px;'>";
          echo "<div class='col-1'>".$row_nousmer->clv_clues."<br>".$row_nousmer->nombre_clues."</div>";
          echo "<div class='col-1'><input type='text' required name='num_modulos' value='".$row_nousmer->clv_clues."' class='form-control' value='1' ></div>";
          echo "<div class='col-1'><input type='text' required name='num_pruebas_realizadas' value='".$row_nousmer->clv_clues."' class='form-control' placeholder='' readonly></div>";
          echo "<div class='col-1'><input type='text' required name='num_casos_igg' value='".$row_nousmer->clv_clues."' class='form-control' placeholder='IgG' ></div>";
          echo "<div class='col-1'><input type='text' required name='num_casos_igm' value='".$row_nousmer->clv_clues."' class='form-control' placeholder='IgM' ></div>";
          echo "<div class='col-1'><input type='text' required name='num_casos_igg_igm' value='".$row_nousmer->clv_clues."' class='form-control' placeholder='IgG+IgM' ></div>";
          echo "<div class='col-1'><input type='text' required name='num_invalidas' value='".$row_nousmer->clv_clues."' class='form-control' placeholder='' ></div>";
          echo "<div class='col-1'><input type='text' required name='num_personal' value='".$row_nousmer->clv_clues."' class='form-control' placeholder='' ></div>";
          echo "<div class='col-1'><input type='text' required name='distribucion' value='".$row_nousmer->clv_clues."' class='form-control' value='0' ></div>";
          echo "<button type='submit' class='btn btn-success' />Guardar</button>";
          echo "</div>";
        echo "</form>";
      }
    ?>
