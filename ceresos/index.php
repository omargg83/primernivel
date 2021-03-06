<html lang="es_ES">
<meta name="robots" content="noindex">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <title>Direcci&oacute;n de Primer Nivel de Atenci&oacute;n</title>
  <meta name="author" content="Dirección de Primer Nivel de Atención">
  <meta name="description" content="Plataforma de captura de Información Institucional de Primer Nivel de Atención de los SSH" />
  <meta name="HandheldFriendly" content="True">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
  <!-- Place favicon.ico and apple-touch-icon(s) here  -->
  <link rel="shortcut icon" href="../images/favicon.ico">
  <link rel="stylesheet" href="../css/estilo_censo.css">

<?php
    include('../cnx.php');
?>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script language="javascript">
$(document).ready(function () {
    $("#id_bio").change(function () {
        var val = $(this).val();
        if (val == 4) {
            $("#num_dosis").html("<option value='4'>Única</option>");
        } else{
            $("#num_dosis").html("<option value='1'>1ª dosis</option><option value='2'>2ª dosis</option>");
        }
    });
});
  function Calc(className){
    var elements = document.getElementsByClassName(className);
    var total_H_vac = 0;
    var total_M_vac = 0;
    var total_final = 0;
    var H_total_ENG = 0;
    var M_total_ENG = 0;
    var H_total_EG = 0;
    var M_total_EG = 0;
    var H_18 = parseInt(elements['H_18'].value);
    var M_18 = parseInt(elements['M_18'].value);
    var H_20 = parseInt(elements['H_20'].value);
    var M_20 = parseInt(elements['M_20'].value);
    var H_25 = parseInt(elements['H_25'].value);
    var M_25 = parseInt(elements['M_25'].value);
    var H_30 = parseInt(elements['H_30'].value);
    var M_30 = parseInt(elements['M_30'].value);
    var H_35 = parseInt(elements['H_35'].value);
    var M_35 = parseInt(elements['M_35'].value);
    var H_40 = parseInt(elements['H_40'].value);
    var M_40 = parseInt(elements['M_40'].value);
    var H_45 = parseInt(elements['H_45'].value);
    var M_45 = parseInt(elements['M_45'].value);
    var H_50 = parseInt(elements['H_50'].value);
    var M_50 = parseInt(elements['M_50'].value);
    var H_55 = parseInt(elements['H_55'].value);
    var M_55 = parseInt(elements['M_55'].value);
    var H_60 = parseInt(elements['H_60'].value);
    var M_60 = parseInt(elements['M_60'].value);
    var H_65 = parseInt(elements['H_65'].value);
    var M_65 = parseInt(elements['M_65'].value);
    var H_70 = parseInt(elements['H_70'].value);
    var M_70 = parseInt(elements['M_70'].value);
    var briga = parseInt(elements['briga'].value);
    var personal_salud = parseInt(elements['personal_salud'].value);
      total_H_vac = H_18+H_20+H_25+H_30+H_35+H_40+H_45+H_50+H_55+H_60+H_65+H_70;
      total_M_vac = M_18+M_20+M_25+M_30+M_35+M_40+M_45+M_50+M_55+M_60+M_65+M_70;
      total_final = total_H_vac+total_M_vac+briga+personal_salud;
      document.form0.H_tot_vac.value = total_H_vac;
      document.form0.M_tot_vac.value = total_M_vac;
      document.form0.total.value = total_final;
      var HENG_18 = parseInt(elements['HENG_18'].value);
      var MENG_18 = parseInt(elements['MENG_18'].value);
      var HENG_20 = parseInt(elements['HENG_20'].value);
      var MENG_20 = parseInt(elements['MENG_20'].value);
      var HENG_25 = parseInt(elements['HENG_25'].value);
      var MENG_25 = parseInt(elements['MENG_25'].value);
      var HENG_30 = parseInt(elements['HENG_30'].value);
      var MENG_30 = parseInt(elements['MENG_30'].value);
      var HENG_35 = parseInt(elements['HENG_35'].value);
      var MENG_35 = parseInt(elements['MENG_35'].value);
      var HENG_40 = parseInt(elements['HENG_40'].value);
      var MENG_40 = parseInt(elements['MENG_40'].value);
      var HENG_45 = parseInt(elements['HENG_45'].value);
      var MENG_45 = parseInt(elements['MENG_45'].value);
      var HENG_50 = parseInt(elements['HENG_50'].value);
      var MENG_50 = parseInt(elements['MENG_50'].value);
      var HENG_55 = parseInt(elements['HENG_55'].value);
      var MENG_55 = parseInt(elements['MENG_55'].value);
      var HENG_60 = parseInt(elements['HENG_60'].value);
      var MENG_60 = parseInt(elements['MENG_60'].value);
      var HENG_65 = parseInt(elements['HENG_65'].value);
      var MENG_65 = parseInt(elements['MENG_65'].value);
      var HENG_70 = parseInt(elements['HENG_70'].value);
      var MENG_70 = parseInt(elements['MENG_70'].value);
      H_total_ENG = HENG_18+HENG_20+HENG_25+HENG_30+HENG_35+HENG_40+HENG_45+HENG_50+HENG_55+HENG_60+HENG_65+HENG_70;
      M_total_ENG = MENG_18+MENG_20+MENG_25+MENG_30+MENG_35+MENG_40+MENG_45+MENG_50+MENG_55+MENG_60+MENG_65+MENG_70;
      document.form0.H_tot_ENG.value = H_total_ENG;
      document.form0.M_tot_ENG.value = M_total_ENG;
      var HEG_18 = parseInt(elements['HEG_18'].value);
      var MEG_18 = parseInt(elements['MEG_18'].value);
      var HEG_20 = parseInt(elements['HEG_20'].value);
      var MEG_20 = parseInt(elements['MEG_20'].value);
      var HEG_25 = parseInt(elements['HEG_25'].value);
      var MEG_25 = parseInt(elements['MEG_25'].value);
      var HEG_30 = parseInt(elements['HEG_30'].value);
      var MEG_30 = parseInt(elements['MEG_30'].value);
      var HEG_35 = parseInt(elements['HEG_35'].value);
      var MEG_35 = parseInt(elements['MEG_35'].value);
      var HEG_40 = parseInt(elements['HEG_40'].value);
      var MEG_40 = parseInt(elements['MEG_40'].value);
      var HEG_45 = parseInt(elements['HEG_45'].value);
      var MEG_45 = parseInt(elements['MEG_45'].value);
      var HEG_50 = parseInt(elements['HEG_50'].value);
      var MEG_50 = parseInt(elements['MEG_50'].value);
      var HEG_55 = parseInt(elements['HEG_55'].value);
      var MEG_55 = parseInt(elements['MEG_55'].value);
      var HEG_60 = parseInt(elements['HEG_60'].value);
      var MEG_60 = parseInt(elements['MEG_60'].value);
      var HEG_65 = parseInt(elements['HEG_65'].value);
      var MEG_65 = parseInt(elements['MEG_65'].value);
      var HEG_70 = parseInt(elements['HEG_70'].value);
      var MEG_70 = parseInt(elements['MEG_70'].value);
      H_total_EG = HEG_18+HEG_20+HEG_25+HEG_30+HEG_35+HEG_40+HEG_45+HEG_50+HEG_55+HEG_60+HEG_65+HEG_70;
      M_total_EG = MEG_18+MEG_20+MEG_25+MEG_30+MEG_35+MEG_40+MEG_45+MEG_50+MEG_55+MEG_60+MEG_65+MEG_70;
      document.form0.H_tot_EG.value = H_total_EG;
      document.form0.M_tot_EG.value = M_total_EG;
  }
