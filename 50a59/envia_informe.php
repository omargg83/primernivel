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
<?php  include('../cnx.php');  ?>
</head>
<body>
  <CENTER>
    <table style="width:95%">
      <tr>
        <td width="80%"><h1>AVANCE EN LA APLICACIÓN DE VACUNA ANTI COVID-19 A POBLACIÓN DE 50 A 59 AÑOS</h1></td>
        <td width="20%"><IMG class="esc_armas" SRC="../images/esc_armas.png" style="margin-top:12px;"></td>
      <tr></table>
    <HR align=center width=95% color=#000000><br>
<?php
  //OBTIENE VALORES DEL FOPRMULARIO
    $originalDate = $_POST['fecha_reporte'];
    $fecha_reporte = date("d/M/Y", strtotime($originalDate));
    $id_sede = $_POST['sede'];
    $nombre_captura_inf = $_POST['nombre_captura_inf'];
    $id_bio = $_POST['id_bio'];
    $num_dosis = $_POST['num_dosis'];
    $H_50 = $_POST['H_50'];
    $M_50 = $_POST['M_50'];
    $H_55 = $_POST['H_55'];
    $M_55 = $_POST['M_55'];
    $HENG_50 = $_POST['HENG_50'];
    $MENG_50 = $_POST['MENG_50'];
    $HENG_55 = $_POST['HENG_55'];
    $MENG_55 = $_POST['MENG_55'];
    $HEG_50 = $_POST['HEG_50'];
    $MEG_50 = $_POST['MEG_50'];
    $HEG_55 = $_POST['HEG_55'];
    $MEG_55 = $_POST['MEG_55'];
    $H_60 = $_POST['H_60'];
    $M_60 = $_POST['M_60'];
    $H_65 = $_POST['H_65'];
    $M_65 = $_POST['M_65'];
    $H_70 = $_POST['H_70'];
    $M_70 = $_POST['M_70'];
    $H_75 = $_POST['H_75'];
    $M_75 = $_POST['M_75'];
    $H_80 = $_POST['H_80'];
    $M_80 = $_POST['M_80'];
    $HENG_60 = $_POST['HENG_60'];
    $MENG_60 = $_POST['MENG_60'];
    $HENG_65 = $_POST['HENG_65'];
    $MENG_65 = $_POST['MENG_65'];
    $HENG_70 = $_POST['HENG_70'];
    $MENG_70 = $_POST['MENG_70'];
    $HENG_75 = $_POST['HENG_75'];
    $MENG_75 = $_POST['MENG_75'];
    $HENG_80 = $_POST['HENG_80'];
    $MENG_80 = $_POST['MENG_80'];
    $HEG_60 = $_POST['HEG_60'];
    $MEG_60 = $_POST['MEG_60'];
    $HEG_65 = $_POST['HEG_65'];
    $MEG_65 = $_POST['MEG_65'];
    $HEG_70 = $_POST['HEG_70'];
    $MEG_70 = $_POST['MEG_70'];
    $HEG_75 = $_POST['HEG_75'];
    $MEG_75 = $_POST['MEG_75'];
    $HEG_80 = $_POST['HEG_80'];
    $MEG_80 = $_POST['MEG_80'];
    $briga = $_POST['briga'];
    $personal_salud = $_POST['personal_salud'];
    $merma = $_POST['merma'];
    $observa = $_POST['observa'];
     //variables de totales
     $H_tot_vac= $_POST['H_tot_vac'];
     $M_tot_vac= $_POST['M_tot_vac'];
     $total= $_POST['total'];
     $H_tot_ENG= $_POST['H_tot_ENG'];
     $M_tot_ENG= $_POST['M_tot_ENG'];
     $H_tot_EG= $_POST['H_tot_EG'];
     $M_tot_EG= $_POST['M_tot_EG'];
     date_default_timezone_set('America/Mexico_City');
     $hora_captura = date('Y-m-d H:i:s');
     $frascos_totales = $_POST['frascos_totales'];
     $Frs_dosis_completas = $_POST['Frs_dosis_completas'];
     $Frs_dosis_incompletas = $_POST['Frs_dosis_incompletas'];

       $sql = "INSERT INTO `det_vac_50a59` (`hora_captura`,`id_sede`, `nombre_captura_inf`, `id_bio`, `num_dosis`, `fecha_reporte`, `H_50`, `M_50`, `H_55`, `M_55`,`HENG_50`, `MENG_50`, `HENG_55`, `MENG_55`,`HEG_50`, `MEG_50`, `HEG_55`, `MEG_55`, `H_60`, `M_60`, `H_65`, `M_65`,`HENG_60`, `MENG_60`, `HENG_65`, `MENG_65`, `HEG_60`, `MEG_60`, `HEG_65`, `MEG_65`,`H_70`, `M_70`, `H_75`, `M_75`,`HENG_70`, `MENG_70`, `HENG_75`, `MENG_75`, `HEG_70`, `MEG_70`, `HEG_75`, `MEG_75`,`H_80`, `M_80`,`HENG_80`, `MENG_80`,`HEG_80`, `MEG_80`,`briga`, `personal_salud`, `merma`, `Frs_dosis_completas`, `Frs_dosis_incompletas`, `observa`) VALUES ('".$hora_captura."','".$id_sede."','".$nombre_captura_inf."','".$id_bio."','".$num_dosis."','".$originalDate."',".$H_50.",".$M_50.",".$H_55.",".$M_55.",".$HENG_50.",".$MENG_50.",".$HENG_55.",".$MENG_55.",".$HEG_50.",".$MEG_50.",".$HEG_55.",".$MEG_55.",'".$H_60."','".$M_60."','".$H_65."','".$M_65."','".$HENG_60."','".$MENG_60."','".$HENG_65."','".$MENG_65."','".$HEG_60."','".$MEG_60."','".$HEG_65."','".$MEG_65."','".$H_70."','".$M_70."','".$H_75."','".$M_75."','".$HENG_70."','".$MENG_70."','".$HENG_75."','".$MENG_75."','".$HEG_70."','".$MEG_70."','".$HEG_75."','".$MEG_75."','".$H_80."','".$M_80."','".$HENG_80."','".$MENG_80."','".$HEG_80."','".$MEG_80."',".$briga.",".$personal_salud.",".$merma.",".$Frs_dosis_completas.",".$Frs_dosis_incompletas.",'".$observa."');";
       $result = mysqli_query($link,$sql);

