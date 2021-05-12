<?php
	require_once("db_.php");
	$id_sede=$_REQUEST['iddetvac'];
	if($id_sede>0){
		$pd = $db->reporte_seph($id_sede);
	}
?>
<div class="container">
	<table style="width:95%">
		<tr>
			<th width="80%"><h2>AVANCE EN LA APLICACIÓN DE VACUNA ANTI COVID-19 A PERSONAL EDUCATIVO</h2></th>
			<td width="20%"><IMG class="esc_armas" SRC="images/esc_armas.png" style="margin-top:12px;max-width: 50%;"></td>
		<tr></table>
	<HR align=center width=95% color=#000000>
<?php
	foreach($pd as $key){
		$originalDate=$key->fecha_reporte;
		$fecha_reporte=date("d/M/Y",strtotime($originalDate));
		$horcaptu=$key->hora_captura;
		$hora_captura=date("d/M/Y  H:i",strtotime($horcaptu));
		$id_sede=$key->id_sede;
		$nombre_captura_inf=$key->nombre_captura_inf;
		$id_bio=$key->id_bio;
		$num_dosis=$key->num_dosis;
		$H_18=$key->H_18;
		$M_18=$key->M_18;
		$H_20=$key->H_20;
		$M_20=$key->M_20;
		$H_25=$key->H_25;
		$M_25=$key->M_25;
		$H_30=$key->H_30;
		$M_30=$key->M_30;
		$H_35=$key->H_35;
		$M_35=$key->M_35;
		$H_40=$key->H_40;
		$M_40=$key->M_40;
		$H_45=$key->H_45;
		$M_45=$key->M_45;
		$H_50=$key->H_50;
		$M_50=$key->M_50;
		$H_55=$key->H_55;
		$M_55=$key->M_55;
		$H_60=$key->H_60;
		$M_60=$key->M_60;
		$H_65=$key->H_65;
		$M_65=$key->M_65;
		$H_70=$key->H_70;
		$M_70=$key->M_70;
		$HENG_18=$key->HENG_18;
		$MENG_18=$key->MENG_18;
		$HENG_20=$key->HENG_20;
		$MENG_20=$key->MENG_20;
		$HENG_25=$key->HENG_25;
		$MENG_25=$key->MENG_25;
		$HENG_30=$key->HENG_30;
		$MENG_30=$key->MENG_30;
		$HENG_35=$key->HENG_35;
		$MENG_35=$key->MENG_35;
		$HENG_40=$key->HENG_40;
		$MENG_40=$key->MENG_40;
		$HENG_45=$key->HENG_45;
		$MENG_45=$key->MENG_45;
		$HENG_50=$key->HENG_50;
		$MENG_50=$key->MENG_50;
		$HENG_55=$key->HENG_55;
		$MENG_55=$key->MENG_55;
		$HENG_60=$key->HENG_60;
		$MENG_60=$key->MENG_60;
		$HENG_65=$key->HENG_65;
		$MENG_65=$key->MENG_65;
		$HENG_70=$key->HENG_70;
		$MENG_70=$key->MENG_70;
		$HEG_18=$key->HEG_18;
		$MEG_18=$key->MEG_18;
		$HEG_20=$key->HEG_20;
		$MEG_20=$key->MEG_20;
		$HEG_25=$key->HEG_25;
		$MEG_25=$key->MEG_25;
		$HEG_30=$key->HEG_30;
		$MEG_30=$key->MEG_30;
		$HEG_35=$key->HEG_35;
		$MEG_35=$key->MEG_35;
		$HEG_40=$key->HEG_40;
		$MEG_40=$key->MEG_40;
		$HEG_45=$key->HEG_45;
		$MEG_45=$key->MEG_45;
		$HEG_50=$key->HEG_50;
		$MEG_50=$key->MEG_50;
		$HEG_55=$key->HEG_55;
		$MEG_55=$key->MEG_55;
		$HEG_60=$key->HEG_60;
		$MEG_60=$key->MEG_60;
		$HEG_65=$key->HEG_65;
		$MEG_65=$key->MEG_65;
		$HEG_70=$key->HEG_70;
		$MEG_70=$key->MEG_70;
		$briga=$key->briga;
		$personal_salud=$key->personal_salud;
		$merma=$key->merma;
		$observa=$key->observa;
		//variablesdetotales
		$H_tot_vac=$key->H_tot_vac;
		$M_tot_vac=$key->M_tot_vac;
		$total=$key->total;
		$H_tot_ENG=$key->H_tot_ENG;
		$M_tot_ENG=$key->M_tot_ENG;
		$H_tot_EG=$key->H_tot_EG;
		$M_tot_EG=$key->M_tot_EG ;
	 }

?>
<p style="color:darkred;">Información registrada el día:<b> <?php echo $hora_captura;?></b><p>
<table align=center style="color:black;" border="1">
<tr>
<td width="25%" style="text-align: right;padding-right:5px;"><b>Sede de Vacunación:</b></td>
<td width="55%" style="text-align: left;">
	<label class="arriba">
		<?php	$pd2 = $db->nombre_sede($id_sede); foreach($pd2 as $key2){echo $key2->nombre_sede;}	?>
	</label>
