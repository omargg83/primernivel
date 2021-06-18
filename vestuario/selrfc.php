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
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css2?family=Roboto:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="css/sb-admin-2.min.css" rel="stylesheet">
  <link href="ipsi.css" rel="stylesheet">

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<?php
    include('../cnx.php');
    	$idarea=$_REQUEST['id'];
      //echo $idarea."<br>";//muestra el ID de index
?>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

</head>
<body>
<div class="container">
  <CENTER>
    <IMG SRC="../images/encabezado.png" style="margin-top:12px;">
  	<h3>TALLAS PARA DOTACIÓN DE VESTUARIO <b>2021</b></h3>
    <HR align=center width=90% color=#000000>
  <form name="form0" id="form0"  method="POST" action="tallas.php">
    <input type="hidden" value="<?php echo $idarea;?>" id="idarea" name="idarea" readonly>

    <div class='card'>
      <div class='card-header text-white bg-dark'>
        <h5>Seleccione su Registro Federal de Contribuyentes (R.F.C.) y de clic en <b style="font-weight:900;" class="btn-info"> Verificar datos </b></h5>
      </div>

      <div class='card-body' style="color:black;">
        <div class='row col-12'>
        <select class="form-control-lg" name="rfc" id="rfc" required style="width:100%;" style="font-family: 'Courier New', monospace;" required>
          <option value="" disabled selected hidden style="font-family: 'Courier New', monospace;"> — Seleccione su R.F.C. — </option>
          <?php
            $sql="select * from `cat_vest2021` where idareasvest=".$idarea.";";
              $result = mysqli_query($link,$sql);
                  while($row = mysqli_fetch_array($result)) {
                      echo"<option value='".$row['idvest2021']."' style='font-family:'Courier New', monospace;'>".$row['rfc']."</option>"; }?>
          </select>
          </div>
        </div>

        <div class='card-footer'>
    			<div class='row'>
    				<div class="col-12">
    					<input type="submit" class="btn btn-info btn-lg" value="VERIFICAR DATOS" class="btn btn-warning" type="submit">
              &#9;
              <a class="btn btn-danger btn-lg" href="index.php"><i class="fas fa-undo"></i> Regresar </a>
              <!--button class="btn-lg btn-danger" onclick="location.href='index.php'"><i class="fas fa-undo"></i> Regresar </button-->
    				</div>
    			</div>
    		</div>

    </div>
</div>
</body>
</html>
