<?php @session_start();

	date_default_timezone_set("America/Mexico_City");
	require_once("../init.php");

	class ipsi{
		public $nivel_personal;
		public $nivel_captura;
		public $personas;
		public $arreglo;
		public $limite=300;

		public function __construct(){
			date_default_timezone_set("America/Mexico_City");
			try{
				$this->dbh = new PDO("mysql:host=".SERVIDOR.";dbname=".BDD, MYSQLUSER, MYSQLPASS);
				$this->dbh->query("SET NAMES 'utf8'");
			}
			catch(PDOException $e){
				return "Database access FAILED!".$e->getMessage();
			}
		}
		public function acceso(){
			try{
				if($_SERVER['REQUEST_METHOD']!="POST"){
					return 0;
				}
				$userPOST = clean_var($_REQUEST["inputEmail"]);
				$passPOST=clean_var($_REQUEST["inputPassword"]);

				$sql="SELECT * FROM cat_usuarios where usuario=:usuario and contrasena=:pass";
				$sth = $this->dbh->prepare($sql);
				$sth->bindValue(":usuario",$userPOST);
				$sth->bindValue(":pass",$passPOST);
				$sth->execute();
				if ($sth->rowCount()>0){
					$suma=1;
					$CLAVE=$sth->fetch(PDO::FETCH_OBJ);
					$_SESSION['autoriza']=1;
					$_SESSION['idusuario']=$CLAVE->id_usuario;
					$_SESSION['nombre']=$CLAVE->nombre;
					$_SESSION['nombrec']=$CLAVE->nombre." ".$CLAVE->ap_paterno;
					$_SESSION['cfondo']="#fff";
					$_SESSION['idclues']=$CLAVE->id_clues;

					$sql="select * from cat_clues where id_clues=".$CLAVE->id_clues;
					$sth = $this->dbh->prepare($sql);
					$sth->execute();
					$clues=$sth->fetch(PDO::FETCH_OBJ);
					$_SESSION['id_juris']=$clues->id_juris;

					$arr=array();
					$arr=array('acceso'=>1);
				}
				else {
					$arr=array();
					$arr=array('acceso'=>0);
				}
				return json_encode($arr);
			}
			catch(PDOException $e){
				return "Database access FAILED!".$e->getMessage();
			}
		}
  }
	function clean_var($val){
		$val=htmlspecialchars(strip_tags(trim($val)));
		return $val;
	}

	$db = new ipsi();
	echo $db->acceso();
?>