?>
<h2>INFORMACIÓN REGISTRADA SATISFACTORIAMENTE EN SISTEMA</h2>
<br>
<table align=center style="width:90%" border="0">
 <tr>
  <td width="10%" style="text-align: right;"><b>Sede de Vacunación:</b></td>
  <td width="70%" style="text-align: left;">
    <label class="arriba">
      <?php
          $sql_sede="SELECT nombre_sede FROM cat_sedes WHERE id_sede=".$id_sede.";";
          $result_sede = mysqli_query($link, $sql_sede);
          while($row = mysqli_fetch_array($result_sede)) { echo $row['nombre_sede']; }
        ?>
    </label>
  </td>
  <td  width="20%" style="padding-left:10px; text-align: center; vertical-align:bottom;"><b>Biológico aplicado:</b></td>
 </tr>
  <tr>
   <td style="text-align: right;"><b>Responsable del informe:</b></td>
   <td  style="text-align: left;"><label class="arriba" style="width:100%;"><?php echo $nombre_captura_inf;?></label></td>
   <td style="padding-left:10px;vertical-align:top;">
       <label class="arriba" style="width:100%;">
         <?php
             $sql_sede="SELECT nombre_bio FROM cat_bio WHERE id_bio=".$id_bio.";";
             $result_sede = mysqli_query($link, $sql_sede);
             while($row = mysqli_fetch_array($result_sede)) { if($num_dosis==4){echo $row['nombre_bio']."<br>Dosis única";}else{echo $row['nombre_bio']."<br>".$num_dosis."ª DOSIS";}}
           ?>
       </label></td>
   </td>
  </tr>
