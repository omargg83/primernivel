<?php
require_once("../control_db.php");


if($_SESSION['des']==1 and strlen($function)==0)
{
	echo "<div class='alert alert-primary' role='alert' style='font-size:10px'>";
	$arrayx=explode('/', $_SERVER['SCRIPT_NAME']);
	echo print_r($arrayx);
	echo "<br>";
	echo print_r($_REQUEST);
	echo "</div>";
}

class Usuario extends ipsi{

	public $nivel_personal;
	public $nivel_captura;

	public function __construct(){
		parent::__construct();
	}

	public function usuario_lista(){
		$sql="select * from cat_usuarios ORDER BY nivel";
		$sth = $this->dbh->query($sql);
		return $sth->fetchAll(PDO::FETCH_OBJ);
	}

	public function usuario_editar($id){
		$sql="select * from cat_usuarios where id_usuario='$id'";
		$sth = $this->dbh->query($sql);
		return $sth->fetch(PDO::FETCH_OBJ);
	}

	public function selecciona_clues(){
		  $sql="select * from cat_clues WHERE cat_clues.clv_clues LIKE 'HGSSA%'";
			/*$sql="select cat_clues.clv_clues, cat_clues.nombre_clues from cat_clues
						left join cat_usuarios on cat_clues.id_clues = cat_usuarios.id_clues
						WHERE (cat_usuarios.id_usuario='".$id_clues."') AND (cat_clues.id_clues=cat_usuarios.id_clues)";*/
			$sth = $this->dbh->query($sql);
			return $sth->fetchAll(PDO::FETCH_OBJ);
	}

	public function guardar_usuario(){
		$x="";
		$arreglo =array();

		$idusuario=$_REQUEST['idusuario'];

		$arreglo+=array('nombre'=>$_REQUEST['nombre']);
		$arreglo+=array('ap_paterno'=>$_REQUEST['ap_paterno']);
	  $arreglo+=array('email'=>$_REQUEST['email']);
		$arreglo+=array('id_clues'=>$_REQUEST['id_clues']);
		$arreglo+=array('usuario'=>$_REQUEST['usuario']);
		$arreglo+=array('contrasena'=>$_REQUEST['usuario']);
		$arreglo+=array('nivel'=>$_REQUEST['nivel']);

		if (isset($_REQUEST['ap_materno'])){
			$arreglo+=array('ap_materno'=>$_REQUEST['ap_materno']);
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