</script>

</head>
<body>
  <CENTER>
    <IMG SRC="../images/encabezado.png" style="margin-top:12px;">
  	<h1>AVANCE EN LA APLICACIÓN DE VACUNA ANTI COVID-19 EN CENTROS DE READAPTACIÓN SOCIAL</h1>
    <HR align=center width=90% color=#000000>
<form name="form0" id="form0"  method="POST" action="envia_informe.php">
  <table align=center style="width:90%" border="0">
   <tr>
    <td width="10%" style="text-align: right;"><b>Sede de Vacunación:</b></td>
    <td width="60%">
      <select name="sede" id="sede" class="arriba" required style="width:100%;">
        <option value="" disabled selected hidden> — Seleccione la sede a reportar — </option>
        <?php
        $sql="select `cat_sedes`.*, `cat_municipios`.`nombre_mpio` FROM `cat_sedes` LEFT JOIN `cat_municipios` ON `cat_sedes`.`id_mpio` = `cat_municipios`.`id_mpio`
        WHERE `cat_sedes`.`id_proceso`= 3 and `cat_sedes`.`sede_activa`= 1 order by `cat_municipios`.`nombre_mpio` ASC, `cat_sedes`.`nombre_sede`";
        $result = mysqli_query($link,$sql);
        while($row = mysqli_fetch_array($result)) {
            echo"<option value='".$row['id_sede']."'>".$row['nombre_mpio']." – ".$row['nombre_sede']."</option>"; }?>
      </select>
    </td>
    <td  width="15%" style="padding-left:10px; text-align: center; vertical-align:bottom;"><b>Biológico aplicado:</b></td>
    <td  width="15%" style="padding-left:10px; text-align: center; vertical-align:bottom;"><b>Dosis</b></td>
   </tr>
    <tr>
     <td style="text-align: right;"><b>Responsable del informe:</b></td>
     <td><input type="text" name="nombre_captura_inf" id="nombre_captura_inf" class="arriba" placeholder="Escriba el nombre completo del responsable de la integración del reporte en la sede de vacunación." required style="width:100%;"></td>
     <td style="padding-left:10px;vertical-align:top;">
         <select name="id_bio" id="id_bio" class="arriba" required style="width:100%;" class="dosis_cam">
           <option value="" disabled selected hidden>Biologico</option>
           <option value="1">Pfizer/BioNTech</option>
           <option value="2">AstraZeneca</option>
           <option value="3">SinoVac</option>
           <option value="4">CanSino</option>
         </select>
     </td>
     <td style="padding-left:10px;vertical-align:top;">
         <select name="num_dosis" id="num_dosis" class="arriba" required style="width:100%;" class="dosis_cam">
           <option value="" disabled selected hidden>Dosis</option>
         </select>
     </td>
    </tr>
  </table>
