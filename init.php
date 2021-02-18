<?php
$server=5;  ////////// Base de datos a usar xD
$_SESSION['des']=1;   ///////////////cambiar esta para acceder a modo desarrollador (cuadro azules)
$_SESSION['pagina']=50; ///////registros por pagina
if($server==2){
  //////////localhost
  define("MYSQLUSER", "root");
  define("MYSQLPASS", "root");
  define("SERVIDOR", "localhost");
  define("BDD", "dbs610245");
}
else if($server==5){
  define("MYSQLUSER", "root");
  define("MYSQLPASS", "1erNivel-94chu4");
  define("SERVIDOR", "localhost");
  define("BDD", "dbs610245");
}

?>
