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
	public function lista_sedes($id){
		$sql="select `cat_sedes`.*, `cat_jurisdicciones`.`nombre_juris`, `cat_municipios`.`nombre_mpio`, `cat_proceso`.`id_proceso`
					from `cat_sedes`
						left join `cat_jurisdicciones` on `cat_sedes`.`id_juris` = `cat_jurisdicciones`.`id_juris`
						left join `cat_municipios` on `cat_sedes`.`id_mpio` = `cat_municipios`.`id_mpio`
						left join `cat_proceso` on `cat_sedes`.`id_proceso` = `cat_proceso`.`id_proceso`
					where `cat_sedes`.`id_proceso`='$id'
					order by `cat_jurisdicciones`.`nombre_juris`,`cat_municipios`.`nombre_mpio` asc, `cat_sedes`.`nombre_sede` desc";
		$sth = $this->dbh->query($sql);
		return $sth->fetchAll(PDO::FETCH_OBJ);
	}
	public function lista_bio(){
		$sql="select * FROM `cat_bio`";
		$sth = $this->dbh->query($sql);
		return $sth->fetchAll(PDO::FETCH_OBJ);
	}
	public function lista_juris(){
		$sql="select * from `cat_jurisdicciones`";
		$sth = $this->dbh->query($sql);
		return $sth->fetchAll(PDO::FETCH_OBJ);
	}
	public function lista_mpio(){
		$sql="select * from `cat_municipios` order by `nombre_mpio`";
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
		$arreglo+=array('id_bio'=>$_REQUEST['id_bio']);
		$arreglo+=array('id_proceso'=>$_REQUEST['id_proceso']);
		$arreglo+=array('fecha_recepcion'=>$_REQUEST['fecha_recepcion']);
		$arreglo+=array('cant_frasco'=>$_REQUEST['cant_frasco']);
		$arreglo+=array('cant_dosis'=>$_REQUEST['cant_dosis']);
		$arreglo+=array('lote'=>$_REQUEST['lote']);
		$arreglo+=array('nombre_remesa'=>$_REQUEST['nombre_remesa']);
		$arreglo+=array('destinado'=>$_REQUEST['destinado']);
		if($id_remesa==0){
			$x=$this->insert('cat_remesas', $arreglo);
		}
		else{
			$x=$this->update('cat_remesas',array('id_remesa'=>$id_remesa), $arreglo);
		}
		return $x;
	}
	/*-----------------------------------------------------*/
	public function sede_editar($id){
		$sql="select * from `cat_sedes` where id_sede='$id'";
		$sth = $this->dbh->query($sql);
		return $sth->fetch(PDO::FETCH_OBJ);
	}
	public function guardar_sede(){
		$x="";
		$arreglo = array();
		$id_sede=$_REQUEST['id_sede'];
		$arreglo+=array('id_remesa'=>$_REQUEST['id_remesa']);
		$arreglo+=array('id_proceso'=>$_REQUEST['id_proceso']);
		$arreglo+=array('nombre_sede'=>$_REQUEST['nombre_sede']);
		$arreglo+=array('id_juris'=>$_REQUEST['id_juris']);
		$arreglo+=array('id_mpio'=>$_REQUEST['id_mpio']);
		$arreglo+=array('sede_activa'=>$_REQUEST['sede_activa']);
		$arreglo+=array('clues_sede'=>$_REQUEST['clues_sede']);
		if($id_sede==0){
			$x=$this->insert('cat_sedes', $arreglo);
		}
		else{
			$x=$this->update('cat_sedes',array('id_sede'=>$id_sede), $arreglo);
		}
		return $x;
	}
}

$db = new Usuario();
if(strlen($function)>0){
	echo $db->$function();
}
