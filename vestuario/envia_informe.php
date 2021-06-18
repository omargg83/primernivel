<?php
    include('../cnx.php');
    $idrh = $_POST['idrh'];
    $sql="select `cat_vest2021`.*, `cat_tipo_vestuario`.`prenda_inf`, `cat_tipo_vestuario`.`calzado`
        from `cat_vest2021`
          left join `cat_tipo_vestuario` on `cat_vest2021`.`idtipovest` = `cat_tipo_vestuario`.`idtipovest`
        where `cat_vest2021`.`idvest2021`=".$idrh.";";
        $datos = mysqli_query($link,$sql);
        while($datos = mysqli_fetch_array($datos)){
            $rfc = $datos['rfc'];
            $nombre = $datos['nombre'];
            $idclues = $datos['idclues'];
            $idareasvest = $datos['idareasvest'];
            $ocu_prenda_inf = $datos['prenda_inf'];
            $ocu_calzado = $datos['calzado'];
        }
    $idclues = $_POST['clues'];
    $genero = $_POST['genero'];
    $prenda_sup = $_POST['prenda_sup'];
      if($idareasvest<18){
      $sql_act = "update `cat_vest2021` set `genero` = '".$genero."', `idclues` = '".$idclues."',`talla_prenda_sup` = '".$prenda_sup."' where `cat_vest2021`.`idvest2021`=".$idrh;
      //echo $sql_act;
      $result = mysqli_query($link,$sql_act);
      }
      else {
        $sql_act = "update `cat_vest2021` set `genero` = '".$genero."',`talla_prenda_sup` = '".$prenda_sup."' where `cat_vest2021`.`idvest2021`=".$idrh;
        //echo $sql_act;
        $result = mysqli_query($link,$sql_act);
      }

    if($ocu_prenda_inf==1)
    {
      $prenda_inf = $_POST['prenda_inf'];
      $sql_act = "update `cat_vest2021` set `talla_prenda_inf` = '".$prenda_inf."' where `cat_vest2021`.`idvest2021`=".$idrh.";";
      $result = mysqli_query($link,$sql_act);
    }
    if($ocu_calzado==1)
    {
      $calzado = $_POST['calzado'];
      $sql_act = "update `cat_vest2021` set `talla_calzado` = '".$calzado."' where `cat_vest2021`.`idvest2021`=".$idrh.";";
      $result = mysqli_query($link,$sql_act);
    }
?>

<html lang="es_ES">
<meta name="robots" content="noindex">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <title>Dirección de Primer Nivel de Atención</title>
  <meta name="author" content="Dirección de Primer Nivel de Atención">
  <meta name="description" content="Plataforma de captura de Información Institucional de Primer Nivel de Atención de los SSH" />
  <meta name="HandheldFriendly" content="True">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
  <!-- Place favicon.ico and apple-touch-icon(s) here  -->
  <link rel="shortcut icon" href="../images/favicon.ico">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/js/all.min.js" crossorigin="anonymous"></script>
  <link rel="stylesheet" href="librerias15/load/css-loader.css">
  <link rel="stylesheet" href="librerias15/css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.css" />
  <link rel="stylesheet" href="librerias15/swal/dist/sweetalert2.min.css">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/uikit@3.5.5/dist/css/uikit.min.css" />
  <!-- Custom fonts for this template-->
  <link href="../vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css2?family=Roboto:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

<!-- Custom styles for this template-->
<link href="css/sb-admin-2.min.css" rel="stylesheet">
<link href="ipsi.css" rel="stylesheet">


  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
</head>

