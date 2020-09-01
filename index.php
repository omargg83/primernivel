<?php @session_start();
date_default_timezone_set( 'America/Mexico_City' );
//incluímos archivo de conección a la BD
include('cnx.php');	
//incluímos la clase ajax
require ('xajax/xajax.inc.php');

// Crea un nuevo objeto xajax
$xajax = new xajax();
// le indica la codificación que debe utilizar
$xajax->setCharEncoding("utf-8");
// decodifica los caracteres extraños
$xajax->decodeUTF8InputOn();


//formulario de inicio
function muestra_formulario(){
   //creo el xajaxResponse para generar una salida
   $respuesta = new xajaxResponse("utf-8");
   $arriba =  '<img style="align:center; border:0;" class="img-responsive" width="324px" src="images/encabezado.png">';
   $menu = '';
   $abajo = '';
   $capaformulario = '
			<br><br>
			<h3>SERVICIOS DE SALUD DE HIDALGO</h3>
			<h4>DIRECCIÓN DE PRIMER NIVEL DE ATENCIÓN</h4>
			<br>
			<h3 style="font-weight:700;">SISTEMA PARA EL REGISTRO DE INFORMACIÓN INSTITUCIONAL DE PRIMER NIVEL DE ATENCIÓN</h3>
			<br>Introduzca su Usuario y Contraseña y de clic en <b>ACCEDER</b><BR>
			<form id="formulario">
				<table>
				<tr><td>
				<div class="input-group mb-3">
				  <span class="glyphicon glyphicon-search" aria-hidden="true"></span>
				  <span class="input-group-text">
					<svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-person-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
					<path fill-rule="evenodd" d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"/></svg>
				  </span>
				  <input id="usuario" type="text" class="form-control" name="usuario" placeholder="Usuario">
				</div>
				</td></tr>
				<tr><td>
				<div class="input-group mb-3">
				  <span class="input-group-text">
					<svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-key-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
					<path fill-rule="evenodd" d="M3.5 11.5a3.5 3.5 0 1 1 3.163-5H14L15.5 8 14 9.5l-1-1-1 1-1-1-1 1-1-1-1 1H6.663a3.5 3.5 0 0 1-3.163 2zM2.5 9a1 1 0 1 0 0-2 1 1 0 0 0 0 2z"/></svg>
				  </span>
				  <input id="password" type="password" class="form-control" name="contrasena" placeholder="Contraseña">
				</div>
				</td></tr>
				<tr><td><br>
				<div class="input-group">
				<input type="button" class="btn btn-primary active" value="ACCEDER" onclick="xajax_procesar_formulario(xajax.getFormValues(\'formulario\'))" />
				</div>
				</td></tr>
			  </table>
			</form>
			<br>
			<h2 style="font-size: 14px; text-align: center; ">Se recomienda el uso de Google Chrome para el correcto funcionamiento del sistema.</h2>
			';
	$mensaje = '';
   //mostramos en capa capaformulario el texto código HTML del formulario
   $respuesta->addAssign("arriba","innerHTML","$arriba");
   $respuesta->addAssign("menu","innerHTML","$menu");
   $respuesta->addAssign("capaformulario","innerHTML","$capaformulario");
   $respuesta->addAssign("abajo","innerHTML","$abajo");
   return $respuesta;   
}

