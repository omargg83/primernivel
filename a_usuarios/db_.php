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

		if (isset($_REQUEST['apellidom'])){
			$arreglo+=array('ap_materno'=>$_REQUEST['ap_materno']);
		}
		if (isset($_REQUEST['email'])){
			$arreglo+=array('email'=>$_REQUEST['email']);
		}
		if (isset($_REQUEST['usuario'])){
			$arreglo+=array('usuario'=>$_REQUEST['usuario']);
		}
		$_SESSION['nombrec']=$_REQUEST['nombre']." ".$_REQUEST['apellidop'];

		if($idusuario==0){
			$x=$this->insert('cat_usuarios', $arreglo);
		}
		else{
			$x=$this->update('cat_usuarios',array('idusuario'=>$idusuario), $arreglo);
		}
		return $x;
	}
	public function password(){
		if (isset($_REQUEST['id'])){$id=$_REQUEST['id'];}
		if (isset($_REQUEST['pass1'])){$pass1=$_REQUEST['pass1'];}
		if (isset($_REQUEST['pass2'])){$pass2=$_REQUEST['pass2'];}
		if(trim($pass1)==($pass2)){
			$arreglo=array();
			$passPOST=md5(trim($pass1));
			$arreglo=array('pass'=>$passPOST);
			$x=$this->update('usuarios',array('idusuario'=>$id), $arreglo);
			return $x;
		}
		else{
			return "La contraseña no coincide";
		}
	}
	public function foto(){
		$x="";
		$arreglo =array();
		$id1=$_REQUEST['id1'];

		$extension = '';
		$ruta = '../a_archivos/terapeuta/';
		$archivo = $_FILES['foto']['tmp_name'];
		$nombrearchivo = $_FILES['foto']['name'];
		$tmp=$_FILES['foto']['tmp_name'];
		$info = pathinfo($nombrearchivo);
		if($archivo!=""){
			$extension = $info['extension'];
			if ($extension=='png' || $extension=='PNG' || $extension=='jpg'  || $extension=='JPG') {
				$nombreFile = "resp_".date("YmdHis").rand(0000,9999).".".$extension;
				move_uploaded_file($tmp,$ruta.$nombreFile);
				$ruta=$ruta."/".$nombreFile;
				$arreglo+=array('foto'=>$nombreFile);
				$_SESSION['foto']="a_archivos/terapeuta/".$nombreFile;
			}
			else{
				echo "fail";
				exit;
			}
		}
		return $this->update('usuarios',array('idusuario'=>$id1), $arreglo);
	}
}

$db = new Usuario();
if(strlen($function)>0){
	echo $db->$function();
}