<body>
<div class="container">
  <CENTER>
    <IMG SRC="../images/encabezado.png" style="margin-top:12px;">
  	<h3>TALLAS PARA DOTACIÓN DE VESTUARIO <b>2021</b></h3>
    <HR align=center width=90% color=#000000>
    <div class='card'>
      <div class='card-header text-white bg-success'>
        <h4>INFORMACIÓN REGISTRADA CORRECTAMENTE   <i class="fas fa-check"></i> </h4>
      </div>

      <div class='card-body' style="color:black;">
        <div class='row'>
          <div class="col-sm" style="text-align:left;">
            <label>R.F.C. y nombre del trabajador:</label>
            <label class="form-control form-control-md" style="font-weight:700; color:black;"> <?php echo $rfc." - ".$nombre; ?> </label>
          </div>
          <div class="col-sm" style="text-align:left;">
            <?php
            if($idareasvest>17){
              $sql1="select * from `cat_areas_vestuario` where `idareasvest`=".$idareasvest.";";
                $datos = mysqli_query($link,$sql1);
                while($datos = mysqli_fetch_array($datos)){
                  echo "<label>Área donde labora:</label>";
                  echo "<label class='form-control form-control-md' style='font-weight:700; color:black;'>".$datos['nombre_area']."</label>";
                }
            }
            else{
              $sql1="select * from `cat_clues_vest` where `idclues`=".$idclues.";";
                $datos = mysqli_query($link,$sql1);
                while($datos = mysqli_fetch_array($datos)){
                  echo "<label>CLUES donde labora:</label>";
                  echo "<label class='form-control form-control-md' style='font-weight:700; color:black;'>".$datos['clues']." ".$datos['nom_clues']."</label>";
                }
              }
            ?>
          </div>
          <div class="col-sm" style="text-align:left;">
            <label>Género del trabajador:</label>
            <label class="form-control form-control-md" style="font-weight:700; color:black;">
            <?php
              if($genero==1){ echo "Hombre";}
              else{ echo "Mujer";}
            ?></label>
          </div>
        </div>
        <div class='row'><br></div>
        <div class='row'>
          <div class="col-sm-4">
            <div class="form-group">
              <label>Talla seleccionada para prenda <?php if($ocu_prenda_inf>0){ echo "superior"; }?> <i style="color:gray; font-size:90%;">(bata/filipina/unif quirúrgico/camisa)</i></label>
              <label class="form-control form-control-lg" style="font-weight:900; font-size:150%; color:black;"> <?php echo $prenda_sup; ?> </label>
            </div>
          </div>
          <?php
            if($ocu_prenda_inf>0){
            ?>
            <div class="col-sm-4">
              <div class="form-group">
                <label>Talla seleccionada para prenda inferior <br><i style="color:gray; font-size:90%;">(pantalón)</i></label>
                <label class="form-control form-control-lg" style="font-weight:900; font-size:150%; color:black;"> <?php echo $prenda_inf; ?> </label>
              </div>
            </div>
          <?php
            }
            if($ocu_calzado>0){
            ?>
            <div class="col-sm-4">
              <div class="form-group">
                <label>Talla seleccionada para calzado <br><i style="color:gray; font-size:90%;">(botas con/sin casquillo)</i></label>
                <label class="form-control form-control-lg" style="font-weight:900; font-size:150%; color:black;"> <?php echo $calzado ;?> </label>
              </div>
            </div>
          <?php
            }
          ?>
          <div class="col-sm-4">
            <div class="form-group">
              <label>Fecha y hora de registro de la información: </label>
              <?php
                    $sql_fec = "select `cat_vest2021`.`fecha_act` from `cat_vest2021` where `cat_vest2021`.`idvest2021`=".$idrh.";";
                    $result_fec = mysqli_query($link,$sql_fec);
                    while($dat_fec = mysqli_fetch_array($result_fec))
                    {
                        $fecha_act = $dat_fec['fecha_act'];
                        //echo $fecha_act."<br>";
                    }
              ?>
              <label class="form-control form-control-lg" style="font-weight:900; font-size:130%; color:black;"> <?php echo date("d/M/Y  h:i a", strtotime($fecha_act)); ?></label>
            </div>
          </div>
        </div>
    </div>
    <div class='card-footer'>
      <div class='row'>
        <div class="col-12">
            <label style="font-size:125%;font-weight:bold;">Imprima esta pagina como comprobante de registro de la información</label><br>
            <button class="btn btn-success btn-lg" onclick="window.print()"><i class="fas fa-print"></i>  Imprimir comprobante  <i class="fas fa-print"></i></button>
            &#9;
            <a class="btn btn-danger btn-lg" href="index.php"><i class="fas fa-door-open"></i>  Salir </a>
        </div>
      </div>
    </div>

  </div>

</div>

</body>
</html>