//autoriza acceso al sistema y muestra menu
function procesar_formulario($form_entrada){
  include('cnx.php');	
  //creo el xajaxResponse para generar una salida
  $respuesta = new xajaxResponse("utf-8");

  //validación
  $error_form = "";
  if ($form_entrada["usuario"] == "")
      $error_form = "
				  <div class='alert alert-danger alert-dismissible fade show' role='alert'>
				  <strong style='font-weight:700;'>¡ERROR!</strong> favor de escribir su usuario.
				  <button type='button' class='close' data-dismiss='alert' aria-label='Close'>
					<span aria-hidden='true'>&times;</span>
				  </button>
				</div>";
  elseif ($form_entrada["contrasena"] == "")
      $error_form = "<div class='alert alert-danger alert-dismissible fade show' role='alert'>
				  <strong style='font-weight:700;'>¡ERROR!</strong> favor de escribir su contraseña.
				  <button type='button' class='close' data-dismiss='alert' aria-label='Close'>
					<span aria-hidden='true'>&times;</span>
				  </button>
				</div>";
      
  //compruebo resultado de la validación
  if ($error_form != ""){
      //Hubo un error en el formulario
      //en la capa donde se muestran mensajes, muestro el error
      $respuesta->addAssign("mensaje","innerHTML","<span style='color:red;'>$error_form</span>");
  }
  else{
	
    $user = $form_entrada["usuario"];
	$password = $form_entrada["contrasena"];
	
	$sql="SELECT * FROM cat_usuarios WHERE cat_usuarios.usuario='".$user."' AND cat_usuarios.contrasena='".$password."'";
	$consulta=mysql_query($sql,$link);
	$row=mysql_fetch_array($consulta);
	$num_rows = mysql_num_rows($consulta);
	/*$_SESSION['']=$row[''];
	*/
	
   if($user==$row['usuario'] and $password==$row['contrasena'] and $num_rows==1)
//   if($num_rows==1)
    {
		$_SESSION['id_clues']=$row['id_clues'];
		$_SESSION['nivel']=$row['nivel'];
		$_SESSION['nombre']=$row['nombre'];
		$_SESSION['ap_paterno']=$row['ap_paterno'];
		$_SESSION['ap_materno']=$row['ap_materno'];
		$_SESSION['email']=$row['email'];
		 $sql_juris="SELECT id_juris FROM cat_clues WHERE id_clues='".$_SESSION['id_clues']."'";
		 $consulta_juris=mysql_query($sql_juris,$link);
		 $row_juris=mysql_fetch_array($consulta_juris);
		$_SESSION['juris']=$row_juris['id_juris'];
			$arriba = '
					<img style="align:right; border:0; max-width:324px;" class="img-fluid" src="images/encabezado.png">';
			/*MENU tomado de https://getbootstrap.com/docs/4.0/components/navbar/ */
			$abajo='';
			$mensaje= " <div class='alert alert-success alert-dismissible fade show' role='alert'>
						  <strong style='font-weight:700;'>He ingresado correctamente al sistema.
						  <button type='button' class='close' data-dismiss='alert' aria-label='Close'>
							<span aria-hidden='true'>&times;</span>
						  </button>
						</div>";
			$menu= '  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
						  <a class="navbar-brand" href="#">
							<img src="images/favicon2.ico" height="30" class="d-inline-block align-top" alt=""> DPNA
						  </a>
						  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
							<span class="navbar-toggler-icon"></span>
						  </button>
						  <div class="collapse navbar-collapse" id="navbarSupportedContent">
							<ul class="navbar-nav mr-auto">
							  <li class="nav-item active">
								<a class="nav-link" href="#">Apoyo a la Operación<span class="sr-only">(current)</span></a>
							  </li>
							  <li class="nav-item active">
								<a class="nav-link" href="#">Atención Integral</a>
							  </li>
							  <li class="nav-item active dropdown">
								<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								  Información COVID
								</a>
								 <div class="dropdown-menu" aria-labelledby="navbarDropdown">
								  <a class="dropdown-item" href="#">Módulos de Orientación y Diagnóstico COVID</a>
								 <div class="dropdown-divider"></div>
								  <a class="dropdown-item" href="#">Módulos Pruebas Rápidas</a>
								  <a class="dropdown-item" href="" onclick="xajax_reporte_prnousmer();">Pruebas Rápidas unidades No-USMER</a>
								 <div class="dropdown-divider"></div>
								  <a class="dropdown-item" href="#">Reserva Estratégica</a>';
				  //Si es martes muestra la opción de reporte de pruebas rápidas COFEPRIS		  
			$daynum = date("N");
				if ($daynum==2){$menu.='<div class="dropdown-divider"></div><a class="dropdown-item" href="#">Folios Pruebas rápidas COFEPRIS</a>';}
			$menu.= 		 '<a class="dropdown-item" href="#">Parte de novedades </a>
								</div>
							  </li>';
				// este menu lo queria meter de submenú al final pero no super como :-/
			$menu.= 		 '<li class="nav-item active dropdown">
								<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								  Reportes COVID
								</a>
								 <div class="dropdown-menu" aria-labelledby="navbarDropdown">
								  <a class="dropdown-item" href="#">Módulos de Orientación y Diagnóstico COVID</a>
								 <div class="dropdown-divider"></div>
								  <a class="dropdown-item" href="#">Módulos Pruebas Rápidas</a>
								  <a class="dropdown-item" href="" onclick="xajax_consultar_reporte_prnousmer();">Pruebas Rápidas unidades No-USMER</a>
								 <div class="dropdown-divider"></div>
								  <a class="dropdown-item" href="#">Reserva Estratégica</a>
								 <div class="dropdown-divider"></div>
								  <a class="dropdown-item" href="#">Folios Pruebas rápidas COFEPRIS</a>
								 <div class="dropdown-divider"></div>
								  <a class="dropdown-item" href="#">Parte de novedades </a>
								</div>
							  </li>
							  <li class="nav-item">
								<a class="nav-link disabled" href="#">Disabled</a>
							  </li>
							</ul>
						    <a class="nav-item active" href="#" >Cerrar sesión <BR>'.$_SESSION['nombre'].' '.$_SESSION['ap_paterno'].'</a>
						  </div>
						</nav>';
			  $respuesta->addAssign("mensaje","innerHTML","$mensaje");
			  $respuesta->addAssign("arriba","innerHTML","$arriba");
			  $respuesta->addAssign("menu","innerHTML","$menu");			  
			  $respuesta->addAssign("abajo","innerHTML","$abajo");
		  }
		else
		{
			$respuesta->call("xajax_muestra_formulario","capaformulario","innerHTML","");
			$error_form = "<div class='alert alert-danger alert-dismissible fade show' role='alert'>
				  <strong style='font-weight:700;'>¡ERROR! Usuario o contraseña incorrectos,</strong> &#9785; favor de verificar.
				  <button type='button' class='close' data-dismiss='alert' aria-label='Close'>
					<span aria-hidden='true'>&times;</span>
				  </button>
				</div>  ";
			$respuesta->addAssign("mensaje","innerHTML","<span style='color:red;'>$error_form</span>");
			//$respuesta->addAssign("mensaje","innerHTML","<span style='color:red;'><center>ERROR! &#9785; Favor de verificar su Usuario o Contrase&ntilde;a.</center></span>");
		}
      //escribimos en la capa con id="capaformulario" el texto que aparece en $salida  al div id="capaformulario"
      $respuesta->addAssign("capaformulario","innerHTML","$salida");
   }
   return $respuesta;
}

