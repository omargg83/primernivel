<?php
$server=2;  ////////// Base de datos a usar xD
$_SESSION['des']=2;   ///////////////cambiar esta para acceder a modo desarrollador (cuadro azules) [2 para desactivar]
$_SESSION['pagina']=30; ///////registros por pagina
if($server==2){
  //////////localhost
  $iphome="db5000655979.hosting-data.io";
  define("MYSQLUSER", "dbu554683");
  define("MYSQLPASS", "1erNivel-94chu4");
  define("SERVIDOR", $iphome);
  define("BDD", "dbs610245");
}
else if($server==5){
  define("MYSQLUSER", "root");
  define("MYSQLPASS", "1erNivel-94chu4");
  define("SERVIDOR", "localhost");
  define("BDD", "dbs610245");
}

?>
