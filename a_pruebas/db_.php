<?php
require_once("../control_db.php");


if($_SESSION['des']==1 and strlen($function)==0)
{
	echo "<div class='alert alert-primary' role='alert'>";
	$arrayx=explode('/', $_SERVER['SCRIPT_NAME']);
	echo print_r($arrayx);
	echo "</div>";
}

class a_pruebas extends ipsi{

	public $nivel_personal;
	public $nivel_captura;

	public function __construct(){
		parent::__construct();
	}
	public function usuario_lista(){
		$sql="select * from cat_usuarios";
		$sth = $this->dbh->query($sql);
		return $sth->fetchAll(PDO::FETCH_OBJ);
	}
	public function guardar_clues(){
		$x="";
		$arreglo =array();
		$idusuario=$_REQUEST['idusuario'];

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
