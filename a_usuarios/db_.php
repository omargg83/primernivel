<?php
require_once("../control_db.php");


if($_SESSION['des']==1 and strlen($function)==0)
{
	echo "<div class='alert alert-primary' role='alert'>";
	$arrayx=explode('/', $_SERVER['SCRIPT_NAME']);
	echo print_r($arrayx);
	echo "</div>";
}

class Usuario extends ipsi{

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
	public function usuario_editar($id){
		$sql="select * from cat_usuarios where id_usuario='$id'";
		$sth = $this->dbh->query($sql);
		return $sth->fetch(PDO::FETCH_OBJ);
	}
	public function guardar_usuario(){
		$x="";
		$arreglo =array();
		$idusuario=$_REQUEST['idusuario'];

		$arreglo+=array('nombre'=>$_REQUEST['nombre']);
		$arreglo+=array('ap_paterno'=>$_REQUEST['ap_paterno']);

		if (isset($_REQUEST['ap_materno'])){
			$arreglo+=array('ap_materno'=>$_REQUEST['ap_materno']);
		}
		if (isset($_REQUEST['email'])){
			$arreglo+=array('email'=>$_REQUEST['email']);
		}

		if($idusuario==0){
			$x=$this->insert('cat_usuarios', $arreglo);
		}
		else{
			$x=$this->update('cat_usuarios',array('id_usuario'=>$idusuario), $arreglo);
		}
		return $x;
	}
}

$db = new Usuario();
if(strlen($function)>0){
	echo $db->$function();
}