<br>
<table>
  <tr class="encabezado">
    <td rowspan="2">FECHA</td>
    <td rowspan="2">EVENTO</td>
    <td colspan="2">18 A 19 AÑOS</td>
    <td colspan="2">20 A 24 AÑOS</td>
    <td colspan="2">25 A 29 AÑOS</td>
    <td colspan="2">30 A 34 AÑOS</td>
    <td colspan="2">35 A 39 AÑOS</td>
    <td colspan="2">40 A 44 AÑOS</td>
    <td colspan="2">45 A 49 AÑOS</td>
    <td colspan="2">50 A 54 AÑOS</td>
    <td colspan="2">55 A 59 AÑOS</td>
    <td colspan="2">60 A 64 AÑOS</td>
    <td colspan="2">65 A 69 AÑOS</td>
    <td colspan="2">70 Y MÁS AÑOS</td>
    <td colspan="2">SUBTOTAL</td>
    <td rowspan="2">BRIGADISTAS</td>
    <td rowspan="2">PERSONAL DE SALUD</td>
    <td rowspan="2">TOTAL</td>
    <td rowspan="2">Mermas/ Pérdidas en Operación</td>
   </tr>
   <tr class="encabezado">
    <td width="3%">H</td><td width="3%">M</td>
    <td width="3%">H</td><td width="3%">M</td>
    <td width="3%">H</td><td width="3%">M</td>
    <td width="3%">H</td><td width="3%">M</td>
    <td width="3%">H</td><td width="3%">M</td>
    <td width="3%">H</td><td width="3%">M</td>
    <td width="3%">H</td><td width="3%">M</td>
    <td width="3%">H</td><td width="3%">M</td>
    <td width="3%">H</td><td width="3%">M</td>
    <td width="3%">H</td><td width="3%">M</td>
    <td width="3%">H</td><td width="3%">M</td>
    <td width="3%">H</td><td width="3%">M</td>
    <td width="3%">H</td><td width="3%">M</td>
   </tr>
   <tr class="reporte">
      <td class="add" rowspan="3" style="padding-left:10px; padding-right:10px;min-width:180px;text-align:center;">
        <select name="fecha_reporte" id="fecha_reporte" class="arriba" required style="width:100%;">
          <option value="" disabled selected hidden>Fecha a reportar</option>
		  <option value="2021-06-14">14/junio/2021</option>
      <option value="2021-06-15">15/junio/2021</option>
		  <option value="2021-06-16">16/junio/2021</option>
		  <option value="2021-06-17">17/junio/2021</option>
		  <option value="2021-06-18">18/junio/2021</option>
        </select>
      </td>
      <td class="add" style="position:sticky;left:0;z-index:2;background:white;padding-left:10px;padding-right:10px;font-weight:900;">VACUNAS</td>
      <td class="add"><input type="text" name="H_18" id="H_18" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td class="add"><input type="text" name="M_18" id="M_18" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td class="add"><input type="text" name="H_20" id="H_20" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td class="add"><input type="text" name="M_20" id="M_20" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td class="add"><input type="text" name="H_25" id="H_25" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td class="add"><input type="text" name="M_25" id="M_25" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td class="add"><input type="text" name="H_30" id="H_30" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td class="add"><input type="text" name="M_30" id="M_30" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td class="add"><input type="text" name="H_35" id="H_35" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td class="add"><input type="text" name="M_35" id="M_35" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td class="add"><input type="text" name="H_40" id="H_40" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td class="add"><input type="text" name="M_40" id="M_40" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td class="add"><input type="text" name="H_45" id="H_45" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td class="add"><input type="text" name="M_45" id="M_45" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td class="add"><input type="text" name="H_50" id="H_50" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td class="add"><input type="text" name="M_50" id="M_50" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td class="add"><input type="text" name="H_55" id="H_55" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td class="add"><input type="text" name="M_55" id="M_55" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td class="add"><input type="text" name="H_60" id="H_60" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td class="add"><input type="text" name="M_60" id="M_60" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td class="add"><input type="text" name="H_65" id="H_65" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td class="add"><input type="text" name="M_65" id="M_65" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td class="add"><input type="text" name="H_70" id="H_70" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td class="add"><input type="text" name="M_70" id="M_70" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td class="add"><input class="totales" readonly id="H_tot_vac" name="H_tot_vac"></td>
      <td class="add"><input class="totales" readonly id="M_tot_vac" name="M_tot_vac"></td>
      <td rowspan="3" class="add"><input type="text" name="briga" id="briga" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" required /></td>
      <td rowspan="3" class="add"><input type="text" name="personal_salud" id="personal_salud" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" readonly required/></td>
      <td rowspan="3" class="add"><input class="totales" readonly id="total" name="total"></td>
      <td class="add" style="border-right-color: black;border-right: 1px;border-right-style:solid;"><input type="text" name="merma" id="merma" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" required /></td>
    </tr>
    <tr class="reporte">
      <td class="add" style="position:sticky;left:0;z-index:2;background:white;padding-left:10px;padding-right:10px;font-weight:900;">ESAVI <B>NO</B> GRAVE</td>
      <td class="add"><input type="text" name="HENG_18" id="HENG_18" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td class="add"><input type="text" name="MENG_18" id="MENG_18" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td class="add"><input type="text" name="HENG_20" id="HENG_20" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td class="add"><input type="text" name="MENG_20" id="MENG_20" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td class="add"><input type="text" name="HENG_25" id="HENG_25" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td class="add"><input type="text" name="MENG_25" id="MENG_25" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td class="add"><input type="text" name="HENG_30" id="HENG_30" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td class="add"><input type="text" name="MENG_30" id="MENG_30" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td class="add"><input type="text" name="HENG_35" id="HENG_35" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td class="add"><input type="text" name="MENG_35" id="MENG_35" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td class="add"><input type="text" name="HENG_40" id="HENG_40" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td class="add"><input type="text" name="MENG_40" id="MENG_40" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td class="add"><input type="text" name="HENG_45" id="HENG_45" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td class="add"><input type="text" name="MENG_45" id="MENG_45" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td class="add"><input type="text" name="HENG_50" id="HENG_50" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td class="add"><input type="text" name="MENG_50" id="MENG_50" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td class="add"><input type="text" name="HENG_55" id="HENG_55" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td class="add"><input type="text" name="MENG_55" id="MENG_55" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td class="add"><input type="text" name="HENG_60" id="HENG_60" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td class="add"><input type="text" name="MENG_60" id="MENG_60" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td class="add"><input type="text" name="HENG_65" id="HENG_65" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td class="add"><input type="text" name="MENG_65" id="MENG_65" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td class="add"><input type="text" name="HENG_70" id="HENG_70" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td class="add"><input type="text" name="MENG_70" id="MENG_70" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td class="add"><input class="totales" readonly id="H_tot_ENG" name="H_tot_ENG"></td>
      <td class="add"><input class="totales" readonly id="M_tot_ENG" name="M_tot_ENG"></td>
      <td class="encabezado" style="border-right-color: black;border-right: 1px;border-right-style:solid; background-color:black; color:white;">Frascos totales usados</td>
    </tr>
    <tr class="reporte">
      <td class="add" style="position:sticky;left:0;z-index:2;background:white;padding-left:10px;padding-right:10px;">ESAVI <B>GRAVE</B></td>
      <td class="add"><input type="text" name="HEG_18" id="HEG_18" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td class="add"><input type="text" name="MEG_18" id="MEG_18" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td class="add"><input type="text" name="HEG_20" id="HEG_20" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td class="add"><input type="text" name="MEG_20" id="MEG_20" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td class="add"><input type="text" name="HEG_25" id="HEG_25" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td class="add"><input type="text" name="MEG_25" id="MEG_25" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td class="add"><input type="text" name="HEG_30" id="HEG_30" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td class="add"><input type="text" name="MEG_30" id="MEG_30" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td class="add"><input type="text" name="HEG_35" id="HEG_35" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td class="add"><input type="text" name="MEG_35" id="MEG_35" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td class="add"><input type="text" name="HEG_40" id="HEG_40" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td class="add"><input type="text" name="MEG_40" id="MEG_40" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td class="add"><input type="text" name="HEG_45" id="HEG_45" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td class="add"><input type="text" name="MEG_45" id="MEG_45" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td class="add"><input type="text" name="HEG_50" id="HEG_50" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td class="add"><input type="text" name="MEG_50" id="MEG_50" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td class="add"><input type="text" name="HEG_55" id="HEG_55" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td class="add"><input type="text" name="MEG_55" id="MEG_55" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td class="add"><input type="text" name="HEG_60" id="HEG_60" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td class="add"><input type="text" name="MEG_60" id="MEG_60" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td class="add"><input type="text" name="HEG_65" id="HEG_65" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td class="add"><input type="text" name="MEG_65" id="MEG_65" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td class="add"><input type="text" name="HEG_70" id="HEG_70" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td class="add"><input type="text" name="MEG_70" id="MEG_70" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td class="add"><input class="totales" readonly id="H_tot_EG" name="H_tot_EG"></td>
      <td class="add"><input class="totales" readonly id="M_tot_EG" name="M_tot_EG"></td>
      <td class="add" style="border-right-color: black;border-right: 1px;border-right-style:solid;"><input type="text" name="frascos" id="frascos" class="add" value="" required  /></td>
    </tr>
    <tr class="reporte">
      <td colspan="20" style="text-align: right;"><b>Observaciones:</b></td>
      <td colspan="9">
        <textarea id="observa" name="observa" rows="5" cols="50" placeholder="Describa a detalle incidencias ocurridas en la sede de vacunación durante la fecha que se informa (ejem. número de frascos con dosis incompletas, movimiento de biológico a otras sedes, temperatura del biológico al momento de recepción, causas de perdidas en la operación, etc.) " required style="width:100%;"></textarea>
      </td>
      <td colspan="3"><input type="submit" value="ENVIAR INFORME"></td>
    </tr>
 </table>
</form>
</body>
</html>
