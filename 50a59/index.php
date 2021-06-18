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
            $('#Frs_dosis_completas').text("(10 dosis por frasco)");
            $('#Frs_dosis_incompletas').text("(9 dosis por frasco)");
        }
        else if (val == 1) {
            $("#num_dosis").html("<option value='1'>1ª dosis</option><option value='2'>2ª dosis</option>");
            $('#Frs_dosis_completas').text("(6 dosis por frasco)");
            $('#Frs_dosis_incompletas').text("(5 dosis por frasco)");
        }
        else if (val == 2) {
            $("#num_dosis").html("<option value='1'>1ª dosis</option><option value='2'>2ª dosis</option>");
            $('#Frs_dosis_completas').text("(10 dosis por frasco)");
            $('#Frs_dosis_incompletas').text("(9 dosis por frasco)");
        }
        else{
            $("#num_dosis").html("<option value='1'>1ª dosis</option><option value='2'>2ª dosis</option>");
            $('#Frs_dosis_completas').text("");
            $('#Frs_dosis_incompletas').text("");
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
    var H_75 = parseInt(elements['H_75'].value);
    var M_75 = parseInt(elements['M_75'].value);
    var H_80 = parseInt(elements['H_80'].value);
    var M_80 = parseInt(elements['M_80'].value);
    var briga = parseInt(elements['briga'].value);
    var personal_salud = parseInt(elements['personal_salud'].value);
      total_H_vac = H_50+H_55+H_60+H_65+H_70+H_75+H_80;
      total_M_vac = M_50+M_55+M_60+M_65+M_70+M_75+M_80;

    var ME_18 = parseInt(elements['ME_18'].value);
    var ME_25 = parseInt(elements['ME_25'].value);
    var ME_30 = parseInt(elements['ME_30'].value);
    var ME_35 = parseInt(elements['ME_35'].value);
    var ME_40 = parseInt(elements['ME_40'].value);
    var ME_45 = parseInt(elements['ME_45'].value);
    var ME_50 = parseInt(elements['ME_50'].value);
    var ME_55 = parseInt(elements['ME_55'].value);
    var ME_total_vac = 0;
    ME_total_vac = ME_18+ME_25+ME_30+ME_35+ME_40+ME_45+ME_50+ME_55;
    document.form0.ME_tot_vac.value = ME_total_vac;

    total_final = total_H_vac+total_M_vac+briga+personal_salud+ME_total_vac;

    document.form0.H_tot_vac.value = total_H_vac;
    document.form0.M_tot_vac.value = total_M_vac;
    document.form0.total.value = total_final;
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
    var HENG_75 = parseInt(elements['HENG_75'].value);
    var MENG_75 = parseInt(elements['MENG_75'].value);
    var HENG_80 = parseInt(elements['HENG_80'].value);
    var MENG_80 = parseInt(elements['MENG_80'].value);
    H_total_ENG = HENG_50+HENG_55+HENG_60+HENG_65+HENG_70+HENG_75+HENG_80;
    M_total_ENG = MENG_50+MENG_55+MENG_60+MENG_65+MENG_70+MENG_75+MENG_80;
    document.form0.H_tot_ENG.value = H_total_ENG;
    document.form0.M_tot_ENG.value = M_total_ENG;

    var MEENG_18 = parseInt(elements['MEENG_18'].value);
    var MEENG_25 = parseInt(elements['MEENG_25'].value);
    var MEENG_30 = parseInt(elements['MEENG_30'].value);
    var MEENG_35 = parseInt(elements['MEENG_35'].value);
    var MEENG_40 = parseInt(elements['MEENG_40'].value);
    var MEENG_45 = parseInt(elements['MEENG_45'].value);
    var MEENG_50 = parseInt(elements['MEENG_50'].value);
    var MEENG_55 = parseInt(elements['MEENG_55'].value);
    var MEENG_total_vac = 0;
    MEENG_total_vac = MEENG_18+MEENG_25+MEENG_30+MEENG_35+MEENG_40+MEENG_45+MEENG_50+MEENG_55;
    document.form0.MEENG_tot_vac.value = MEENG_total_vac;

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
    var HEG_75 = parseInt(elements['HEG_75'].value);
    var MEG_75 = parseInt(elements['MEG_75'].value);
    var HEG_80 = parseInt(elements['HEG_80'].value);
    var MEG_80 = parseInt(elements['MEG_80'].value);
    H_total_EG = HEG_50+HEG_55+HEG_60+HEG_65+HEG_70+HEG_75+HEG_80;
    M_total_EG = MEG_50+MEG_55+MEG_60+MEG_65+MEG_70+MEG_75+MEG_80;
    document.form0.H_tot_EG.value = H_total_EG;
    document.form0.M_tot_EG.value = M_total_EG;

    var MEEG_18 = parseInt(elements['MEEG_18'].value);
    var MEEG_25 = parseInt(elements['MEEG_25'].value);
    var MEEG_30 = parseInt(elements['MEEG_30'].value);
    var MEEG_35 = parseInt(elements['MEEG_35'].value);
    var MEEG_40 = parseInt(elements['MEEG_40'].value);
    var MEEG_45 = parseInt(elements['MEEG_45'].value);
    var MEEG_50 = parseInt(elements['MEEG_50'].value);
    var MEEG_55 = parseInt(elements['MEEG_55'].value);
    var MEEG_total_vac = 0;
    MEEG_total_vac = MEEG_18+MEEG_25+MEEG_30+MEEG_35+MEEG_40+MEEG_45+MEEG_50+MEEG_55;
    document.form0.MEEG_tot_vac.value = MEEG_total_vac;

    var FDC = parseInt(elements['Frs_dosis_completas'].value);
    var FDI = parseInt(elements['Frs_dosis_incompletas'].value);
    FTJ = FDC+FDI;
    document.form0.frascos_totales.value = FTJ;
  }