</td>
<td  width="20%" style="padding-left:10px; text-align: center; vertical-align:bottom;"><b>Biológico aplicado:</b></td>
</tr>
<tr>
 <td style="text-align: right;"><b>Responsable del informe:</b></td>
 <td  style="text-align: left;"><label class="arriba" style="width:100%;"><?php echo $nombre_captura_inf;?></label></td>
 <td style="padding-left:10px;vertical-align:top;text-align: center;">
		 <label class="arriba" style="width:100%;">
			 <?php
			 		$pd3 = $db->nombre_bio($id_bio);
					foreach($pd3 as $key3){
						$idbio=$key3->id_bio;
						$nombre_bio=$key3->nombre_bio;
					  if($idbio==4){echo $nombre_bio."<br>Dosis única";}
						else{echo $nombre_bio."<br>".$num_dosis."ª DOSIS";}}
				 ?>
		 </label></td>
 </td>
</tr>
</table>
<br>
<table align=center border="1" >
<tr style="color:white;text-align:center;border-color:white;">
	<th rowspan="2"  style="background-color: #001a2b;">FECHA</th>
	<th rowspan="2"  style="background-color: #001a2b;">EVENTO</th>
	<th colspan="2"  style="background-color: #001a2b;">18 A 19 AÑOS</th>
	<th colspan="2"  style="background-color: #001a2b;">20 A 24 AÑOS</th>
	<th colspan="2"  style="background-color: #001a2b;">25 A 29 AÑOS</th>
	<th colspan="2"  style="background-color: #001a2b;">30 A 34 AÑOS</th>
	<th colspan="2"  style="background-color: #001a2b;">35 A 39 AÑOS</th>
	<th colspan="2"  style="background-color: #001a2b;">40 A 44 AÑOS</th>
	<th colspan="2"  style="background-color: #001a2b;">45 A 49 AÑOS</th>
	<th colspan="2"  style="background-color: #001a2b;">50 A 54 AÑOS</th>
	<th colspan="2"  style="background-color: #001a2b;">55 A 59 AÑOS</th>
	<th colspan="2"  style="background-color: #001a2b;">60 A 64 AÑOS</th>
	<th colspan="2"  style="background-color: #001a2b;">65 A 69 AÑOS</th>
	<th colspan="2"  style="background-color: #001a2b;">70 Y MÁS AÑOS</th>
	<th colspan="2"  style="background-color: #001a2b;">SUBTOTAL</th>
	<th rowspan="2"  style="background-color: #001a2b;">BRIGADISTAS</th>
	<th rowspan="2"  style="background-color: #001a2b;">PERSONAL DE SALUD</th>
	<th rowspan="2"  style="background-color: #001a2b;">TOTAL</th>
	<th rowspan="2"  style="background-color: #001a2b;">MERMAS/ PÉRDIDAS EN LA OPERACIÓN</th>
 </tr>
 <tr style="color:white;text-align:center;border-color:white;">
	<th  style="background-color: #001a2b;" width="3%">H</th><th  style="background-color: #001a2b;" width="3%">M</th>
	<th  style="background-color: #001a2b;" width="3%">H</th><th  style="background-color: #001a2b;" width="3%">M</th>
	<th  style="background-color: #001a2b;" width="3%">H</th><th  style="background-color: #001a2b;" width="3%">M</th>
	<th  style="background-color: #001a2b;" width="3%">H</th><th  style="background-color: #001a2b;" width="3%">M</th>
	<th  style="background-color: #001a2b;" width="3%">H</th><th  style="background-color: #001a2b;" width="3%">M</th>
	<th  style="background-color: #001a2b;" width="3%">H</th><th  style="background-color: #001a2b;" width="3%">M</th>
	<th  style="background-color: #001a2b;" width="3%">H</th><th  style="background-color: #001a2b;" width="3%">M</th>
	<th  style="background-color: #001a2b;" width="3%">H</th><th  style="background-color: #001a2b;" width="3%">M</th>
	<th  style="background-color: #001a2b;" width="3%">H</th><th  style="background-color: #001a2b;" width="3%">M</th>
	<th  style="background-color: #001a2b;" width="3%">H</th><th  style="background-color: #001a2b;" width="3%">M</th>
	<th  style="background-color: #001a2b;" width="3%">H</th><th  style="background-color: #001a2b;" width="3%">M</th>
	<th  style="background-color: #001a2b;" width="3%">H</th><th  style="background-color: #001a2b;" width="3%">M</th>
	<th  style="background-color: #001a2b;" width="3%">H</th><th  style="background-color: #001a2b;" width="3%">M</th>
 </tr>
 <tr style="color:black;">
	 <th rowspan="3" td class="add" style="text-align: center;"><label class="arriba" style="width:100%;"><?php echo $fecha_reporte;?></label></th>
	 <td class="add" style="position:sticky;left:0;z-index:2;background:white;padding-left:10px;padding-right:10px;font-weight:900;">VACUNAS</td>
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $H_18; ?></label></td>
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $M_18; ?></label></td>
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $H_20; ?></label></td>
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $M_20; ?></label></td>
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $H_25; ?></label></td>
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $M_25; ?></label></td>
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $H_30; ?></label></td>
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $M_30; ?></label></td>
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $H_35; ?></label></td>
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $M_35; ?></label></td>
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $H_40; ?></label></td>
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $M_40; ?></label></td>
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $H_45; ?></label></td>
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $M_45; ?></label></td>
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $H_50; ?></label></td>
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $M_50; ?></label></td>
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $H_55; ?></label></td>
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $M_55; ?></label></td>
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $H_60; ?></label></td>
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $M_60; ?></label></td>
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $H_65; ?></label></td>
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $M_65; ?></label></td>
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $H_70; ?></label></td>
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $M_70; ?></label></td>
		<td style="vertical-align:middle;text-align:center;font-weight:900;"><label class="totales"><?php echo $H_tot_vac; ?></label></td>
		<td style="vertical-align:middle;text-align:center;font-weight:900;"><label class="totales"><?php echo $M_tot_vac ?></label></td>
		<td style="vertical-align:middle;text-align:center;" rowspan="3"><label class="add"><?php echo $briga; ?></label></td>
		<td style="vertical-align:middle;text-align:center;" rowspan="3"><label class="add"><?php echo $personal_salud; ?></label></td>
		<td style="vertical-align:middle;text-align:center;font-weight:900;" rowspan="3"><label class="totales"><?php echo $total; ?></label></td>
		<td style="vertical-align:middle;text-align:center;" rowspan="3" style="border-right-color: black;border-right: 1px;border-right-style:solid;"><label class="add"><?php echo $merma; ?></label></td>
	</tr>
	<tr style="color:black;">
		<td class="add" style="position:sticky;left:0;z-index:2;background:white;padding-left:10px;padding-right:10px;font-weight:900;">ESAVI <B>NO</B> GRAVE</td>
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $HENG_18; ?></label></td>
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $MENG_18; ?></label></td>
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $HENG_20; ?></label></td>
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $MENG_20; ?></label></td>
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $HENG_25; ?></label></td>
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $MENG_25; ?></label></td>
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $HENG_30; ?></label></td>
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $MENG_30; ?></label></td>
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $HENG_35; ?></label></td>
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $MENG_35; ?></label></td>
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $HENG_40; ?></label></td>
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $MENG_40; ?></label></td>
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $HENG_45; ?></label></td>
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $MENG_45; ?></label></td>
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $HENG_50; ?></label></td>
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $MENG_50; ?></label></td>
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $HENG_55; ?></label></td>
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $MENG_55; ?></label></td>
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $HENG_60; ?></label></td>
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $MENG_60; ?></label></td>
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $HENG_65; ?></label></td>
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $MENG_65; ?></label></td>
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $HENG_70; ?></label></td>
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $MENG_70; ?></label></td>
		<td style="vertical-align:middle;text-align:center;font-weight:900;"><label class="totales"><?php echo $H_tot_ENG; ?></label></td>
		<td style="vertical-align:middle;text-align:center;font-weight:900;"><label class="totales"><?php echo $M_tot_ENG; ?></label></td>
	</tr>
	<tr style="color:black;">
		<td class="add" style="position:sticky;left:0;z-index:2;background:white;padding-left:10px;padding-right:10px;font-weight:900;">ESAVI <B>GRAVE</B></td>
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $HEG_18; ?></label></td>
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $MEG_18; ?></label></td>
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $HEG_20; ?></label></td>
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $MEG_20; ?></label></td>
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $HEG_25; ?></label></td>
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $MEG_25; ?></label></td>
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $HEG_30; ?></label></td>
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $MEG_30; ?></label></td>
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $HEG_35; ?></label></td>
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $MEG_35; ?></label></td>
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $HEG_40; ?></label></td>
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $MEG_40; ?></label></td>
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $HEG_45; ?></label></td>
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $MEG_45; ?></label></td>
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $HEG_50; ?></label></td>
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $MEG_50; ?></label></td>
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $HEG_55; ?></label></td>
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $MEG_55; ?></label></td>
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $HEG_60; ?></label></td>
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $MEG_60; ?></label></td>
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $HEG_65; ?></label></td>
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $MEG_65; ?></label></td>
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $HEG_70; ?></label></td>
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $MEG_70; ?></label></td>
		<td style="vertical-align:middle;text-align:center;font-weight:900;"><label class="totales"><?php echo $H_tot_EG; ?></label></td>
		<td style="vertical-align:middle;text-align:center;font-weight:900;"><label class="totales"><?php echo $M_tot_EG; ?></label></td>
	</tr>
	<tr style="color:black;">
		<td colspan="2" style="text-align: right;"><b>Observaciones:</b></td>
		<td colspan="30">
			<label readonly><?php echo $observa;?></label>
		</td>
	</tr>
</table>
<br>
<p style="text-align:center">
En caso de ser necesario realizar alguna correción <b>favor de informarlo a la brevedad posible </b> al responsable para la modificación.
</p>
</div>
