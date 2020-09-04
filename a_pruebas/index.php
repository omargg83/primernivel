<?php
	require_once("db_.php");
?>

<h3>Reporte de pruebas rápidas realizadas en unidades NO USMER</h3>
<div class='container'>
	<?php
		$sql="SELECT *  FROM cat_clues LEFT JOIN cat_CSprCOVID19 ON cat_clues.id_clues = cat_CSprCOVID19.id_clues
		WHERE (( id_juris = ".$_SESSION['id_juris'].") AND (cat_clues.id_clues = cat_CSprCOVID19.id_clues ))";
		$sth = $db->dbh->prepare($sql);
		$sth->execute();
		$resp=$sth->fetchAll(PDO::FETCH_OBJ);
		echo"<h5>Seleccione el centro de salud a reportar</h5>";
		echo"<br>
				<form id='selec_CS'>
					<select onchange='CS_areportar(this.value)'>";
		foreach($resp as $row_nousmer){
			 echo"<option name='num_modulos' value='".$row_nousmer->clv_clues."' class='form-control'>".$row_nousmer->clv_clues." ".$row_nousmer->nombre_clues."</option> ";
		}
		echo"	</select>
				 </form>";
	?>

<?php
function CS_areportar($clues)
{
	$sql="SELECT id_CSprCOVID19  FROM cat_clues LEFT JOIN cat_CSprCOVID19 ON cat_clues.id_clues = cat_CSprCOVID19.id_clues
		WHERE (( clv_clues = ".$clues.") AND (cat_clues.id_clues = cat_CSprCOVID19.id_clues ))";
	$sth = $db->dbh->prepare($sql);
	$sth->execute();
	$resp=$sth->fetchAll(PDO::FETCH_OBJ);
	echo "<br><br><br>
			<form is='f-submit' id='form_prnu_".$row_nousmer->clv_clues."' db='a_pruebas/db_' fun='guardar_clues'>
				<table class='table table-dark table-striped'>
					<thead>
						<tr>
							<th scope='col' style='vertical-align:middle;'>Centro de salud</th>
							<th scope='col' style='vertical-align:middle;'>".$row_nousmer->clv_clues."<br>".$row_nousmer->nombre_clues."</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th scope='col' style='vertical-align:middle;'>Num. Módulos</th>
							<td style='vertical-align:middle;'><div class='col'><input type='text' required name='num_modulos' value='1' class='form-control' placeholder='' ></div></td>
						</tr>
						<tr>
							<th scope='col' style='vertical-align:middle;'>Num. total de pruebas rápidas realizadas</th>
							<td style='vertical-align:middle;'><div class='col'><input type='text' required name='num_pruebas_realizadas' value='' class='form-control' placeholder='' ></div></td>
						</tr>
						<tr>
							<th scope='col' style='vertical-align:middle;'>Num. casos reactivos a IgG</th>
							<td style='vertical-align:middle;'><div class='col'><input type='text' required  name='num_casos_igg' value='' class='form-control' placeholder='IgG' ></div></td>
						</tr>
						<tr>
							<th scope='col' style='vertical-align:middle;'>Num. casos reactivos a IgM</th>
							<td style='vertical-align:middle;'><div class='col'><input type='text' required  name='num_casos_igm' value='' class='form-control' placeholder='IgM' ></div></td>
						</tr>
						<tr>
							<th scope='col' style='vertical-align:middle;'>Num. casos reactivos a IgG e IgM</th>
							<td style='vertical-align:middle;'><div class='col'><input type='text' required  name='num_casos_igg_ig' value='' class='form-control' placeholder='IgG e IgM' ></div></td>
						</tr>
						<tr>
							<th scope='col' style='vertical-align:middle;'>Num. muestras inválidas</th>
							<td style='vertical-align:middle;'><div class='col'><input type='text' required  name='num_invalidas' value='' class='form-control' placeholder='' ></div></td>
						</tr>
						<tr>
							<th scope='col' style='vertical-align:middle;'>Num. personal en el módulo</th>
							<td style='vertical-align:middle;'><div class='col'><input type='text' required  name='num_personal' value='' class='form-control' placeholder='' ></div></td>
						</tr>
						<tr>
							<th scope='col' style='vertical-align:middle;'>Num. pruebas (re)distribuidas</th>
							<td style='vertical-align:middle;'><div class='col'><input type='text' required name='distribucion' value='0' class='form-control' placeholder='' ></div></td>
						</tr>
						<tr>
							<th scope='col' style='vertical-align:middle;'>Existencia de pruebas</th>
							<td style='vertical-align:middle;'><div class='col'><input type='text' readonly required name='exis_pruebas' value='' class='form-control' placeholder='' ></div></td>
						</tr>
						<tr>
							<th scope='col' style='vertical-align:middle;'>Observaciones</th>
							<td style='vertical-align:middle;'><div class='col'><input type='text' name='observaciones' value='' class='form-control' placeholder='' ></div></td>
						</tr>
						<tr><td colspan='2' style='text-align:center;'><button type='submit' class='btn btn-success' />Enviar informacion</button></td></tr>
					</tbody>
				</table>
			 </form>";

}




	echo"</div>";
    ?>