</script>

</head>
<body>
  <CENTER>
    <IMG SRC="../images/encabezado.png" style="margin-top:12px;">
  	<h1>AVANCE EN LA APLICACIÓN DE VACUNA ANTI COVID-19 A POBLACIÓN DE <b class="c5059">50 A 59 AÑOS</b></h1>
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
              WHERE `cat_sedes`.`id_proceso`= 2 and `cat_sedes`.`sede_activa`= 1 order by `cat_municipios`.`nombre_mpio` ASC, `cat_sedes`.`nombre_sede`";
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
    <td colspan="2" class="c5059">50 A 54 AÑOS</td>
    <td colspan="2" class="c5059">55 A 59 AÑOS</td>
    <td colspan="2" class="c60mas">60 A 64 AÑOS</td>
    <td colspan="2" class="c60mas">65 A 69 AÑOS</td>
    <td colspan="2" class="c60mas">70 A 74 AÑOS</td>
    <td colspan="2" class="c60mas">75 A 79 AÑOS</td>
    <td colspan="2" class="c60mas">80 Y MÁS AÑOS</td>
    <td colspan="2">SUBTOTAL</td>
    <td colspan="9" class="embarazadas">MUJERES EMBARAZADAS</td>
    <td rowspan="2" style="padding-left:10px; padding-right:10px;">Brigadistas</td>
    <td rowspan="2" style="padding-left:10px; padding-right:10px;">TOTAL</td>
    <td colspan="2" style="padding-left:10px; padding-right:10px;">Detalles de los viales usados en la jornada</td>
   </tr>
   <tr class="encabezado">
     <td width="3%" class="c5059">H</td><td width="3%" class="c5059">M</td>
     <td width="3%" class="c5059">H</td><td width="3%" class="c5059">M</td>
     <td width="3%" class="c60mas">H</td><td width="3%" class="c60mas">M</td>
     <td width="3%" class="c60mas">H</td><td width="3%" class="c60mas">M</td>
     <td width="3%" class="c60mas">H</td><td width="3%" class="c60mas">M</td>
     <td width="3%" class="c60mas">H</td><td width="3%" class="c60mas">M</td>
     <td width="3%" class="c60mas">H</td><td width="3%" class="c60mas">M</td>
    <td width="3%">H</td><td width="3%">M</td>
    <td width="3%" class="embarazadas">18 A 24 AÑOS</td>
    <td width="3%" class="embarazadas">25 A 29 AÑOS</td>
    <td width="3%" class="embarazadas">30 A 34 AÑOS</td>
    <td width="3%" class="embarazadas">25 A 39 AÑOS</td>
    <td width="3%" class="embarazadas">40 A 44 AÑOS</td>
    <td width="3%" class="embarazadas">45 A 49 AÑOS</td>
    <td width="3%" class="embarazadas">50 A 54 AÑOS</td>
    <td width="3%" class="embarazadas">55 Y MAS AÑOS</td>
    <td width="3%" class="embarazadas">SUBTOTAL</td>
    <td style="background-color: #66e0ff;border:2px;border-color: black;font-weight:500;padding-left:5px;padding-right:5px;color:black; text-align:center;"><b>FRASCOS TOTALES</b> utilizados</td>
    <td style="border-right-color: black;border-right: 1px;border-right-style:solid;background-color: #66e0ff"><input type=text class="total_frascos" readonly id="frascos_totales" name="frascos_totales"/></td>


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
          <option value="2021-06-19">19/junio/2021</option>
          <option value="2021-06-21">21/junio/2021</option>
          <option value="2021-06-22">22/junio/2021</option>
          <option value="2021-06-23">23/junio/2021</option>
          <option value="2021-06-24">24/junio/2021</option>
          <option value="2021-06-25">25/junio/2021</option>
          <option value="2021-06-26">26/junio/2021</option>
        </select>
      </td>
      <td class="add" style="position:sticky;left:0;z-index:2;background:white;padding-left:10px;padding-right:10px;font-weight:900;">VACUNAS</td>
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
      <td class="add"><input type="text" name="H_75" id="H_75" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td class="add"><input type="text" name="M_75" id="M_75" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td class="add"><input type="text" name="H_80" id="H_80" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td class="add"><input type="text" name="M_80" id="M_80" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td class="add"><input class="totales" readonly id="H_tot_vac" name="H_tot_vac"></td>
      <td class="add"><input class="totales" readonly id="M_tot_vac" name="M_tot_vac"></td>

      <td class="add"><input type="text" name="ME_18" id="ME_18" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td class="add"><input type="text" name="ME_25" id="ME_25" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td class="add"><input type="text" name="ME_30" id="ME_30" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td class="add"><input type="text" name="ME_35" id="ME_35" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td class="add"><input type="text" name="ME_40" id="ME_40" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td class="add"><input type="text" name="ME_45" id="ME_45" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td class="add"><input type="text" name="ME_50" id="ME_50" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td class="add"><input type="text" name="ME_55" id="ME_55" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td class="add"><input class="totales" readonly id="ME_tot_vac" name="ME_tot_vac"></td>
      <td class="add"><input type="text" name="briga" id="briga" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td rowspan="3" class="add"><input class="totales" readonly id="total" name="total"></td>
      <td style="background-color: #80ffcc;border:2px;border-color: black;font-weight:500;padding-left:10px;padding-right:10px;color:black;">Número de frascos con <br>dosis <b style="font-weight:900;font-size:120%;">COMPLETAS</b><br><label id="Frs_dosis_completas" style="font-weight:900;"></label></td>
      <td style="border-right-color: black;border-right: 1px;border-right-style:solid;background-color: #80ffcc"><input type="text" name="Frs_dosis_completas" id="Frs_dosis_completas" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" required /></td>
    </tr>
    <tr class="reporte">
      <td class="add" style="position:sticky;left:0;z-index:2;background:white;padding-left:10px;padding-right:10px;font-weight:900;">ESAVI <B>NO</B> GRAVE</td>
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
      <td class="add"><input type="text" name="HENG_75" id="HENG_75" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td class="add"><input type="text" name="MENG_75" id="MENG_75" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td class="add"><input type="text" name="HENG_80" id="HENG_80" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td class="add"><input type="text" name="MENG_80" id="MENG_80" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td class="add"><input class="totales" readonly id="H_tot_ENG" name="H_tot_ENG"></td>
      <td class="add"><input class="totales" readonly id="M_tot_ENG" name="M_tot_ENG"></td>

      <td class="add"><input type="text" name="MEENG_18" id="MEENG_18" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td class="add"><input type="text" name="MEENG_25" id="MEENG_25" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td class="add"><input type="text" name="MEENG_30" id="MEENG_30" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td class="add"><input type="text" name="MEENG_35" id="MEENG_35" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td class="add"><input type="text" name="MEENG_40" id="MEENG_40" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td class="add"><input type="text" name="MEENG_45" id="MEENG_45" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td class="add"><input type="text" name="MEENG_50" id="MEENG_50" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td class="add"><input type="text" name="MEENG_55" id="MEENG_55" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td class="add"><input class="totales" readonly id="MEENG_tot_vac" name="MEENG_tot_vac"></td>

      <td class="encabezado" style="border-right-color:#001a2b;border-right:1px;border-right-style:solid;background-color:#001a2b; color:white;">Personal de Salud</td>
      <td style="background-color: #ff8080;border:2px;border-color: black;font-weight:500;padding-left:10px;padding-right:10px;color:black;">Número de frascos con <br>dosis <b style="font-weight:900;font-size:120%;">INCOMPLETAS</b><br><label id="Frs_dosis_incompletas" style="font-weight:900;"></label></td>
      <td style="border-right-color: black;border-right: 1px;border-right-style:solid;background-color: #ff8080"><input type="text" name="Frs_dosis_incompletas" id="Frs_dosis_incompletas" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" required /></td>
    </tr>
    <tr class="reporte">
      <td class="add" style="position:sticky;left:0;z-index:2;background:white;padding-left:10px;padding-right:10px;">ESAVI <B>GRAVE</B></td>
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
      <td class="add"><input type="text" name="HEG_75" id="HEG_75" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td class="add"><input type="text" name="MEG_75" id="MEG_75" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td class="add"><input type="text" name="HEG_80" id="HEG_80" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td class="add"><input type="text" name="MEG_80" id="MEG_80" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td class="add"><input class="totales" readonly id="H_tot_EG" name="H_tot_EG"></td>
      <td class="add"><input class="totales" readonly id="M_tot_EG" name="M_tot_EG"></td>

      <td class="add"><input type="text" name="MEEG_18" id="MEEG_18" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td class="add"><input type="text" name="MEEG_25" id="MEEG_25" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td class="add"><input type="text" name="MEEG_30" id="MEEG_30" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td class="add"><input type="text" name="MEEG_35" id="MEEG_35" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td class="add"><input type="text" name="MEEG_40" id="MEEG_40" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td class="add"><input type="text" name="MEEG_45" id="MEEG_45" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td class="add"><input type="text" name="MEEG_50" id="MEEG_50" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td class="add"><input type="text" name="MEEG_55" id="MEEG_55" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td class="add"><input class="totales" readonly id="MEEG_tot_vac" name="MEEG_tot_vac"></td>

      <td class="add"><input type="text" name="personal_salud" id="personal_salud" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
      <td class="add">Pérdidas en Operación</td>
      <td class="add"><input type="text" name="merma" id="merma" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" required /></td>
    </tr>
    <tr class="reporte">
      <td colspan="12"style="text-align: right;"><b>Observaciones:</b></td>
      <td colspan="15">
        <textarea id="observa" name="observa" rows="3" cols="50" placeholder="Describa a detalle incidencias ocurridas en la sede de vacunación durante la jornada que se informa (ejem. movimiento de biológico a otras sedes, causas de perdidas en la operación, temperatura del biológico, etc.) " required style="width:100%;"></textarea>
      </td>
      <td colspan="4"><input type="submit" value="ENVIAR INFORME"></td>
    </tr>
 </table>
</form>
</body>
</html>
