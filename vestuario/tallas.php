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
<?php
    include('../cnx.php');
    	$idarea=$_REQUEST['idarea'];
      $idvest2021=$_REQUEST['rfc'];
      $sql1="select `cat_vest2021`.*, `cat_tipo_vestuario`.`prenda_sup`, `cat_tipo_vestuario`.`prenda_inf`, `cat_tipo_vestuario`.`calzado`
          from `cat_vest2021`
            left join `cat_tipo_vestuario` on `cat_vest2021`.`idtipovest` = `cat_tipo_vestuario`.`idtipovest`
          where `cat_vest2021`.`idvest2021`=".$idvest2021.";";
          //echo $sql1."<br>";
          $datos = mysqli_query($link,$sql1);
          while($datos = mysqli_fetch_array($datos)){
              $rfc = $datos['rfc'];
              $nombre = $datos['nombre'];
              $desc_codigo = $datos['desc_codigo'];
              $idareasvest = $datos['idareasvest'];
              $tipo_contratacion = $datos['tipo_contratacion'];
              $codigo = $datos['codigo'];
              $funcion = $datos['funcion'];
              $idtipovest = $datos['idtipovest'];
              $talla_prenda_sup = $datos['talla_prenda_sup'];
              $talla_prenda_inf = $datos['talla_prenda_inf'];
              $talla_calzado = $datos['talla_calzado'];
              $genero = $datos['genero'];
              $idclues = $datos['idclues'];
              $prenda_sup = $datos['prenda_sup'];
              $prenda_inf = $datos['prenda_inf'];
              $calzado = $datos['calzado'];
          }
?>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

</head>
<body>
<div class="container">
  <CENTER>
    <IMG SRC="../images/encabezado.png" style="margin-top:12px;">
  	<h3>TALLAS PARA DOTACIÓN DE VESTUARIO <b>2021</b></h3>
    <HR align=center width=90% color=#000000>
  <form name="form0" id="form0"  method="POST" action="envia_informe.php">

    <input type="hidden" value="<?php echo $idarea;?>" id="idarea" name="idarea" readonly>
    <input type="hidden" value="<?php echo $idvest2021;?>" id="idrh" name="idrh" readonly>
    <input type="hidden" value="<?php echo $rfc;?>" id="rfc" name="rfc" readonly>
    <input type="hidden" value="<?php echo $nombre;?>" id="nombre" name="nombre" readonly>


    <div class='card'>
      <div class='card-header bg-primary text-white'>
        <?php
        echo "<h3 style='font-family:Courier New; font-weight:600;'>".$rfc." - ".$nombre."</h3>";
        ?>
        Por favor complete los datos que se solicitan a continuación
      </div>

      <div class='card-body' style="color:black;">
        <div class='row'>
          <?php if($idareasvest<18)
            {
          ?>
          <div class="col-7">
            <label>CLUES donde labora actualmente: </label>
            <select class="form-control" name='clues' id='clues' required>";
              <option value="" disabled selected hidden>- Seleccione la CLUES -</option>
              <?php
                ///////////////////////////////////////////ojo consulta////////////////////////////////////////////////
                  $sql="select * from `vestuario2021`.`cat_clues_vest` where `juris`='".$idarea."';";
                  $result = mysqli_query($link,$sql);
                      while($row = mysqli_fetch_array($result)) {
                          echo"<option value='".$row['idclues']."'>".$row['clues']." - ".$row['nom_clues']."</option>";
                        }
              ?>
            </select>
          </div>
          <?php
            }
          ?>
          <div class="col-5">
            <label>Género</label>
            <select class="form-control" name='genero' id='genero' required>";
              <option value="" disabled selected hidden>- Seleccione su género -</option>
              <option value="1"> Hombre</option>
              <option value="2"> Mujer</option>
            </select>
          </div>
        </div>
        <div class='row'><br></div>
        <div class='row'>
        <div class="col-4">
          <div class="form-group">
            <label for="prenda_sup">Elija la talla para prenda <?php if($prenda_inf>0){ echo "superior"; }?> <br><i style="color:gray; font-size:90%;">(bata/filipina/unif quirúrgico/camisa)</i></label>
            <select class="form-control form-control-lg" id="prenda_sup" name="prenda_sup" required>
              <option value="" disabled selected hidden>- Seleccione talla -</option>
              <option value="28">28</option>
              <option value="30">30</option>
              <option value="32">32</option>
              <option value="34">34</option>
              <option value="36">36</option>
              <option value="34">34</option>
              <option value="38">38</option>
              <option value="40">40</option>
              <option value="42">42</option>
              <option value="44">44</option>
              <option value="46">46</option>
              <option value="44">44</option>
              <option value="48">48</option>
              <option value="50">50</option>
              <option value="52">52</option>
            </select>
          </div>
        </div>
        <?php
          if($prenda_inf>0){
          ?>
          <div class="col-4">
            <div class="form-group">
              <label for="prenda_inf">Elija la talla para prenda inferior <br><i style="color:gray; font-size:90%;">(pantalón)</i></label>
              <select class="form-control form-control-lg" id="prenda_inf" name="prenda_inf" required>
                <option value="" disabled selected hidden>- Seleccione talla -</option>
                <option value="28">28</option>
                <option value="30">30</option>
                <option value="32">32</option>
                <option value="34">34</option>
                <option value="36">36</option>
                <option value="34">34</option>
                <option value="38">38</option>
                <option value="40">40</option>
                <option value="42">42</option>
                <option value="44">44</option>
                <option value="46">46</option>
                <option value="44">44</option>
                <option value="48">48</option>
                <option value="50">50</option>
                <option value="52">52</option>
              </select>
            </div>
          </div>
        <?php
          }
          if($calzado>0){
          ?>
          <div class="col-4">
            <div class="form-group">
              <label for="calzado">Elija la talla para calzado <br><i style="color:gray; font-size:90%;">(botas con/sin casquillo)</i></label>
              <select class="form-control form-control-lg" id="calzado" name="calzado" required>
                <option value="" disabled selected hidden>- Seleccione talla -</option>
                <option value="21">21</option>
                <option value="22">22</option>
                <option value="23">23</option>
                <option value="24">24</option>
                <option value="25">25</option>
                <option value="26">26</option>
                <option value="27">27</option>
                <option value="28">28</option>
                <option value="29">29</option>
                <option value="30">30</option>
              </select>
            </div>
          </div>
        <?php
          }
        ?>
      </div>
      <div class='card-footer bg-transparent border-success'>
        <div class='row'>
          <div class="col-12">
            <div class="input-group lg ">
            <div class="input-group-prepend">
              <div class="input-group-text" class="border border-primary">
                <input type="checkbox" class="form-control-lg" onchange="document.getElementById('envia_tallas').disabled = !this.checked;" required style="width:25px; height:25px;">
              </div>
            <b style="text-align:left; padding:5px; font-size:120%;" class="bg-primary text-white">Acepto que toda la información proporcionada por mi en este formulario es verdadera, correcta, completa, y de mi entero conocimiento y responsabilidad.</b>
            </div>

          </div>
        </div>
      </div>
    <div class='row'><br></div>
      <div class='row'>
        <div class="col-12">
            <input type="submit" class="btn btn-primary btn-lg" value="ENVIAR DATOS Y TALLA" class="btn btn-warning" type="submit" id="envia_tallas" name="envia_tallas" disabled style="font-weight:900;">
            &#9;
            <a class="btn btn-danger btn-lg" href="index.php"><i class="fas fa-undo"></i> Regresar </a>
        </div>
      </div>
    </div>
  </div>



</div>
</body>
</html>