function reporte_prnousmer()
{
   include('cnx.php');	
  //creo el xajaxResponse para generar una salida
   $respuesta = new xajaxResponse("utf-8");
	  $mensaje='';
	  $capaformulario.='
					<br><br>
					<h3>Ingrese los datos solicitados para cada centro de salud</h4>
					<br>
					<form id="form_prnousmer">
						<table>
						  <tr>
							<th style="border-right-style: solid; border-width: 1px;">Centro de salud</th>
							<th style="border-right-style: solid; border-width: 1px;">Num. Módulos</th>
							<th style="border-right-style: solid; border-width: 1px;">Num. total de pruebas rápidas realizadas</th> <!-- este debe de darlo en automatico sumando IgG, IgM, IgGyIgM y las invalidas -->
							<th style="border-right-style: solid; border-width: 1px;">Num. casos reactivos a IgG</th>
							<th style="border-right-style: solid; border-width: 1px;">Num. casos reactivos a IgM</th>
							<th style="border-right-style: solid; border-width: 1px;">Num. casos reactivos a IgG y a IgM</th>
							<th style="border-right-style: solid; border-width: 1px;">Num. muestras inválidas</th>					
							<th style="border-right-style: solid; border-width: 1px;">Num. personal en el módulo</th>
							<th style="border-right-style: solid; border-width: 1px;">Num. pruebas (re) distribuidas</th> <!-- epor default debe tener valor 0 siempre -->
							<th style="border-right-style: solid; border-width: 1px;">Existencia de pruebas</th> <!-- este debe de darlo en automatico restando la existencia del dia anterior menos total de pruebas rápidas realizadas +/- las pruebas que se redistribuyan, y que tiene que registrar en observaciones a que centro de salud fueron redistribuidas -->
							<th>Observaciones</th>
						  </tr>';
	//consulta para saber las unidades no USMER de la jurisdicción
	  $sql_nousmer="	SELECT `cat_clues`.`id_clues`, `cat_clues`.`clv_clues`, `cat_clues`.`nombre_clues`, `cat_clues`.`id_juris`, `cat_csprcovid19`.`id_CSprCOVID19`
					FROM `cat_clues`
					LEFT JOIN `cat_csprcovid19` ON `cat_clues`.`id_clues` = `cat_csprcovid19`.`id_clues` 
					WHERE (( `id_juris` =  '".$_SESSION['juris']."') AND (`cat_clues`.`id_clues` = `cat_csprcovid19`.`id_clues` ))";
	  $consulta_nousmer=mysql_query($sql_nousmer,$link);
	do{	 $capaformulario.="
					<tr style='border-bottom-style: solid; border-width: 1px;'>		
						<td style='text-align:center;'><b>".$row_nousmer['clv_clues']."<br>".$row_nousmer['nombre_clues']."</b></td>
						<td><input type='text' required name='num_modulos_".$row_nousmer['clv_clues']."' class='form-control' value='1' aria-label='' aria-describedby='basic-addon1'></td>
						<td><input type='text' readonly required name='num_pruebas_realizadas_".$row_nousmer['clv_clues']."' class='form-control' placeholder='' aria-label='' aria-describedby='basic-addon1'></td>
						<td><input type='text' required name='num_casos_igg_".$row_nousmer['clv_clues']."' class='form-control' placeholder='IgG' aria-label='' aria-describedby='basic-addon1'></td>
						<td><input type='text' required name='num_casos_igm_".$row_nousmer['clv_clues']."' class='form-control' placeholder='IgM' aria-label='' aria-describedby='basic-addon1'></td>
						<td><input type='text' required name='num_casos_igg_igm_".$row_nousmer['clv_clues']."' class='form-control' placeholder='IgG+IgM' aria-label='' aria-describedby='basic-addon1'></td>
						<td><input type='text' required name='num_invalidas_".$row_nousmer['clv_clues']."' class='form-control' placeholder='' aria-label='' aria-describedby='basic-addon1'></td>
						<td><input type='text' required name='num_personal_".$row_nousmer['clv_clues']."' class='form-control' placeholder='' aria-label='' aria-describedby='basic-addon1'></td>
						<td><input type='text' required name='distribucion_".$row_nousmer['clv_clues']."' class='form-control' value='0' aria-label='' aria-describedby='basic-addon1'></td>";
					//consulta para saber ultima existencia reportada por unidad
					 $sql_existencia="SELECT `cat_csprcovid19_det`.`exis_pruebas` AS 'existencia', max(`cat_csprcovid19_det`.`fecha_reporte`)
									  FROM `cat_csprcovid19_det` WHERE id_CSprCOVID19='".$row_nousmer['id_CSprCOVID19']."'";
					 $consulta_existencia=mysql_query($sql_existencia,$link);
					 $row_existencia=mysql_fetch_array($consulta_existencia);						
					$capaformulario.="
						<td><input type='text' readonly required style='color:white; text-align:center;' name='exis_pruebas_".$row_nousmer['clv_clues']."' class='form-control-plaintext' value='".$row_existencia['existencia']."' aria-label='' aria-describedby='basic-addon1'></td>
						<td><textarea name='observaciones_".$row_nousmer['clv_clues']."' class='form-control' id='exampleFormControlTextarea1' rows='2'></textarea></td>
					</tr>";
	}while($row_nousmer=mysql_fetch_array($consulta_nousmer));
	  $capaformulario.= '
				<tr><td>
					<br><br>
					<div class="input-group">
					<input type="button" class="btn btn-success active" value="Enviar Información" onclick="xajax_accion_reporte_prnousmer(xajax.getFormValues(\'form_prnousmer\'))" />
					</div>
				</td></tr>
			  </table>
			</form>';
	$respuesta->addAssign("capaformulario","innerHTML","$capaformulario");
	$respuesta->addAssign("mensaje","innerHTML","$mensaje");
	return $respuesta;
}

