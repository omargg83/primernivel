/*****************************************************************************************************/
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
      total_H_vac = H_60+H_65+H_70+H_75+H_80;
      total_M_vac = M_60+M_65+M_70+M_75+M_80;
      total_final = total_H_vac+total_M_vac+briga+personal_salud;
      document.form0.H_tot_vac.value = total_H_vac;
      document.form0.M_tot_vac.value = total_M_vac;
      document.form0.total.value = total_final;

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
      H_total_ENG = HENG_60+HENG_65+HENG_70+HENG_75+HENG_80;
      M_total_ENG = MENG_60+MENG_65+MENG_70+MENG_75+MENG_80;
      document.form0.H_tot_ENG.value = H_total_ENG;
      document.form0.M_tot_ENG.value = M_total_ENG;
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
      H_total_EG = HEG_60+HEG_65+HEG_70+HEG_75+HEG_80;
      M_total_EG = MEG_60+MEG_65+MEG_70+MEG_75+MEG_80;
      document.form0.H_tot_EG.value = H_total_EG;
      document.form0.M_tot_EG.value = M_total_EG;
  }
</script>

</head>
<body>
  <CENTER>
    <IMG SRC="../images/encabezado.png" style="margin-top:12px;">
  	<h1>AVANCE EN LA APLICACIÓN DE VACUNA ANTI COVID-19 A ADULTO MAYOR (60 AÑOS Y MÁS)</h1>
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
          WHERE `cat_sedes`.`id_proceso`= 1 and `cat_sedes`.`sede_activa`= 1 order by `cat_municipios`.`nombre_mpio` ASC, `cat_sedes`.`nombre_sede`";
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
       </selected>
   </td>
   <td style="padding-left:10px;vertical-align:top;">
       <select name="num_dosis" id="num_dosis" class="arriba" required style="width:100%;" class="dosis_cam">
         <option value="" disabled selected hidden>Dosis</option>
       </selected>
   </td>
  </tr>
</table>
<br>
<table>
  <tr class="encabezado">
    <td rowspan="2">FECHA</td>
    <td rowspan="2">EVENTO</td>
    <td colspan="2">60 A 64 AÑOS</td>
    <td colspan="2">65 A 69 AÑOS</td>
    <td colspan="2">70 A 74 AÑOS</td>
    <td colspan="2">75 A 79 AÑOS</td>
    <td colspan="2">80 Y MÁS AÑOS</td>
    <td colspan="2">SUBTOTAL</td>
    <td rowspan="2" style="padding-left:10px; padding-right:10px;">BRIGADISTAS</td>
    <td rowspan="2" style="padding-left:10px; padding-right:10px;">PERSONAL DE SALUD</td>
    <td rowspan="2" style="padding-left:10px; padding-right:10px;">TOTAL</td>
    <td rowspan="2" style="padding-left:10px; padding-right:10px;">Mermas/ Pérdidas en Operación</td>
   </tr>
   <tr class="encabezado">
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
          <option value="2021-03-04">04/abr/2021</option>
          <option value="2021-03-05">05/abr/2021</option>
          <option value="2021-03-06">06/abr/2021</option>
          <option value="2021-03-07">07/abr/2021</option>
          <option value="2021-03-08">08/abr/2021</option>
        </select>
      </td>
      <td class="add" style="position:sticky;left:0;z-index:2;background:white;padding-left:10px;padding-right:10px;font-weight:900;">VACUNAS</td>
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
      <td rowspan="3" class="add"><input type="text" name="briga" id="briga" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" required /></td>
      <td rowspan="3" class="add"><input type="text" name="personal_salud" id="personal_salud" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" required /></td>
      <td rowspan="3" class="add"><input class="totales" readonly id="total" name="total"></td>
      <td class="add" style="border-right-color: black;border-right: 1px;border-right-style:solid;"><input type="text" name="merma" id="merma" class="add" value="0" onKeyUp="Calc('add')" onClick="this.focus();this.select();" /></td>
    </tr>
    <tr class="reporte">
      <td class="add" style="position:sticky;left:0;z-index:2;background:white;padding-left:10px;padding-right:10px;font-weight:900;">ESAVI <B>NO</B> GRAVE</td>
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
      <td class="encabezado" style="border-right-color: black;border-right: 1px;border-right-style:solid; background-color:black; color:white;">Frascos totales usados</td>
    </tr>
    <tr class="reporte">
      <td class="add" style="position:sticky;left:0;z-index:2;background:white;padding-left:10px;padding-right:10px;">ESAVI <B>GRAVE</B></td>
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
      <td class="add" style="border-right-color: black;border-right: 1px;border-right-style:solid;"><input type="text" name="frascos" id="frascos" class="add" value="" required  /></td>
    </tr>
    <tr class="reporte">
      <td colspan="7" style="text-align: right;"><b>Observaciones:</b></td>
      <td colspan="10">
        <textarea id="observa" name="observa" rows="4" cols="50" placeholder="Describa a detalle incidencias ocurridas en la sede de vacunación durante la fecha que se informa (ejem. número de frascos con dosis incompletas, movimiento de biológico a otras sedes, temperatura del biológico al momento de recepción, causas de perdidas en la operación, etc.) " required style="width:100%;"></textarea>
      </td>
      <td><input type="submit" value="ENVIAR INFORME"></td>
    </tr>
 </table>
</form>
</body>
</html>
