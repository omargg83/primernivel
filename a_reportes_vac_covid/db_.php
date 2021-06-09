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
	public function usuario_lista_vac_sedes60ymas(){
			if ($_SESSION['id_juris']==18)			{
				$sql="select `cat_sedes`.*, `cat_municipios`.`nombre_mpio` FROM `cat_sedes`
								LEFT JOIN `cat_municipios` ON `cat_sedes`.`id_mpio` = `cat_municipios`.`id_mpio`
								WHERE `cat_sedes`.`id_proceso` = 1
								ORDER BY `id_mpio` ASC, `cat_sedes`.`nombre_sede` ASC;";
				//echo $sql;
				$sth = $this->dbh->query($sql);
				return $sth->fetchAll(PDO::FETCH_OBJ);			}
			else{
				$sql="select `cat_sedes`.*, `cat_municipios`.`nombre_mpio` FROM `cat_sedes`
						  LEFT JOIN `cat_municipios` ON `cat_sedes`.`id_mpio` = `cat_municipios`.`id_mpio` WHERE id_juris = ".$_SESSION['id_juris']."
							AND `cat_sedes`.`id_proceso` = 1
							ORDER BY `cat_municipios`.`nombre_mpio` ASC, `cat_sedes`.`nombre_sede` ASC;";
				//echo $sql;
				$sth = $this->dbh->query($sql);
				return $sth->fetchAll(PDO::FETCH_OBJ);			}
		}
		public function usuario_lista_vac_sedes50a59(){
 			if ($_SESSION['id_juris']==18)			{
 				$sql="select `cat_sedes`.*, `cat_municipios`.`nombre_mpio` FROM `cat_sedes`
 								LEFT JOIN `cat_municipios` ON `cat_sedes`.`id_mpio` = `cat_municipios`.`id_mpio`
 								WHERE `cat_sedes`.`id_proceso` = 2
 								ORDER BY `id_mpio` ASC, `cat_sedes`.`nombre_sede` ASC;";
 				//echo $sql;
 				$sth = $this->dbh->query($sql);
 				return $sth->fetchAll(PDO::FETCH_OBJ);			}
 			else{
 				$sql="select `cat_sedes`.*, `cat_municipios`.`nombre_mpio` FROM `cat_sedes`
 						  LEFT JOIN `cat_municipios` ON `cat_sedes`.`id_mpio` = `cat_municipios`.`id_mpio` WHERE id_juris = ".$_SESSION['id_juris']."
 							AND `cat_sedes`.`id_proceso` = 2
 							ORDER BY `cat_municipios`.`nombre_mpio` ASC, `cat_sedes`.`nombre_sede` ASC;";
 				//echo $sql;
 				$sth = $this->dbh->query($sql);
 				return $sth->fetchAll(PDO::FETCH_OBJ);			}
 		}
		public function usuario_lista_vac_sedes40a49(){
 			if ($_SESSION['id_juris']==18)			{
 				$sql="select `cat_sedes`.*, `cat_municipios`.`nombre_mpio` FROM `cat_sedes`
 								LEFT JOIN `cat_municipios` ON `cat_sedes`.`id_mpio` = `cat_municipios`.`id_mpio`
 								WHERE `cat_sedes`.`id_proceso` = 4
 								ORDER BY `id_mpio` ASC, `cat_sedes`.`nombre_sede` ASC;";
 				//echo $sql;
 				$sth = $this->dbh->query($sql);
 				return $sth->fetchAll(PDO::FETCH_OBJ);			}
 			else{
 				$sql="select `cat_sedes`.*, `cat_municipios`.`nombre_mpio` FROM `cat_sedes`
 						  LEFT JOIN `cat_municipios` ON `cat_sedes`.`id_mpio` = `cat_municipios`.`id_mpio` WHERE id_juris = ".$_SESSION['id_juris']."
 							AND `cat_sedes`.`id_proceso` = 4
 							ORDER BY `cat_municipios`.`nombre_mpio` ASC, `cat_sedes`.`nombre_sede` ASC;";
 				//echo $sql;
 				$sth = $this->dbh->query($sql);
 				return $sth->fetchAll(PDO::FETCH_OBJ);			}
 		}
		public function usuario_lista_vac_sedes_seph(){
				if ($_SESSION['id_juris']==18)			{
					$sql="select `cat_sedes`.*, `cat_municipios`.`nombre_mpio` FROM `cat_sedes`
									LEFT JOIN `cat_municipios` ON `cat_sedes`.`id_mpio` = `cat_municipios`.`id_mpio`
									WHERE `cat_sedes`.`id_proceso` = 3
									ORDER BY `id_mpio` ASC, `cat_sedes`.`nombre_sede` ASC";
					//echo $sql;
					$sth = $this->dbh->query($sql);
					return $sth->fetchAll(PDO::FETCH_OBJ);			}
				else{
					$sql="select `cat_sedes`.*, `cat_municipios`.`nombre_mpio` FROM `cat_sedes`
							  LEFT JOIN `cat_municipios` ON `cat_sedes`.`id_mpio` = `cat_municipios`.`id_mpio` WHERE id_juris = ".$_SESSION['id_juris']."
								AND `cat_sedes`.`id_proceso` = 3
								ORDER BY `cat_municipios`.`nombre_mpio` ASC, `cat_sedes`.`nombre_sede` ASC;";
					//echo $sql;
					$sth = $this->dbh->query($sql);
					return $sth->fetchAll(PDO::FETCH_OBJ);}
			}
		public function nombre_sede($id){
					$sql="select `cat_sedes`.`nombre_sede`, `cat_municipios`.`nombre_mpio` FROM `cat_sedes`
 							LEFT JOIN `cat_municipios` ON `cat_sedes`.`id_mpio` = `cat_municipios`.`id_mpio`
							WHERE id_sede = ".$id.";";
					$sth = $this->dbh->query($sql);
					return $sth->fetchAll(PDO::FETCH_OBJ);}

		public function nombre_bio($id){
						$sql="select * FROM cat_bio WHERE id_bio=".$id.";";
						$sth = $this->dbh->query($sql);
						return $sth->fetchAll(PDO::FETCH_OBJ);}

		 public function fechas_sede_50a59($id){
				$sql="select `id_det_vac_50a59`,`fecha_reporte`,`num_dosis` from `det_vac_50a59` where `id_sede`= ".$id.";";
				//echo $sql;
				$sth = $this->dbh->query($sql);
				return $sth->fetchAll(PDO::FETCH_OBJ);}

		 public function fechas_sede_60ymas($id){
						$sql="select `id_det_vac_60ymas`,`fecha_reporte`,`num_dosis` from `det_vac_60ymas` where `id_sede`= ".$id.";";
						//echo $sql;
						$sth = $this->dbh->query($sql);
						return $sth->fetchAll(PDO::FETCH_OBJ);}

		public function fechas_sede_SEPH($id){
 					$sql="select `id_det_vac_seph`,`fecha_reporte`,`num_dosis` from `det_vac_seph` where `id_sede`= ".$id.";";
 					//echo $sql;
 					$sth = $this->dbh->query($sql);
 					return $sth->fetchAll(PDO::FETCH_OBJ);}

		public function reporte_seph($id){
			$sql="select *, sum(`H_18`+`H_20`+`H_25`+`H_30`+`H_35`+`H_40`+`H_45`+`H_50`+`H_55`+`H_60`+`H_65`+`H_70`) AS 'H_tot_vac',
					sum(`M_18`+`M_20`+`M_25`+`M_30`+`M_35`+`M_40`+`M_45`+`M_50`+`M_55`+`M_60`+`M_65`+`M_70`) AS 'M_tot_vac',
					sum(`HENG_18`+`HENG_20`+`HENG_25`+`HENG_30`+`HENG_35`+`HENG_40`+`HENG_45`+`HENG_50`+`HENG_55`+`HENG_60`+`HENG_65`+`HENG_70`) AS 'H_tot_ENG',
					sum(`MENG_18`+`MENG_20`+`MENG_25`+`MENG_30`+`MENG_35`+`MENG_40`+`MENG_45`+`MENG_50`+`MENG_55`+`MENG_60`+`MENG_65`+`MENG_70`) AS 'M_tot_ENG',
					sum(`HEG_18`+`HEG_20`+`HEG_25`+`HEG_30`+`HEG_35`+`HEG_40`+`HEG_45`+`HEG_50`+`HEG_55`+`HEG_60`+`HEG_65`+`HEG_70`) AS 'H_tot_EG',
					sum(`MEG_18`+`MEG_20`+`MEG_25`+`MEG_30`+`MEG_35`+`MEG_40`+`MEG_45`+`MEG_50`+`MEG_55`+`MEG_60`+`MEG_65`+`MEG_70`) AS 'M_tot_EG',
					sum(`H_18`+`H_20`+`H_25`+`H_30`+`H_35`+`H_40`+`H_45`+`H_50`+`H_55`+`H_60`+`H_65`+`H_70`+`M_18`+`M_20`+`M_25`+`M_30`+`M_35`+`M_40`+`M_45`+`M_50`+`M_55`+`M_60`+`M_65`+`M_70`+`briga`+`personal_salud`) AS 'total'
					from `det_vac_seph` where `id_det_vac_seph`= ".$id.";";
			//echo $sql;
			$sth = $this->dbh->query($sql);
			return $sth->fetchAll(PDO::FETCH_OBJ);
		}
		public function reporte_50a59($id){
			$sql="select *, sum(`H_50`+`H_55`+`H_60`+`H_65`+`H_70`+`H_75`+`H_80`) AS 'H_tot_vac',
						sum(`M_50`+`M_55`+`M_60`+`M_65`+`M_70`+`M_75`+`M_80`) AS 'M_tot_vac',
						sum(`HENG_50`+`HENG_55`+`HENG_60`+`HENG_65`+`HENG_70`+`HENG_75`+`HENG_80`) AS 'H_tot_ENG',
						sum(`MENG_50`+`MENG_55`+`MENG_60`+`MENG_65`+`MENG_70`+`MENG_75`+`MENG_80`) AS 'M_tot_ENG',
						sum(`HEG_50`+`HEG_55`+`HEG_60`+`HEG_65`+`HEG_70`+`HEG_75`+`HEG_80`) AS 'H_tot_EG',
						sum(`MEG_50`+`MEG_55`+`MEG_60`+`MEG_65`+`MEG_70`+`MEG_75`+`MEG_80`) AS 'M_tot_EG',
						sum(`H_50`+`H_55`+`H_60`+`H_65`+`H_70`+`H_75`+`H_80`+`M_50`+`M_55`+`M_60`+`M_65`+`M_70`+`M_75`+`M_80`+`briga`+`personal_salud`+`ME_18`+`ME_25`+`ME_30`+`ME_35`+`ME_40`+`ME_45`+`ME_50`+`ME_55`) AS 'total',
						sum(`ME_18`+`ME_25`+`ME_30`+`ME_35`+`ME_40`+`ME_45`+`ME_50`+`ME_55`) AS 'ME_tot_vac',
						sum(`MEENG_18`+`MEENG_25`+`MEENG_30`+`MEENG_35`+`MEENG_40`+`MEENG_45`+`MEENG_50`+`MEENG_55`) AS 'ME_tot_ENG',
						sum(`MEEG_18`+`MEEG_25`+`MEEG_30`+`MEEG_35`+`MEEG_40`+`MEEG_45`+`MEEG_50`+`MEEG_55`) AS 'ME_tot_EG',
						sum(`Frs_dosis_completas`+`Frs_dosis_incompletas`) as 'total_frascos'
				  	from `det_vac_50a59` where `id_det_vac_50a59`= ".$id.";";
			//echo $sql;
			$sth = $this->dbh->query($sql);
			return $sth->fetchAll(PDO::FETCH_OBJ);
		}
		public function reporte_60ymas($id){
			$sql="select *, sum(`H_60`+`H_65`+`H_70`+`H_75`+`H_80`) AS 'H_tot_vac',
						sum(`M_60`+`M_65`+`M_70`+`M_75`+`M_80`) AS 'M_tot_vac',
						sum(`HENG_60`+`HENG_65`+`HENG_70`+`HENG_75`+`HENG_80`) AS 'H_tot_ENG',
						sum(`MENG_60`+`MENG_65`+`MENG_70`+`MENG_75`+`MENG_80`) AS 'M_tot_ENG',
						sum(`HEG_60`+`HEG_65`+`HEG_70`+`HEG_75`+`HEG_80`) AS 'H_tot_EG',
						sum(`MEG_60`+`MEG_65`+`MEG_70`+`MEG_75`+`MEG_80`) AS 'M_tot_EG',
						sum(`H_60`+`H_65`+`H_70`+`H_75`+`H_80`+`M_60`+`M_65`+`M_70`+`M_75`+`M_80`+`briga`+`personal_salud`) AS 'total'
						from `det_vac_60ymas` where `id_det_vac_60ymas`= ".$id.";";
			//echo $sql;
			$sth = $this->dbh->query($sql);
			return $sth->fetchAll(PDO::FETCH_OBJ);
		}