</table>
<br>
<table>
  <tr class="encabezado">
    <td rowspan="2">FECHA</td>
    <td rowspan="2">EVENTO</td>
    <td colspan="2">50 A 54 AÑOS</td>
    <td colspan="2">55 A 59 AÑOS</td>
    <td colspan="2">60 A 64 AÑOS</td>
    <td colspan="2">65 A 69 AÑOS</td>
    <td colspan="2">70 A 74 AÑOS</td>
    <td colspan="2">75 A 79 AÑOS</td>
    <td colspan="2">80 Y MÁS AÑOS</td>
    <td colspan="2">SUBTOTAL</td>
    <td rowspan="2" style="padding-left:10px; padding-right:10px;">Brigadistas</td>
    <td rowspan="2" style="padding-left:10px; padding-right:10px;">TOTAL</td>
    <td colspan="2" style="padding-left:10px; padding-right:10px;">Detalles de los viales usados en la jornada</td>
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
    <td style="background-color: #66e0ff;border:2px;border-color: black;font-weight:500;padding-left:10px;padding-right:15px;color:black; text-align:center;"><b>FRASCOS TOTALES</b> utilizados</td>
    <td style="border-right-color: black;border-right: 1px;border-right-style:solid;background-color: #66e0ff"><label class="totales"><?php echo $frascos_totales; ?></label></td>

   </tr>
   <tr class="reporte">
     <td rowspan="3" td class="add" style="text-align: center;"><label class="arriba" style="width:100%;"><?php echo $fecha_reporte;?></label></td>
     <td class="add" style="position:sticky;left:0;z-index:2;background:white;padding-left:10px;padding-right:10px;font-weight:900;">VACUNAS</td>
      <td class="add"><label class="add"><?php echo $H_50; ?></label></td>
      <td class="add"><label class="add"><?php echo $M_50; ?></label></td>
      <td class="add"><label class="add"><?php echo $H_55; ?></label></td>
      <td class="add"><label class="add"><?php echo $M_55; ?></label></td>
      <td class="add"><label class="add"><?php echo $H_60; ?></label></td>
      <td class="add"><label class="add"><?php echo $M_60; ?></label></td>
      <td class="add"><label class="add"><?php echo $H_65; ?></label></td>
      <td class="add"><label class="add"><?php echo $M_65; ?></label></td>
      <td class="add"><label class="add"><?php echo $H_70; ?></label></td>
      <td class="add"><label class="add"><?php echo $M_70; ?></label></td>
      <td class="add"><label class="add"><?php echo $H_75; ?></label></td>
      <td class="add"><label class="add"><?php echo $M_75; ?></label></td>
      <td class="add"><label class="add"><?php echo $H_80; ?></label></td>
      <td class="add"><label class="add"><?php echo $M_80; ?></label></td>
      <td class="add"><label class="totales"><?php echo $H_tot_vac; ?></label></td>
      <td class="add"><label class="totales"><?php echo $M_tot_vac ?></label></td>
      <td class="add"><label class="add"><?php echo $briga; ?></label></td>
      <td class="add" rowspan="3"><label class="totales"><?php echo $total; ?></label></td>
      <td style="background-color: #80ffcc;border:2px;border-color: black;font-weight:500;padding-left:10px;padding-right:10px;color:black;">Número de frascos con <br>dosis <b style="font-weight:900;font-size:120%;">COMPLETAS</b></td>
      <td style="border-right-color: black;border-right: 1px;border-right-style:solid;background-color: #80ffcc"><label class="totales"><?php echo $Frs_dosis_completas; ?></td>
    </tr>
    <tr class="reporte">
      <td class="add" style="position:sticky;left:0;z-index:2;background:white;padding-left:10px;padding-right:10px;font-weight:900;">ESAVI <B>NO</B> GRAVE</td>
      <td class="add"><label class="add"><?php echo $HENG_50; ?></label></td>
      <td class="add"><label class="add"><?php echo $MENG_50; ?></label></td>
      <td class="add"><label class="add"><?php echo $HENG_55; ?></label></td>
      <td class="add"><label class="add"><?php echo $MENG_55; ?></label></td>
      <td class="add"><label class="add"><?php echo $HENG_60; ?></label></td>
      <td class="add"><label class="add"><?php echo $MENG_60; ?></label></td>
      <td class="add"><label class="add"><?php echo $HENG_65; ?></label></td>
      <td class="add"><label class="add"><?php echo $MENG_65; ?></label></td>
      <td class="add"><label class="add"><?php echo $HENG_70; ?></label></td>
      <td class="add"><label class="add"><?php echo $MENG_70; ?></label></td>
      <td class="add"><label class="add"><?php echo $HENG_75; ?></label></td>
      <td class="add"><label class="add"><?php echo $MENG_75; ?></label></td>
      <td class="add"><label class="add"><?php echo $HENG_80; ?></label></td>
      <td class="add"><label class="add"><?php echo $MENG_80; ?></label></td>
      <td class="add"><label class="totales"><?php echo $H_tot_ENG; ?></label></td>
      <td class="add"><label class="totales"><?php echo $M_tot_ENG; ?></label></td>
      <td class="encabezado" style="border-right-color:#001a2b;border-right:1px;border-right-style:solid;background-color:#001a2b; color:white;">Personal de Salud</td>
      <td style="background-color: #ff8080;border:2px;border-color: black;font-weight:500;padding-left:10px;padding-right:10px;color:black;">Número de frascos con <br>dosis <b style="font-weight:900;font-size:120%;">INCOMPLETAS</b></td>
      <td style="border-right-color: black;border-right: 1px;border-right-style:solid;background-color: #ff8080"><label class="totales"><?php echo $Frs_dosis_incompletas; ?></label></td>

    </tr>
    <tr class="reporte">
      <td class="add" style="position:sticky;left:0;z-index:2;background:white;padding-left:10px;padding-right:10px;">ESAVI <B>GRAVE</B></td>
      <td class="add"><label class="add"><?php echo $HEG_50; ?></label></td>
      <td class="add"><label class="add"><?php echo $MEG_50; ?></label></td>
      <td class="add"><label class="add"><?php echo $HEG_55; ?></label></td>
      <td class="add"><label class="add"><?php echo $MEG_55; ?></label></td>
      <td class="add"><label class="add"><?php echo $HEG_60; ?></label></td>
      <td class="add"><label class="add"><?php echo $MEG_60; ?></label></td>
      <td class="add"><label class="add"><?php echo $HEG_65; ?></label></td>
      <td class="add"><label class="add"><?php echo $MEG_65; ?></label></td>
      <td class="add"><label class="add"><?php echo $HEG_70; ?></label></td>
      <td class="add"><label class="add"><?php echo $MEG_70; ?></label></td>
      <td class="add"><label class="add"><?php echo $HEG_75; ?></label></td>
      <td class="add"><label class="add"><?php echo $MEG_75; ?></label></td>
      <td class="add"><label class="add"><?php echo $HEG_80; ?></label></td>
      <td class="add"><label class="add"><?php echo $MEG_80; ?></label></td>
      <td class="add"><label class="totales"><?php echo $H_tot_EG; ?></label></td>
      <td class="add"><label class="totales"><?php echo $M_tot_EG; ?></label></td>
      <td class="add"><label class="totales"><?php echo $personal_salud; ?></label></td>
      <td class="add">Pérdidas en Operación</td>
      <td class="add" style="border-right-color: black;border-right: 1px;border-right-style:solid;"><label class="totales"><?php echo $merma; ?></label></td>
    </tr>
    <tr class="reporte">
      <td colspan="8" style="text-align: right;"><b>Observaciones:</b></td>
      <td colspan="12">
        <textarea readonly rows="2" cols="50"style="width:100%;"><?php echo $observa;?></textarea>
      </td>
    </tr>
 </table>
<br>
  <p>
    <h3>En caso de ser necesario realizar alguna correción <b>favor de informarlo a la brevedad posible </b> al responsable para la modificación.</h3>
  </p>
<br>
  <button onclick="nuevo_inf()">Enviar un nuevo informe</button>
  <script>
    function nuevo_inf() {
      window.location.replace("../index.php");
    }
  </script>
<br>
</body>
</html>
