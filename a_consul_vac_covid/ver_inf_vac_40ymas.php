<?php
	require_once("db_.php");
	$id_sede=$_REQUEST['iddetvac'];
	if($id_sede>0){
		$pd = $db->reporte_40a49($id_sede);
	}
?>
<div class="container">
	<table style="width:95%">
		<tr>
			<th width="80%"><h2>AVANCE EN LA APLICACIÓN DE VACUNA ANTI COVID-19 A POBLACIÓN DE 40 A 49 AÑOS</h2></th>
			<td width="20%"><img src="img/esc_armas.png" style="margin-top:12px;max-width: 50%;"></td>
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
		$H_75=$key->H_75;
		$M_75=$key->M_75;
		$H_80=$key->H_80;
		$M_80=$key->M_80;
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
		$HENG_75=$key->HENG_75;
		$MENG_75=$key->MENG_75;
		$HENG_80=$key->HENG_80;
		$MENG_80=$key->MENG_80;
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
		$HEG_75=$key->HEG_75;
		$MEG_75=$key->MEG_75;
		$HEG_80=$key->HEG_80;
		$MEG_80=$key->MEG_80;
		$ME_18=$key->ME_18;
		$ME_25=$key->ME_25;
		$ME_30=$key->ME_30;
		$ME_35=$key->ME_35;
		$ME_40=$key->ME_40;
		$ME_45=$key->ME_45;
		$ME_50=$key->ME_50;
		$ME_55=$key->ME_55;
		$MEEG_18=$key->MEEG_18;
		$MEENG_18=$key->MEENG_18;
		$MEEG_25=$key->MEEG_25;
		$MEENG_25=$key->MEENG_25;
		$MEEG_30=$key->MEEG_30;
		$MEENG_30=$key->MEENG_30;
		$MEEG_35=$key->MEEG_35;
		$MEENG_35=$key->MEENG_35;
		$MEEG_40=$key->MEEG_40;
		$MEENG_40=$key->MEENG_40;
		$MEEG_45=$key->MEEG_45;
		$MEENG_45=$key->MEENG_45;
		$MEEG_50=$key->MEEG_50;
		$MEENG_50=$key->MEENG_50;
		$MEEG_55=$key->MEEG_55;
		$MEENG_55=$key->MEENG_55;
		$briga=$key->briga;
		$personal_salud=$key->personal_salud;
		$merma=$key->merma;
		$observa=$key->observa;
		$Frs_dosis_completas=$key->Frs_dosis_completas;
		$Frs_dosis_incompletas=$key->Frs_dosis_incompletas;
		//variablesdetotales
		$H_tot_vac=$key->H_tot_vac;
		$M_tot_vac=$key->M_tot_vac;
		$total=$key->total;
		$H_tot_ENG=$key->H_tot_ENG;
		$M_tot_ENG=$key->M_tot_ENG;
		$H_tot_EG=$key->H_tot_EG;
		$M_tot_EG=$key->M_tot_EG;
		$ME_tot_vac=$key->ME_tot_vac;
		$ME_tot_ENG=$key->ME_tot_ENG;
		$ME_tot_EG=$key->ME_tot_EG;
		$total_frascos=$key->total_frascos;
	 }

?>
<p style="color:darkred;">Información registrada el día:<b> <?php echo $hora_captura;?></b><p>
<table align=center style="color:black;" border="1">
<tr>
<td width="25%" style="text-align: right;padding-right:5px;"><b>Sede de Vacunación:</b></td>
<td width="55%" style="text-align: left;">
	<label class="arriba">
		<?php	$pd2 = $db->nombre_sede($id_sede); foreach($pd2 as $key2){echo $key2->nombre_mpio." - ".$key2->nombre_sede;}	?>
	</label>
</td>
<td  width="20%" style="padding-left:10px; text-align: center; vertical-align:bottom;"><b>Biológico aplicado:</b></td>
</tr>
<tr>
 <td style="text-align: right;"><b>Responsable del informe:</b></td>
 <td  style="text-align: left;"><label class="arriba" style="width:100%;"><?php echo $nombre_captura_inf;?></label></td>
 <td style="padding-left:10px;vertical-align:top;text-align: center; background-color:#ccffe5;">
		 <label class="arriba" style="width:100%;">
			 <?php
			 		$pd3 = $db->nombre_bio($id_bio);
					foreach($pd3 as $key3){
						$idbio=$key3->id_bio;
						$nombre_bio=$key3->nombre_bio;
						if($idbio==4){echo $nombre_bio."<br><b>Dosis única</b>";}
						else{echo $nombre_bio."<br><b style='font-weight:900;'>".$num_dosis."ª DOSIS </b>";}}
				 ?>
		 </label></td>
 </td>