/******************************************************** REPORTES GENERALES **************************************************/
	public function lista_procesos(){
		$sql="select * FROM `cat_proceso` order by `id_proceso` desc";
		$sth = $this->dbh->query($sql);
		return $sth->fetchAll(PDO::FETCH_OBJ);
	}
	public function nombre_proceso($id){
		$sql="select `nombre_proceso` FROM `cat_proceso` WHERE `id_proceso`=$id";
		$sth = $this->dbh->query($sql);
		return $sth->fetchAll(PDO::FETCH_OBJ);
	}
/*********************************lista_remesas.php**************************************/
	public function lista_remesas_proceso($id){
		$sql="select `cat_remesas`.*,  `cat_bio`.`nombre_bio`
					from `cat_remesas`
					left join `cat_proceso` on `cat_remesas`.`id_proceso` = `cat_proceso`.`id_proceso`
					left join `cat_bio` on `cat_remesas`.`id_bio` = `cat_bio`.`id_bio`
					where `cat_remesas`.`id_proceso`= '$id'
					order by `cat_remesas`.`id_proceso` asc";
		$sth = $this->dbh->query($sql);
		return $sth->fetchAll(PDO::FETCH_OBJ);
	}
/*********************************reporte_remesa.php**************************************/
	public function datos_remesa($id){
		$sql="select `cat_remesas`.*, `cat_bio`.`nombre_bio`
					from `cat_remesas`
					left join `cat_proceso` on `cat_remesas`.`id_proceso` = `cat_proceso`.`id_proceso`
					left join `cat_bio` on `cat_remesas`.`id_bio` = `cat_bio`.`id_bio`
					where `cat_remesas`.`id_remesa`= '$id'";
		$sth = $this->dbh->query($sql);
		return $sth->fetchAll(PDO::FETCH_OBJ);
	}
	public function rep_remesa_sede($idproceso,$id)
	{
		if($idproceso==3){
							$sql="select sum(`H_18`+`H_20`+`H_25`+`H_30`+`H_35`+`H_40`+`H_45`+`H_50`+`H_55`+`H_60`+`H_65`+`H_70`+`M_18`+`M_20`+`M_25`+`M_30`+`M_35`+`M_40`+`M_45`+`M_50`+`M_55`+`M_60`+`M_65`+`M_70`) AS 'total_vac_pob',
										sum(`briga`) AS 'total_brig',
										sum(`personal_salud`) AS 'total_per_sal',
										sum(`H_18`+`H_20`+`H_25`+`H_30`+`H_35`+`H_40`+`H_45`+`H_50`+`H_55`+`H_60`+`H_65`+`H_70`+`M_18`+`M_20`+`M_25`+`M_30`+`M_35`+`M_40`+`M_45`+`M_50`+`M_55`+`M_60`+`M_65`+`M_70`+`briga`+`personal_salud`) AS 'total_dosis',
										sum(`HENG_18`+`HENG_20`+`HENG_25`+`HENG_30`+`HENG_35`+`HENG_40`+`HENG_45`+`HENG_50`+`HENG_55`+`HENG_60`+`HENG_65`+`HENG_70`+`MENG_18`+`MENG_20`+`MENG_25`+`MENG_30`+`MENG_35`+`MENG_40`+`MENG_45`+`MENG_50`+`MENG_55`+`MENG_60`+`MENG_65`+`MENG_70`) AS 'total_ENG',
										sum(`HEG_18`+`HEG_20`+`HEG_25`+`HEG_30`+`HEG_35`+`HEG_40`+`HEG_45`+`HEG_50`+`HEG_55`+`HEG_60`+`HEG_65`+`HEG_70`+`MEG_18`+`MEG_20`+`MEG_25`+`MEG_30`+`MEG_35`+`MEG_40`+`MEG_45`+`MEG_50`+`MEG_55`+`MEG_60`+`MEG_65`+`MEG_70`) AS 'total_EG',
										sum(`merma`) AS 'total_mermas'
										from `det_vac_seph`
										where `det_vac_seph`.`id_sede`= '$id'";
										$sth = $this->dbh->query($sql);
										return $sth->fetchAll(PDO::FETCH_OBJ);
									}
		else if($idproceso==2){
							$sql="select sum(`H_50`+`M_50`+`H_55`+`M_55`+`H_60`+`M_60`+`H_65`+`M_65`+`H_70`+`M_70`+`H_75`+`M_75`+`H_80`+`M_80`) AS 'total_vac_pob',
										sum(`ME_18`+`ME_25`+`ME_30`+`ME_35`+`ME_40`+`ME_45`+`ME_50`+`ME_55`) AS 'total_vac_emb',
										sum(`briga`) AS 'total_brig',
										sum(`personal_salud`) AS 'total_per_sal',
										sum(`H_50`+`M_50`+`H_55`+`M_55`+`H_60`+`M_60`+`H_65`+`M_65`+`H_70`+`M_70`+`H_75`+`M_75`+`H_80`+`M_80`+`ME_18`+`ME_25`+`ME_30`+`ME_35`+`ME_40`+`ME_45`+`ME_50`+`ME_55`+`briga`+`personal_salud`) AS 'total_dosis',
										sum(`HENG_50`+`MENG_50`+`HENG_55`+`MENG_55`+`HENG_60`+`MENG_60`+`HENG_65`+`MENG_65`+`HENG_70`+`MENG_70`+`HENG_75`+`MENG_75`+`HENG_80`+`MENG_80`+`MEENG_18`+`MEENG_25`+`MEENG_30`+`MEENG_35`+`MEENG_40`+`MEENG_45`+`MEENG_50`+`MEENG_55`) AS 'total_ENG',
										sum(`HEG_50`+`MEG_50`+`HEG_55`+`MEG_55`+`HEG_60`+`MEG_60`+`HEG_65`+`MEG_65`+`HEG_70`+`MEG_70`+`HEG_75`+`MEG_75`+`HEG_80`+`MEG_80`+`MEEG_18`+`MEEG_25`+`MEEG_30`+`MEEG_35`+`MEEG_40`+`MEEG_45`+`MEEG_50`+`MEEG_55`) AS 'total_EG',
										sum(`merma`) AS 'total_mermas'
										from `det_vac_50a59`
										where `det_vac_50a59`.`id_sede`='$id'";
										$sth = $this->dbh->query($sql);
										return $sth->fetchAll(PDO::FETCH_OBJ);
									}
   else if($idproceso==1){
 						$sql="select sum(`H_60`+`M_60`+`H_65`+`M_65`+`H_70`+`M_70`+`H_75`+`M_75`+`H_80`+`M_80`) AS 'total_vac_pob',
										sum(`ME_18`+`ME_25`+`ME_30`+`ME_35`+`ME_40`+`ME_45`+`ME_50`+`ME_55`) AS 'total_vac_emb',
      							sum(`briga`) AS 'total_brig',
      							sum(`personal_salud`) AS 'total_per_sal',
      							sum(`H_60`+`M_60`+`H_65`+`M_65`+`H_70`+`M_70`+`H_75`+`M_75`+`H_80`+`M_80`+`ME_18`+`ME_25`+`ME_30`+`ME_35`+`ME_40`+`ME_45`+`ME_50`+`ME_55`+`briga`+`personal_salud`) AS 'total_dosis',
      							sum(`HENG_60`+`MENG_60`+`HENG_65`+`MENG_65`+`HENG_70`+`MENG_70`+`HENG_75`+`MENG_75`+`HENG_80`+`MENG_80`+`MEENG_18`+`MEENG_25`+`MEENG_30`+`MEENG_35`+`MEENG_40`+`MEENG_45`+`MEENG_50`+`MEENG_55`) AS 'total_ENG',
      							sum(`HEG_60`+`MEG_60`+`HEG_65`+`MEG_65`+`HEG_70`+`MEG_70`+`HEG_75`+`MEG_75`+`HEG_80`+`MEG_80`+`MEEG_18`+`MEEG_25`+`MEEG_30`+`MEEG_35`+`MEEG_40`+`MEEG_45`+`MEEG_50`+`MEEG_55`) AS 'total_EG',
      							sum(`merma`) AS 'total_mermas'
      							from `det_vac_60ymas`
      							where `det_vac_60ymas`.`id_sede`='$id'";
      							$sth = $this->dbh->query($sql);
      							return $sth->fetchAll(PDO::FETCH_OBJ);
	      					}
	 else if($idproceso==4){
	 					$sql="select sum(`H_40`+`M_40`+`H_45`+`M_45`+`H_50`+`M_50`+`H_55`+`M_55`+`H_60`+`M_60`+`H_65`+`M_65`+`H_70`+`M_70`+`H_75`+`M_75`+`H_80`+`M_80`) AS 'total_vac_pob',
	 								sum(`ME_18`+`ME_25`+`ME_30`+`ME_35`+`ME_40`+`ME_45`+`ME_50`+`ME_55`) AS 'total_vac_emb',
	 								sum(`briga`) AS 'total_brig',
	 								sum(`personal_salud`) AS 'total_per_sal',
	 								sum(`H_40`+`M_40`+`H_45`+`M_45`+`H_50`+`M_50`+`H_55`+`M_55`+`H_60`+`M_60`+`H_65`+`M_65`+`H_70`+`M_70`+`H_75`+`M_75`+`H_80`+`M_80`+`ME_18`+`ME_25`+`ME_30`+`ME_35`+`ME_40`+`ME_45`+`ME_50`+`ME_55`+`briga`+`personal_salud`) AS 'total_dosis',
	 								sum(`HENG_40`+`MENG_40`+`HENG_45`+`MENG_45`+`HENG_50`+`MENG_50`+`HENG_55`+`MENG_55`+`HENG_60`+`MENG_60`+`HENG_65`+`MENG_65`+`HENG_70`+`MENG_70`+`HENG_75`+`MENG_75`+`HENG_80`+`MENG_80`+`MEENG_18`+`MEENG_25`+`MEENG_30`+`MEENG_35`+`MEENG_40`+`MEENG_45`+`MEENG_50`+`MEENG_55`) AS 'total_ENG',
	 								sum(`HEG_40`+`MEG_40`+`HEG_45`+`MEG_45`+`HEG_50`+`MEG_50`+`HEG_55`+`MEG_55`+`HEG_60`+`MEG_60`+`HEG_65`+`MEG_65`+`HEG_70`+`MEG_70`+`HEG_75`+`MEG_75`+`HEG_80`+`MEG_80`+`MEEG_18`+`MEEG_25`+`MEEG_30`+`MEEG_35`+`MEEG_40`+`MEEG_45`+`MEEG_50`+`MEEG_55`) AS 'total_EG',
	 								sum(`merma`) AS 'total_mermas'
	 								from `det_vac_40a49`
	 								where `det_vac_40a49`.`id_sede`='$id'";
	 								$sth = $this->dbh->query($sql);
	 								return $sth->fetchAll(PDO::FETCH_OBJ);
	 							}
	}
	public function sedes_activas_remesa($id){
		$sql="select `cat_sedes`.`id_sede`,`cat_sedes`.`nombre_sede`, `cat_sedes`.`id_juris`,`cat_jurisdicciones`.`nombre_juris`,`cat_municipios`.`nombre_mpio`
					from `cat_sedes`
					LEFT JOIN `cat_municipios` ON `cat_sedes`.`id_mpio` = `cat_municipios`.`id_mpio`
					LEFT JOIN `cat_jurisdicciones` ON `cat_sedes`.`id_juris` = `cat_jurisdicciones`.`id_juris`
					where `id_remesa`='$id' ORDER BY `cat_jurisdicciones`.`nombre_juris` asc, `cat_municipios`.`nombre_mpio`";
	$sth = $this->dbh->query($sql);
	return $sth->fetchAll(PDO::FETCH_OBJ);
	}