function accion_reporte_prnousmer($reporte_prnousmer)
{  include('cnx.php');	
   $respuesta = new xajaxResponse("utf-8");
	//AQUI SE SUPONE VA A TRAER LOS DATOS DE LA PANTALLA, VALIDA QUE TODOS LOS CAMPOS ESTÉN LLENOS Y SEAN DE TIPO ENTERO Y LOS VA A GRABAR EN LA BASE DE DATOS.... LO CUAL NO TENGO NI IDEA DE COMO HACERLE >_<
    return $respuesta;
}

function consultar_reporte_prnousmer($reporte_prnousmer)
{  include('cnx.php');	
   $respuesta = new xajaxResponse("utf-8");
	//Aqui podrá consultar por jurisdiccion o centro de salud las cantidades globales entre rangos de fechas (y sí... tampoco tengo ni idea de como le voy a hacer aún)
    return $respuesta;
}


//registramos la funcion creada anteriormente al objeto xajax
$xajax->registerFunction("muestra_formulario");
$xajax->registerFunction("procesar_formulario");
$xajax->registerFunction("menu");

$xajax->registerFunction("reporte_prnousmer");
$xajax->registerFunction("accion_reporte_prnousmer");
$xajax->registerFunction("consultar_reporte_prnousmer");
$xajax->registerFunction("accion_reporte_prnousmer");

