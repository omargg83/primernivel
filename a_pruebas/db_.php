<?php
require_once("../control_db.php");

/////////// cajas azules (modo desarrollador)
if($_SESSION['des']==1 and strlen($function)==0)
{
	echo "<div class='alert alert-primary' role='alert' style='font-size:10px'>";
	$arrayx=explode('/', $_SERVER['SCRIPT_NAME']);
	echo print_r($arrayx);
	echo "<br>";
	echo print_r($_REQUEST);
	echo "</div>";
}

class a_pruebas extends ipsi{

	public $nivel_personal;
	public $nivel_captura;

	public function __construct(){
		parent::__construct();
	}

	public function clues_nousmer(){
		$sql="select * FROM cat_clues LEFT JOIN cat_CSprCOVID19 ON cat_clues.id_clues = cat_CSprCOVID19.id_clues
		WHERE (( id_juris = ".$_SESSION['id_juris'].") AND (cat_clues.id_clues = cat_CSprCOVID19.id_clues ))";
		echo $sql;
		$sth = $this->dbh->query($sql);
		return $sth->fetchAll(PDO::FETCH_OBJ);
	}

	public function id_clues_pr($idcsprcovid19)
	{
		$sql="select * FROM cat_clues LEFT JOIN cat_CSprCOVID19 ON cat_clues.id_clues = cat_CSprCOVID19.id_clues
		WHERE (( id_CSprCOVID19 = ".$idcsprcovid19.") AND (cat_clues.id_clues = cat_CSprCOVID19.id_clues ))";
		$sth = $this->dbh->query($sql);
		return $sth->fetch(PDO::FETCH_OBJ);
	}

	public function ultima_existencia($id){
		$sql="select cat_csprcovid19_det.exis_pruebas AS existencia, cat_csprcovid19_det.fecha_reporte AS fecha_ult_reporte FROM cat_csprcovid19_det WHERE id_CSprCOVID19='".$id."' AND cat_csprcovid19_det.fecha_reporte = (select max(cat_csprcovid19_det.fecha_reporte) FROM cat_csprcovid19_det WHERE id_CSprCOVID19='".$id."')";
		echo $sql;
		$sth = $this->dbh->query($sql);
		return $sth->fetch(PDO::FETCH_OBJ);
	}

	public function guardar_pruebasrapidas(){
		$x="";
		$arreglo =array();
		$idusuario=$_REQUEST['idusuario'];
		$hoy = date("Y-m-d H:i:s");
		///////////////con esto se obtienen los valores del formulario
		if (isset($_REQUEST['num_modulos'])){
			$arreglo+=array('num_modulos'=>$_REQUEST['num_modulos']);
		}
		///poner ahi la tabla y el ID de la tabla
		///$x=$this->update('cat_usuarios',array('id_usuario'=>$idusuario), $arreglo);
	}

}

$db = new a_pruebas();
if(strlen($function)>0){
	echo $db->$function();
}