/*********************************lista_fechas.php**************************************/
	public function lista_fechas_proceso_seph($id){
		$sql="select `det_vac_seph`.`fecha_reporte`,count(`det_vac_seph`.`fecha_reporte`) as tot_reg_fecha, (select `nombre_proceso` FROM `cat_proceso` WHERE `id_proceso`='$id') AS nombre_proceso
					from `det_vac_seph`
					left join `cat_sedes` on `det_vac_seph`.`id_sede` = `cat_sedes`.`id_sede`
					where `cat_sedes`.`id_proceso`= '$id'
					group by `det_vac_seph`.`fecha_reporte`
					order by `det_vac_seph`.`fecha_reporte` desc";
					$sth = $this->dbh->query($sql);
					return $sth->fetchAll(PDO::FETCH_OBJ);
	}
	public function lista_fechas_proceso_50a59($id){
			$sql="select `det_vac_50a59`.`fecha_reporte`,count(`det_vac_50a59`.`fecha_reporte`) as tot_reg_fecha, (select `nombre_proceso` FROM `cat_proceso` WHERE `id_proceso`='$id') AS nombre_proceso
					from `det_vac_50a59`
					left join `cat_sedes` on `det_vac_50a59`.`id_sede` = `cat_sedes`.`id_sede`
					where `cat_sedes`.`id_proceso`= '$id'
					group by `det_vac_50a59`.`fecha_reporte`
					order by `det_vac_50a59`.`fecha_reporte` desc";
					$sth = $this->dbh->query($sql);
					return $sth->fetchAll(PDO::FETCH_OBJ);
		}

	public function lista_fechas_proceso_40a49($id){
			$sql="select `det_vac_40a49`.`fecha_reporte`,count(`det_vac_40a49`.`fecha_reporte`) as tot_reg_fecha, (select `nombre_proceso` FROM `cat_proceso` WHERE `id_proceso`='$id') AS nombre_proceso
					from `det_vac_40a49`
					left join `cat_sedes` on `det_vac_40a49`.`id_sede` = `cat_sedes`.`id_sede`
					where `cat_sedes`.`id_proceso`= '$id'
					group by `det_vac_40a49`.`fecha_reporte`
					order by `det_vac_40a49`.`fecha_reporte` desc";
					$sth = $this->dbh->query($sql);
					return $sth->fetchAll(PDO::FETCH_OBJ);
		}

		public function lista_fechas_proceso_60ymas($id){
				$sql="select `det_vac_60ymas`.`fecha_reporte`,count(`det_vac_60ymas`.`fecha_reporte`) as tot_reg_fecha, (select `nombre_proceso` FROM `cat_proceso` WHERE `id_proceso`='$id') AS nombre_proceso
						from `det_vac_60ymas`
						left join `cat_sedes` on `det_vac_60ymas`.`id_sede` = `cat_sedes`.`id_sede`
						where `cat_sedes`.`id_proceso`= '$id'
						group by `det_vac_60ymas`.`fecha_reporte`
						order by `det_vac_60ymas`.`fecha_reporte` desc";
						$sth = $this->dbh->query($sql);
						return $sth->fetchAll(PDO::FETCH_OBJ);
			}
			/*********************************reporte_fecha_sedes.php**************************************/
				public function sedes_dia_seleccionado($fechar,$tabla,$id){
					if($tabla==1){
							$sql="select `det_vac_60ymas`.`id_det_vac_60ymas` as idregistro, `cat_sedes`.`id_sede`, `cat_sedes`.`nombre_sede`, `cat_jurisdicciones`.`nombre_juris`, `cat_municipios`.`nombre_mpio`
								from `det_vac_60ymas`
									left join `cat_sedes` on `det_vac_60ymas`.`id_sede` = `cat_sedes`.`id_sede`
									left join `cat_jurisdicciones` on `cat_sedes`.`id_juris` = `cat_jurisdicciones`.`id_juris`
									left join `cat_municipios` on `cat_sedes`.`id_mpio` = `cat_municipios`.`id_mpio`
								where  `cat_sedes`.`id_proceso`= '$id' and `det_vac_60ymas`.`fecha_reporte`='$fechar'
								order by `cat_jurisdicciones`.`nombre_juris` asc, `cat_municipios`.`nombre_mpio`";
							$sth = $this->dbh->query($sql);
							return $sth->fetchAll(PDO::FETCH_OBJ);
					}
					else if($tabla==2){
							$sql="select `det_vac_50a59`.`id_det_vac_50a59` as idregistro, `cat_sedes`.`id_sede`, `cat_sedes`.`nombre_sede`, `cat_jurisdicciones`.`nombre_juris`, `cat_municipios`.`nombre_mpio`
								from `det_vac_50a59`
									left join `cat_sedes` on `det_vac_50a59`.`id_sede` = `cat_sedes`.`id_sede`
									left join `cat_jurisdicciones` on `cat_sedes`.`id_juris` = `cat_jurisdicciones`.`id_juris`
									left join `cat_municipios` on `cat_sedes`.`id_mpio` = `cat_municipios`.`id_mpio`
								where  `cat_sedes`.`id_proceso`= '$id' and `det_vac_50a59`.`fecha_reporte`='$fechar'
								order by `cat_jurisdicciones`.`nombre_juris` asc, `cat_municipios`.`nombre_mpio`";
							$sth = $this->dbh->query($sql);
							return $sth->fetchAll(PDO::FETCH_OBJ);
					}
					else if($tabla==3){
							$sql="select `det_vac_seph`.`id_det_vac_seph` as idregistro, `cat_sedes`.`id_sede`, `cat_sedes`.`nombre_sede`, `cat_jurisdicciones`.`nombre_juris`, `cat_municipios`.`nombre_mpio`
										from `det_vac_seph`
											left join `cat_sedes` on `det_vac_seph`.`id_sede` = `cat_sedes`.`id_sede`
											left join `cat_jurisdicciones` on `cat_sedes`.`id_juris` = `cat_jurisdicciones`.`id_juris`
											left join `cat_municipios` on `cat_sedes`.`id_mpio` = `cat_municipios`.`id_mpio`
										where  `cat_sedes`.`id_proceso`= '$id' and `det_vac_seph`.`fecha_reporte`='$fechar'
										order by `cat_jurisdicciones`.`nombre_juris` asc, `cat_municipios`.`nombre_mpio`";
							$sth = $this->dbh->query($sql);
							return $sth->fetchAll(PDO::FETCH_OBJ);
					}
					else if($tabla==4){
							$sql="select `det_vac_40a49`.`id_det_vac_40a49` as idregistro, `cat_sedes`.`id_sede`, `cat_sedes`.`nombre_sede`, `cat_jurisdicciones`.`nombre_juris`, `cat_municipios`.`nombre_mpio`
								from `det_vac_40a49`
									left join `cat_sedes` on `det_vac_40a49`.`id_sede` = `cat_sedes`.`id_sede`
									left join `cat_jurisdicciones` on `cat_sedes`.`id_juris` = `cat_jurisdicciones`.`id_juris`
									left join `cat_municipios` on `cat_sedes`.`id_mpio` = `cat_municipios`.`id_mpio`
								where  `cat_sedes`.`id_proceso`= '$id' and `det_vac_40a49`.`fecha_reporte`='$fechar'
								order by `cat_jurisdicciones`.`nombre_juris` asc, `cat_municipios`.`nombre_mpio`";
							$sth = $this->dbh->query($sql);
							return $sth->fetchAll(PDO::FETCH_OBJ);
					}
				}
				/*********************************reporte_fecha.php**************************************/
			public function reporte_dia_seleccionado($fechar,$tabla,$id){
						if($tabla==1){
								$sql="select `det_vac_60ymas`.*,`cat_sedes`.`id_sede`,`cat_sedes`.`nombre_sede`, `cat_sedes`.`id_juris`,`cat_jurisdicciones`.`nombre_juris`,`cat_municipios`.`nombre_mpio`, `det_vac_60ymas`.`id_det_vac_60ymas` AS 'id_unico'
											from `det_vac_60ymas`
											left join `cat_sedes` on `det_vac_60ymas`.`id_sede` = `cat_sedes`.`id_sede`
											LEFT JOIN `cat_municipios` ON `cat_sedes`.`id_mpio` = `cat_municipios`.`id_mpio`
											LEFT JOIN `cat_jurisdicciones` ON `cat_sedes`.`id_juris` = `cat_jurisdicciones`.`id_juris`
											where  `cat_sedes`.`id_proceso`= '$id' and `det_vac_60ymas`.`fecha_reporte`='$fechar'
											order by `cat_jurisdicciones`.`nombre_juris` asc, `cat_municipios`.`nombre_mpio`";
								$sth = $this->dbh->query($sql);
								return $sth->fetchAll(PDO::FETCH_OBJ);
						}
						else if($tabla==2){
								$sql="select `det_vac_50a59`.*,`cat_sedes`.`id_sede`,`cat_sedes`.`nombre_sede`, `cat_sedes`.`id_juris`,`cat_jurisdicciones`.`nombre_juris`,`cat_municipios`.`nombre_mpio`, `det_vac_50a59`.`id_det_vac_50a59` AS 'id_unico'
											from `det_vac_50a59`
											left join `cat_sedes` on `det_vac_50a59`.`id_sede` = `cat_sedes`.`id_sede`
											LEFT JOIN `cat_municipios` ON `cat_sedes`.`id_mpio` = `cat_municipios`.`id_mpio`
											LEFT JOIN `cat_jurisdicciones` ON `cat_sedes`.`id_juris` = `cat_jurisdicciones`.`id_juris`
											where  `cat_sedes`.`id_proceso`= '$id' and `det_vac_50a59`.`fecha_reporte`='$fechar'
											order by `cat_jurisdicciones`.`nombre_juris` asc, `cat_municipios`.`nombre_mpio`";
								$sth = $this->dbh->query($sql);
								return $sth->fetchAll(PDO::FETCH_OBJ);
						}
						else if($tabla==3){
								$sql="select `det_vac_seph`.*,`cat_sedes`.`id_sede`,`cat_sedes`.`nombre_sede`, `cat_sedes`.`id_juris`,`cat_jurisdicciones`.`nombre_juris`,`cat_municipios`.`nombre_mpio`, `det_vac_seph`.`id_det_vac_seph` AS 'id_unico'
											from `det_vac_seph`
											left join `cat_sedes` on `det_vac_seph`.`id_sede` = `cat_sedes`.`id_sede`
											LEFT JOIN `cat_municipios` ON `cat_sedes`.`id_mpio` = `cat_municipios`.`id_mpio`
											LEFT JOIN `cat_jurisdicciones` ON `cat_sedes`.`id_juris` = `cat_jurisdicciones`.`id_juris`
											where  `cat_sedes`.`id_proceso`= '$id' and `det_vac_seph`.`fecha_reporte`='$fechar'
											order by `cat_jurisdicciones`.`nombre_juris` asc, `cat_municipios`.`nombre_mpio`";
								$sth = $this->dbh->query($sql);
								return $sth->fetchAll(PDO::FETCH_OBJ);
						}
						else if($tabla==4){
								$sql="select `det_vac_40a49`.*,`cat_sedes`.`id_sede`,`cat_sedes`.`nombre_sede`, `cat_sedes`.`id_juris`,`cat_jurisdicciones`.`nombre_juris`,`cat_municipios`.`nombre_mpio`, `det_vac_40a49`.`id_det_vac_40a49` AS 'id_unico'
											from `det_vac_40a49`
											left join `cat_sedes` on `det_vac_40a49`.`id_sede` = `cat_sedes`.`id_sede`
											LEFT JOIN `cat_municipios` ON `cat_sedes`.`id_mpio` = `cat_municipios`.`id_mpio`
											LEFT JOIN `cat_jurisdicciones` ON `cat_sedes`.`id_juris` = `cat_jurisdicciones`.`id_juris`
											where  `cat_sedes`.`id_proceso`= '$id' and `det_vac_40a49`.`fecha_reporte`='$fechar'
											order by `cat_jurisdicciones`.`nombre_juris` asc, `cat_municipios`.`nombre_mpio`";
								$sth = $this->dbh->query($sql);
								return $sth->fetchAll(PDO::FETCH_OBJ);
						}
					}
			public function rep_fecha_sede($fechar,$tabla,$id){
						if($tabla==1){
								$sql="select sum(`H_60`+`H_65`+`H_70`+`H_80`+`H_75`+`M_60`+`M_65`+`M_70`+`M_80`+`M_75`) AS 'total_vac_pob',
													sum(`ME_18`+`ME_25`+`ME_30`+`ME_35`+`ME_40`+`ME_45`+`ME_50`+`ME_55`) AS 'total_vac_emb',
													sum(`briga`) AS 'total_brig',
													sum(`personal_salud`) AS 'total_per_sal',
													sum(`H_60`+`H_65`+`H_70`+`H_80`+`H_75`+`M_60`+`M_65`+`M_70`+`M_80`+`M_75`+`briga`+`personal_salud`+`ME_18`+`ME_25`+`ME_30`+`ME_35`+`ME_40`+`ME_45`+`ME_50`+`ME_55`) AS 'total_dosis',
													sum(`HENG_60`+`HENG_65`+`HENG_70`+`HENG_80`+`HENG_75`+`MENG_60`+`MENG_65`+`MENG_70`+`MENG_80`+`MENG_75`+`MEENG_18`+`MEENG_25`+`MEENG_30`+`MEENG_35`+`MEENG_40`+`MEENG_45`+`MEENG_50`+`MEENG_55`) AS 'total_ENG',
													sum(`HEG_60`+`HEG_65`+`HEG_70`+`HEG_80`+`HEG_75`+`MEG_60`+`MEG_65`+`MEG_70`+`MEG_80`+`MEG_75`+`MEEG_18`+`MEEG_25`+`MEEG_30`+`MEEG_35`+`MEEG_40`+`MEEG_45`+`MEEG_50`+`MEEG_55`) AS 'total_EG',
													sum(`merma`) AS 'total_mermas'
										from `det_vac_60ymas`
										where `det_vac_60ymas`.`id_det_vac_60ymas`= '$id' and `det_vac_60ymas`.`fecha_reporte`='$fechar'";
								$sth = $this->dbh->query($sql);
								return $sth->fetchAll(PDO::FETCH_OBJ);
						}
						else if($tabla==2){
								$sql="select sum(`H_50`+`H_55`+`H_60`+`H_65`+`H_70`+`H_80`+`H_75`+`M_50`+`M_55`+`M_60`+`M_65`+`M_70`+`M_80`+`M_75`) AS 'total_vac_pob',
													sum(`ME_18`+`ME_25`+`ME_30`+`ME_35`+`ME_40`+`ME_45`+`ME_50`+`ME_55`) AS 'total_vac_emb',
													sum(`briga`) AS 'total_brig',
													sum(`personal_salud`) AS 'total_per_sal',
													sum(`H_50`+`H_55`+`H_60`+`H_65`+`H_70`+`H_80`+`H_75`+`M_50`+`M_55`+`M_60`+`M_65`+`M_70`+`M_80`+`M_75`+`briga`+`personal_salud`+`ME_18`+`ME_25`+`ME_30`+`ME_35`+`ME_40`+`ME_45`+`ME_50`+`ME_55`) AS 'total_dosis',
													sum(`HENG_50`+`HENG_55`+`HENG_60`+`HENG_65`+`HENG_70`+`HENG_80`+`HENG_75`+`MENG_50`+`MENG_55`+`MENG_60`+`MENG_65`+`MENG_70`+`MENG_80`+`MENG_75`+`MEENG_18`+`MEENG_25`+`MEENG_30`+`MEENG_35`+`MEENG_40`+`MEENG_45`+`MEENG_50`+`MEENG_55`) AS 'total_ENG',
													sum(`HEG_50`+`HEG_55`+`HEG_60`+`HEG_65`+`HEG_70`+`HEG_75`+`HEG_80`+`MEG_50`+`MEG_55`+`MEG_60`+`MEG_65`+`MEG_70`+`MEG_80`+`MEG_75`+`MEEG_18`+`MEEG_25`+`MEEG_30`+`MEEG_35`+`MEEG_40`+`MEEG_45`+`MEEG_50`+`MEEG_55`) AS 'total_EG',
													sum(`merma`) AS 'total_mermas'
										from `det_vac_50a59`
										where `det_vac_50a59`.`id_det_vac_50a59`= '$id' and `det_vac_50a59`.`fecha_reporte`='$fechar'";
								$sth = $this->dbh->query($sql);
								return $sth->fetchAll(PDO::FETCH_OBJ);
						}
						else if($tabla==3){
								$sql="select sum(`H_18`+`H_20`+`H_25`+`H_30`+`H_35`+`H_40`+`H_45`+`H_50`+`H_55`+`H_60`+`H_65`+`H_70`+`M_18`+`M_20`+`M_25`+`M_30`+`M_35`+`M_40`+`M_45`+`M_50`+`M_55`+`M_60`+`M_65`+`M_70`) AS 'total_vac_pob',
											sum(`briga`) AS 'total_brig',
											sum(`personal_salud`) AS 'total_per_sal',
											sum(`H_18`+`H_20`+`H_25`+`H_30`+`H_35`+`H_40`+`H_45`+`H_50`+`H_55`+`H_60`+`H_65`+`H_70`+`M_18`+`M_20`+`M_25`+`M_30`+`M_35`+`M_40`+`M_45`+`M_50`+`M_55`+`M_60`+`M_65`+`M_70`+`briga`+`personal_salud`) AS 'total_dosis',
											sum(`HENG_18`+`HENG_20`+`HENG_25`+`HENG_30`+`HENG_35`+`HENG_40`+`HENG_45`+`HENG_50`+`HENG_55`+`HENG_60`+`HENG_65`+`HENG_70`+`MENG_18`+`MENG_20`+`MENG_25`+`MENG_30`+`MENG_35`+`MENG_40`+`MENG_45`+`MENG_50`+`MENG_55`+`MENG_60`+`MENG_65`+`MENG_70`) AS 'total_ENG',
											sum(`HEG_18`+`HEG_20`+`HEG_25`+`HEG_30`+`HEG_35`+`HEG_40`+`HEG_45`+`HEG_50`+`HEG_55`+`HEG_60`+`HEG_65`+`HEG_70`+`MEG_18`+`MEG_20`+`MEG_25`+`MEG_30`+`MEG_35`+`MEG_40`+`MEG_45`+`MEG_50`+`MEG_55`+`MEG_60`+`MEG_65`+`MEG_70`) AS 'total_EG',
											sum(`merma`) AS 'total_mermas'
											from `det_vac_seph`
											where `det_vac_seph`.`id_det_vac_seph`= '$id' and `det_vac_seph`.`fecha_reporte`='$fechar'";
								$sth = $this->dbh->query($sql);
								return $sth->fetchAll(PDO::FETCH_OBJ);
						}
						else if($tabla==4){
								$sql="select sum(`H_40`+`H_45`+`H_50`+`H_55`+`H_60`+`H_65`+`H_70`+`H_80`+`H_75`+`M_40`+`M_45`+`M_50`+`M_55`+`M_60`+`M_65`+`M_70`+`M_80`+`M_75`) AS 'total_vac_pob',
													sum(`ME_18`+`ME_25`+`ME_30`+`ME_35`+`ME_40`+`ME_45`+`ME_50`+`ME_55`) AS 'total_vac_emb',
													sum(`briga`) AS 'total_brig',
													sum(`personal_salud`) AS 'total_per_sal',
													sum(`H_40`+`H_45`+`H_50`+`H_55`+`H_60`+`H_65`+`H_70`+`H_80`+`H_75`+`M_40`+`M_45`+`M_50`+`M_55`+`M_60`+`M_65`+`M_70`+`M_80`+`M_75`+`briga`+`personal_salud`+`ME_18`+`ME_25`+`ME_30`+`ME_35`+`ME_40`+`ME_45`+`ME_50`+`ME_55`) AS 'total_dosis',
													sum(`HENG_40`+`HENG_45`+`HENG_50`+`HENG_55`+`HENG_60`+`HENG_65`+`HENG_70`+`HENG_80`+`HENG_75`+`MENG_40`+`MENG_45`+`MENG_50`+`MENG_55`+`MENG_60`+`MENG_65`+`MENG_70`+`MENG_80`+`MENG_75`+`MEENG_18`+`MEENG_25`+`MEENG_30`+`MEENG_35`+`MEENG_40`+`MEENG_45`+`MEENG_50`+`MEENG_55`) AS 'total_ENG',
													sum(`HEG_40`+`HEG_45`+`HEG_50`+`HEG_55`+`HEG_60`+`HEG_65`+`HEG_70`+`HEG_75`+`HEG_80`+`MEG_40`+`MEG_45`+`MEG_50`+`MEG_55`+`MEG_60`+`MEG_65`+`MEG_70`+`MEG_80`+`MEG_75`+`MEEG_18`+`MEEG_25`+`MEEG_30`+`MEEG_35`+`MEEG_40`+`MEEG_45`+`MEEG_50`+`MEEG_55`) AS 'total_EG',
													sum(`merma`) AS 'total_mermas'
										from `det_vac_40a49`
										where `det_vac_40a49`.`id_det_vac_40a49`= '$id' and `det_vac_40a49`.`fecha_reporte`='$fechar'";
								$sth = $this->dbh->query($sql);
								return $sth->fetchAll(PDO::FETCH_OBJ);
						}
					}


}

$db = new Usuario();
if(strlen($function)>0){
	echo $db->$function();
}