//El objeto xajax tiene que procesar cualquier peticion
$xajax->processRequests();
?>
<html lang="es">
<head>
  <title>Dirección de Primer Nivel de Atención</title>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="shortcut icon" href="images/favicon2.ico">
<!-- liga fuente Roboto-->
  <link href="https://fonts.googleapis.com/css?family=Roboto" rel='stylesheet'  type='text/css'> 
<!-- ligas bootstrap 4-->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<!-- ligas para date picker -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.7.1/css/bootstrap-datepicker.min.css" rel="stylesheet"/>
<script src="js/bootstrap-datepicker.min.js"></script>	
 
  <style type="text/css">
	@import url('css/font-awesome-index.css');
/*	@font-face {
	  font-family: "Roboto";
	  src: url('../fonts/Roboto/roboto-light-webfont.eot?1423657803');
	  src: url('../fonts/Roboto/roboto-light-webfont.eot?1423657803#iefix') format('embedded-opentype'), 
	  url('../fonts/Roboto/roboto-light-webfont.woff?1423657803') format('woff'), 
	  url('../fonts/Roboto/roboto-light-webfont.ttf?1423657803') format('truetype');
	  font-weight: 300;
	  font-style: normal; 
	}
*/	
	@media screen and (max-width:1980px)
	{
		table{width:35% !important;}

	}
	@media screen and (max-width:980px)
	{
		table{width:50% !important;}

	}
	@media screen and (max-width:720px)
	{
		table{width:85% !important;}
	}
	body{
		background:rgb(0, 26, 43);;
		color:white;
	}
	h1, h2, h3, h4, h5, body{
		/*font-family: Roboto, Calibri, Arial, sans-serif;*/
		font-family: Roboto;
		font-weight:300;
	}
	th{
	text-align:center;
	padding:7px;
	}
  		
	.hoverTable{
		width:100%; 
		border-collapse:collapse; 
	}
	.hoverTable th{
		border-bottom: 1px solid black;
		text-align:center;
		padding: 15px;
	}
	.hoverTable td{ 
		padding:7px; border:#4e95f4 1px solid;
	}
	/* Define the default color for all the table rows */
	.hoverTable tr{
		background: #b8d1f3;
	}
	.hoverTable tr:nth-child(even){
		color:black; background-color: lightgray;
	}
    .hoverTable tr:hover {
        background-color:#234a7a; 
		color:white;
    }
	.form-2 {
    /* Size and position */
    width: 340px;
    margin: 30px auto 30px;
    padding: 15px;
    position: relative;
	text-align:left;
    /* Styles */
    background: #E5E8E9;
    border-radius: 4px;
    color: #7e7975;
    box-shadow:
        0 2px 2px rgba(0,0,0,0.2),        
        0 1px 5px rgba(0,0,0,0.2),        
        0 0 0 12px rgba(255,255,255,0.4); 
}
  </style>
   <?
   //En el <head> indicamos al objeto xajax se encargue de generar el javascript necesario
   $xajax->printJavascript("xajax/");
   ?>
</head>

<body onload='xajax_muestra_formulario()'>
<div class="container">
	<center>
		<div id="arriba" style="position: sticky; top: 0;left:0; width: 100%; border: 1px solid red; max-height: 366px;"></div>
		<div id="menu" style="position: sticky; top: 0;left:0; width: 100%; border: 1px solid #e63ed8; max-height: 80px;"></div>
		<div id="capaformulario" style="position: static; width: 100%; left:-1;border: 1px solid #73AD21;">		</div>
		<div id="mensaje" style="position: static; width: 100%; left:-1;border: 1px solid yellow;"></div>
		<div id="abajo" style="position: fixed; bottom: 0; right:0; width: 100%; border: 1px solid white; max-height: 366px;"></div>
	</center>
</div>
</body>
</html>




