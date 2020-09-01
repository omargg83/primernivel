<?php @session_start();
  date_default_timezone_set( 'America/Mexico_City' );

	$servidox=1;

	if($servidox==2){
		$iphome="db5000650786.hosting-data.io";
		$_SESSION['mysqluser']="dbu424331";
		$_SESSION['mysqlpass']="1erNivel-94chu4";
		$_SESSION['servidor'] = $iphome;
		$_SESSION['bdd']="dbs610245";
		$link = mysql_connect($_SESSION['servidor'],$_SESSION['mysqluser'],$_SESSION['mysqlpass']);
		mysql_select_db($_SESSION['bdd'], $link);
	}
	else{
		$iphome="localhost";
		$_SESSION['mysqluser']="root";
		$_SESSION['mysqlpass']="1erNivel-94chu4";
		$_SESSION['bdd']="dbs610245";
		$_SESSION['servidor'] = $iphome;

		$link = mysql_connect($_SESSION['servidor'],$_SESSION['mysqluser'],$_SESSION['mysqlpass']);
		mysql_select_db($_SESSION['bdd'], $link);
	}
?>