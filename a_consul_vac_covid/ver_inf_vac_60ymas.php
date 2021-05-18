<?php
	require_once("db_.php");
	$id_sede=$_REQUEST['iddetvac'];
	if($id_sede>0){
		$pd = $db->reporte_60ymas($id_sede);
	}
?>
<div class="container">
	<table style="width:95%">
		<tr>
			<th width="80%"><h2>AVANCE EN LA APLICACIÓN DE VACUNA ANTI COVID-19 A POBLACIÓN DE 60 AÑOS Y MÁS</h2></th>
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
		<?php $pd2 = $db->nombre_sede($id_sede); foreach($pd2 as $key2){echo $key2->nombre_sede;}	?>
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
	<th rowspan="2" style="background-color: #001a2b;">FECHA</th>
	<th rowspan="2" style="background-color: #001a2b;">EVENTO</th>
	<th colspan="2" style="background-color: #001a2b;">60 A 64 AÑOS</th>
	<th colspan="2" style="background-color: #001a2b;">65 A 69 AÑOS</th>
	<th colspan="2" style="background-color: #001a2b;">70 A 74 AÑOS</th>
	<th colspan="2" style="background-color: #001a2b;">75 A 79 AÑOS</th>
	<th colspan="2" style="background-color: #001a2b;">80 Y MAS AÑOS</th>
	<th colspan="2" style="background-color: #001a2b;">SUBTOTAL</th>
	<th rowspan="2" style="background-color: #001a2b;">BRIGADISTAS</th>
	<th rowspan="2" style="background-color: #001a2b;">PERSONAL DE SALUD</th>
	<th rowspan="2" style="background-color: #001a2b;">TOTAL</th>
	<th rowspan="2" style="background-color: #001a2b;">MERMAS/ PÉRDIDAS EN LA OPERACIÓN</th>
 </tr>
 <tr style="color:white;text-align:center;border-color:white;">
	<th style="background-color: #001a2b;" width="3%">H</th><th style="background-color: #001a2b;" width="3%">M</th>
	<th style="background-color: #001a2b;" width="3%">H</th><th style="background-color: #001a2b;" width="3%">M</th>
	<th style="background-color: #001a2b;" width="3%">H</th><th style="background-color: #001a2b;" width="3%">M</th>
	<th style="background-color: #001a2b;" width="3%">H</th><th style="background-color: #001a2b;" width="3%">M</th>
	<th style="background-color: #001a2b;" width="3%">H</th><th style="background-color: #001a2b;" width="3%">M</th>
	<th style="background-color: #001a2b;" width="3%">H</th><th style="background-color: #001a2b;" width="3%">M</th>
 </tr>
 <tr style="color:black;">
	 <th rowspan="3" td class="add" style="text-align: center;"><label class="arriba" style="width:100%;"><?php echo $fecha_reporte;?></label></th>
	 <td class="add" style="position:sticky;left:0;z-index:2;background:white;padding-left:10px;padding-right:10px;font-weight:900;">VACUNAS</td>
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
		<td style="vertical-align:middle;text-align:center;" rowspan="3"><label class="add"><?php echo $briga; ?></label></td>
		<td style="vertical-align:middle;text-align:center;" rowspan="3"><label class="add"><?php echo $personal_salud; ?></label></td>
		<td style="vertical-align:middle;text-align:center;font-weight:900;" rowspan="3"><label class="totales"><?php echo $total; ?></label></td>
		<td style="vertical-align:middle;text-align:center;" rowspan="3" style="border-right-color: black;border-right: 1px;border-right-style:solid;"><label class="add"><?php echo $merma; ?></label></td>
	</tr>
	<tr style="color:black;">
		<td class="add" style="position:sticky;left:0;z-index:2;background:white;padding-left:10px;padding-right:10px;font-weight:900;">ESAVI <B>NO</B> GRAVE</td>
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
	</tr>
	<tr style="color:black;">
		<td class="add" style="position:sticky;left:0;z-index:2;background:white;padding-left:10px;padding-right:10px;font-weight:900;">ESAVI <B>GRAVE</B></td>
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
	</tr>
	<tr style="color:black;">
		<td colspan="2" style="text-align: right;"><b>Observaciones:</b></td>
		<td colspan="16">
			<textarea rows="4" cols="120"  readonly style="resize: vertical; max-height:100px;"><?php echo $observa;?></textarea>
		</td>
	</tr>
</table>
<br>
<p style="text-align:center">
En caso de ser necesario realizar alguna correción <b>favor de informarlo a la brevedad posible </b> al responsable para la modificación.
</p>
</div>