</tr>
</table>
<br>
<table align=center border="1" >
<tr style="color:white;text-align:center;border-color:white;">
	<th rowspan="2" style="background-color: #001a2b;">FECHA</th>
	<th rowspan="2" style="background-color: #001a2b;">EVENTO</th>
	<th colspan="2" style="background-color: #001a2b;">40 A 44 AÑOS</th>
	<th colspan="2" style="background-color: #001a2b;">45 A 49 AÑOS</th>
	<th colspan="2" style="background-color: #001a2b;">50 A 54 AÑOS</th>
	<th colspan="2" style="background-color: #001a2b;">55 A 59 AÑOS</th>
	<th colspan="2" style="background-color: #001a2b;">60 A 64 AÑOS</th>
	<th colspan="2" style="background-color: #001a2b;">65 A 69 AÑOS</th>
	<th colspan="2" style="background-color: #001a2b;">70 A 74 AÑOS</th>
	<th colspan="2" style="background-color: #001a2b;">75 A 79 AÑOS</th>
	<th colspan="2" style="background-color: #001a2b;">80 Y MAS AÑOS</th>
	<th colspan="2" style="background-color: #001a2b;">SUBTOTAL</th>
	<th colspan="9" style="background-color: #003d66;">MUJERES EMBARAZADAS</th>
	<th rowspan="2" style="background-color: #001a2b;padding-left:10px; padding-right:10px;">Brigadistas</th>
	<th rowspan="2" style="background-color: #001a2b;padding-left:10px; padding-right:10px;">TOTAL</th>
	<th colspan="2" style="background-color: #001a2b;padding-left:10px; padding-right:10px;">Detalles de los viales usados en la jornada</th>
 </tr>
 <tr style="color:white;text-align:center;border-color:white;">
	<th style="background-color: #001a2b;" width="3%">H</th><th style="background-color: #001a2b;" width="3%">M</th>
 	<th style="background-color: #001a2b;" width="3%">H</th><th style="background-color: #001a2b;" width="3%">M</th>
	<th style="background-color: #001a2b;" width="3%">H</th><th style="background-color: #001a2b;" width="3%">M</th>
	<th style="background-color: #001a2b;" width="3%">H</th><th style="background-color: #001a2b;" width="3%">M</th>
	<th style="background-color: #001a2b;" width="3%">H</th><th style="background-color: #001a2b;" width="3%">M</th>
	<th style="background-color: #001a2b;" width="3%">H</th><th style="background-color: #001a2b;" width="3%">M</th>
	<th style="background-color: #001a2b;" width="3%">H</th><th style="background-color: #001a2b;" width="3%">M</th>
	<th style="background-color: #001a2b;" width="3%">H</th><th style="background-color: #001a2b;" width="3%">M</th>
	<th style="background-color: #001a2b;" width="3%">H</th><th style="background-color: #001a2b;" width="3%">M</th>
	<th style="background-color: #001a2b;" width="3%">H</th><th style="background-color: #001a2b;" width="3%">M</th>
	<th style="background-color: #003d66;" width="3%">18 A 24 AÑOS</th>
	<th style="background-color: #003d66;" width="3%">25 A 29 AÑOS</th>
	<th style="background-color: #003d66;" width="3%">30 A 34 AÑOS</th>
	<th style="background-color: #003d66;" width="3%">25 A 39 AÑOS</th>
	<th style="background-color: #003d66;" width="3%">40 A 44 AÑOS</th>
	<th style="background-color: #003d66;" width="3%">45 A 49 AÑOS</th>
	<th style="background-color: #003d66;" width="3%">50 A 54 AÑOS</th>
	<th style="background-color: #003d66;" width="3%">55 Y MAS AÑOS</th>
	<th style="background-color: #003d66;" width="3%">SUBTOTAL</th>
	<th style="background-color: #66e0ff;border:2px;border-color: black;font-weight:500;padding-left:10px;padding-right:15px;color:black;text-align:center;"><b>Frascos totales</b> utilizados</th>
	<th style="min-width:80px;border-right-color: black;border-right: 1px;border-right-style:solid;background-color: #66e0ff;color:black;font-size:120%;"><label class="totales"><?php echo $total_frascos; ?></label></th>
 </tr>
 <tr style="color:black;">
	 <th rowspan="3" td class="add" style="text-align: center;"><label class="arriba" style="width:100%;"><?php echo $fecha_reporte;?></label></th>
	 <td class="add" style="position:sticky;left:0;z-index:2;background:white;padding-left:10px;padding-right:10px;font-weight:900;">VACUNAS</td>
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
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $H_75; ?></label></td>
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $M_75; ?></label></td>
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $H_80; ?></label></td>
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $M_80; ?></label></td>
		<td style="vertical-align:middle;text-align:center;font-weight:900;"><label class="totales"><?php echo $H_tot_vac; ?></label></td>
		<td style="vertical-align:middle;text-align:center;font-weight:900;"><label class="totales"><?php echo $M_tot_vac ?></label></td>
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $ME_18; ?></label></td>
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $ME_25; ?></label></td>
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $ME_30; ?></label></td>
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $ME_35; ?></label></td>
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $ME_40; ?></label></td>
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $ME_45; ?></label></td>
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $ME_50; ?></label></td>
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $ME_55; ?></label></td>
		<td style="vertical-align:middle;text-align:center;font-weight:900;"><label><?php echo $ME_tot_vac; ?></label></td>
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $briga; ?></label></td>
		<td style="vertical-align:middle;text-align:center;font-weight:900;" rowspan="3"><label class="totales"><?php echo $total; ?></label></td>
		<td style="vertical-align:middle;text-align:center;background-color: #80ffcc;border:2px;border-color: black;font-weight:500;padding-left:10px;padding-right:10px;color:black;">Frascos con dosis <b>completas</b></td>
		<td style="vertical-align:middle;text-align:center;border-right-color: black;border-right: 1px;border-right-style:solid;background-color: #80ffcc"><label style="font-weight:bolder;"><?php echo $Frs_dosis_completas; ?></td>
	</tr>
	<tr style="color:black;">
		<td class="add" style="position:sticky;left:0;z-index:2;background:white;padding-left:10px;padding-right:10px;font-weight:900;">ESAVI <B>NO</B> GRAVE</td>
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
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $HENG_75; ?></label></td>
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $MENG_75; ?></label></td>
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $HENG_80; ?></label></td>
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $MENG_80; ?></label></td>
		<td style="vertical-align:middle;text-align:center;font-weight:900;"><label class="totales"><?php echo $H_tot_ENG; ?></label></td>
		<td style="vertical-align:middle;text-align:center;font-weight:900;"><label class="totales"><?php echo $M_tot_ENG; ?></label></td>
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $MEENG_18; ?></label></td>
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $MEENG_25; ?></label></td>
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $MEENG_30; ?></label></td>
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $MEENG_35; ?></label></td>
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $MEENG_40; ?></label></td>
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $MEENG_45; ?></label></td>
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $MEENG_50; ?></label></td>
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $MEENG_55; ?></label></td>
		<td style="vertical-align:middle;text-align:center;font-weight:900;"><label><?php echo $ME_tot_ENG; ?></label></td>
		<th style="vertical-align:middle;text-align:center;background-color: #001a2b;padding-left:10px; padding-right:10px;color:white;">Personal de Salud</th>
		<td style="vertical-align:middle;text-align:center;background-color: #ff8080;border:2px;border-color: black;font-weight:500;padding-left:10px;padding-right:10px;color:black;">Frascos con dosis <b>incompletas</b></td>
		<td style="vertical-align:middle;text-align:center;border-right-color: black;border-right: 1px;border-right-style:solid;background-color: #ff8080"><label style="font-weight:bolder;"><?php echo $Frs_dosis_incompletas; ?></label></td>
	</tr>
	<tr style="color:black;">
		<td class="add" style="position:sticky;left:0;z-index:2;background:white;padding-left:10px;padding-right:10px;font-weight:900;">ESAVI <B>GRAVE</B></td>
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
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $HEG_75; ?></label></td>
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $MEG_75; ?></label></td>
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $HEG_80; ?></label></td>
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $MEG_80; ?></label></td>
		<td style="vertical-align:middle;text-align:center;font-weight:900;"><label class="totales"><?php echo $H_tot_EG; ?></label></td>
		<td style="vertical-align:middle;text-align:center;font-weight:900;"><label class="totales"><?php echo $M_tot_EG; ?></label></td>
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $MEEG_18; ?></label></td>
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $MEEG_25; ?></label></td>
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $MEEG_30; ?></label></td>
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $MEEG_35; ?></label></td>
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $MEEG_40; ?></label></td>
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $MEEG_45; ?></label></td>
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $MEEG_50; ?></label></td>
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $MEEG_55; ?></label></td>
		<td style="vertical-align:middle;text-align:center;font-weight:900;"><label><?php echo $ME_tot_EG; ?></label></td>
		<td style="vertical-align:middle;text-align:center;"><label class="add"><?php echo $personal_salud; ?></label></td>
		<td style="vertical-align:middle;text-align:center;">Pérdidas en Operación</td>
		<td style="vertical-align:middle;text-align:center;border-right-color: black;border-right: 1px;border-right-style:solid;"><label style="font-weight:bolder;"><?php echo $merma; ?></label></td>
	</tr>
	<tr style="color:black;">
		<td colspan="2" style="text-align: right;"><b>Observaciones:</b></td>
		<td colspan="20">
			<textarea rows="4" cols="120"  readonly style="resize: vertical; max-height:100px;"><?php echo $observa;?></textarea>
		</td>
	</tr>
</table>
<br>
<p style="text-align:center">
En caso de ser necesario realizar alguna correción <b>favor de informarlo a la brevedad posible </b> al responsable para la modificación.
</p>
</div>
