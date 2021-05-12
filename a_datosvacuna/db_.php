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
	/*-----------------------------------------------------*/
	public function lista_procesos(){
		$sql="select * FROM `cat_proceso`";
		$sth = $this->dbh->query($sql);
		return $sth->fetchAll(PDO::FETCH_OBJ);
	}
	public function lista_remesas(){
		$sql="select * from `cat_remesas`
					left join `cat_proceso` on `cat_remesas`.`id_proceso` = `cat_proceso`.`id_proceso`
					left join `cat_bio` on `cat_remesas`.`id_bio` = `cat_bio`.`id_bio`
					order by `cat_remesas`.`id_proceso` asc";
		$sth = $this->dbh->query($sql);
		return $sth->fetchAll(PDO::FETCH_OBJ);
	}
	public function lista_sedes(){
		$sql="select `cat_sedes`.*, `cat_municipios`.`nombre_mpio`, `cat_proceso`.`nombre_proceso` FROM `cat_sedes`
					LEFT JOIN `cat_municipios` ON `cat_sedes`.`id_mpio` = `cat_municipios`.`id_mpio`
					LEFT JOIN `cat_proceso` ON `cat_sedes`.`id_proceso` = `cat_proceso`.`id_proceso`
					order by `cat_municipios`.`nombre_mpio` ASC, `cat_sedes`.`nombre_sede`,`cat_proceso`.`id_proceso` DESC";
		$sth = $this->dbh->query($sql);
		return $sth->fetchAll(PDO::FETCH_OBJ);
	}
	public function lista_bio(){
		$sql="select * FROM `cat_bio`";
		$sth = $this->dbh->query($sql);
		return $sth->fetchAll(PDO::FETCH_OBJ);
	}
	/*-----------------------------------------------------*/
	public function proceso_editar($id){
		$sql="select * from cat_proceso where id_proceso='$id'";
		$sth = $this->dbh->query($sql);
		return $sth->fetch(PDO::FETCH_OBJ);
	}
	public function guardar_proceso(){
		$x="";
		$arreglo = array();

		$id_proceso=$_REQUEST['id_proceso'];

		$arreglo+=array('nombre_proceso'=>$_REQUEST['nombre_proceso']);
		if($id_proceso==0){
			$x=$this->insert('cat_proceso', $arreglo);
		}
		else{
			$x=$this->update('cat_proceso',array('id_proceso'=>$id_proceso), $arreglo);
		}
		return $x;
	}
	/*-----------------------------------------------------*/
	public function bio_editar($id){
		$sql="select * from cat_bio where id_bio='$id'";
		$sth = $this->dbh->query($sql);
		return $sth->fetch(PDO::FETCH_OBJ);
	}
	public function guardar_bio(){
		$x="";
		$arreglo = array();
		$id_bio=$_REQUEST['id_bio'];
		$arreglo+=array('nombre_bio'=>$_REQUEST['nombre_bio']);
		if($id_bio==0){
			$x=$this->insert('cat_bio', $arreglo);
		}
		else{
			$x=$this->update('cat_bio',array('id_bio'=>$id_bio), $arreglo);
		}
		return $x;
	}
	/*-----------------------------------------------------*/
	public function remesa_editar($id){
		$sql="select * from `cat_remesas` where id_remesa='$id'";
		$sth = $this->dbh->query($sql);
		return $sth->fetch(PDO::FETCH_OBJ);
	}
	public function guardar_remesa(){
		$x="";
		$arreglo = array();
		$id_remesa=$_REQUEST['id_remesa'];
		$arreglo+=array('nombre_remesa'=>$_REQUEST['nombre_remesa']);
		$arreglo+=array('destinado'=>$_REQUEST['destinado']);
  	/*$originalDate = $_REQUEST['fecha_recepcion'];
	  $fecha_recepcion = date('Y-m-d H:i:s', strtotime($originalDate);
		$arreglo+=array('fecha_recepcion'=>date('Y-m-d', strtotime($_REQUEST['$fecha_recepcion']));*/
		$arreglo+=array('fecha_recepcion'=>$_REQUEST['fecha_recepcion']);
		$arreglo+=array('cant_frasco'=>$_REQUEST['cant_frasco']);
		$arreglo+=array('cant_dosis'=>$_REQUEST['cant_dosis']);
		$arreglo+=array('id_bio'=>$_REQUEST['id_bio']);
		$arreglo+=array('id_proceso'=>$_REQUEST['id_proceso']);
		//$arreglo+=array('id_proceso'=>$_REQUEST['id_proceso']);
		if($id_remesa==0){
			$x=$this->insert('cat_remesas', $arreglo);
		}
		else{
			$x=$this->update('cat_remesas',array('id_remesa'=>$id_remesa), $arreglo);
		}
		return $x;
	}

}

$db = new Usuario();
if(strlen($function)>0){
	echo $db->$function();
}
