<?php
  date_default_timezone_set( 'America/Mexico_City' );

  $servidox=2;

	if($servidox==1)
	{
		$iphome="db5000655979.hosting-data.io";
		$_SESSION['mysqluser']="dbu554683";
		$_SESSION['mysqlpass']="1erNivel-94chu4";
		$_SESSION['servidor'] = $iphome;
		$_SESSION['bdd']="dbs610245";
		$link = mysqli_connect($_SESSION['servidor'],$_SESSION['mysqluser'],$_SESSION['mysqlpass']);
		mysqli_select_db($link, $_SESSION['bdd']);
		if (!$link) {
			die('<br>ERROR AL CONECTAR CON LA BASE DE DATOS. ' . mysql_error());
		}
	}

	else
	{
		//Sitio de prueba
		$iphome="localhost";
		$_SESSION['mysqluser']="root";
		$_SESSION['mysqlpass']="1erNivel-94chu4";
		$_SESSION['servidor'] = $iphome;
		$_SESSION['bdd']="vestuario2021";
		$link = mysqli_connect($_SESSION['servidor'],$_SESSION['mysqluser'],$_SESSION['mysqlpass']);
		mysqli_select_db($link, $_SESSION['bdd']);
		if (!$link) {
			die('<br>ERROR AL CONECTAR A LA BASE DE DATOS: ' . mysql_error());
		}
	}
?>
