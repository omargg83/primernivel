<?php
require_once("../control_db.php");


if($_SESSION['des']==1 and strlen($function)==0)
{
	echo "<div class='alert alert-primary' role='alert'>";
	$arrayx=explode('/', $_SERVER['SCRIPT_NAME']);
	echo print_r($arrayx);
	echo "</div>";
}

class Regio2019 extends ipsi{

	public $nivel_personal;
	public $nivel_captura;

	public function __construct(){
		parent::__construct();
	}

	public function buscar_localidad()
	{
		$buscar=$_REQUEST['buscar'];
		$opcion=$_REQUEST['opcion_buscar'];
    echo $buscar;
		echo $opcion;
		if($opcion==1){
			//Busca todos los centros de salud de la SSH (id_inst=12) con tipo de consulta externa (id_tipoesta=1)
			$sql="select `cat_jurisdicciones`.`nombre_juris`, `cat_municipios`.`nombre_mpio`,`cat_clues`.`clv_clues`, `cat_clues`.`nombre_clues`
						from `cat_clues`
							left join `cat_jurisdicciones` on `cat_clues`.`id_juris` = `cat_jurisdicciones`.`id_juris`
							left join `cat_municipios` on `cat_clues`.`id_mpio` = `cat_municipios`.`id_mpio`
						where cat_clues.nombre_clues like '%.$buscar.%' and cat_clues.id_tipoesta=1 and cat_clues.id_inst=12
						order by cat_clues.id_juris asc;";
		}
		else if($opcion==2){
			//busca todas las localidades incluyendo AGEBs
			$sql="select cat_regio2019.id_catregio2019, cat_regio2019.nombre_localidad, cat_jurisdicciones.nombre_juris, cat_municipios.nombre_mpio
						from cat_regio2019
						left join cat_jurisdicciones on cat_regio2019.id_juris_cs = cat_jurisdicciones.id_juris
						left join cat_municipios on cat_regio2019.id_mpio_cs = cat_municipios.id_mpio
						where cat_regio2019.nombre_localidad like '%.$buscar.%'
						order by cat_regio2019.nombre_localidad asc;";
		}
		else if($opcion==3){
			//busca todas las localidades SIN AGEBs
			$sql="select `cat_regio2019`.`id_catregio2019`,`cat_regio2019`.`nombre_localidad`,`cat_jurisdicciones`.`nombre_juris`, `cat_municipios`.`nombre_mpio`
						from `cat_regio2019`
							left join `cat_jurisdicciones` on `cat_regio2019`.`id_juris_cs` = `cat_jurisdicciones`.`id_juris`
							left join `cat_municipios` on `cat_regio2019`.`id_mpio_cs` = `cat_municipios`.`id_mpio`
						where cat_regio2019.nombre_localidad like '%.$buscar.%'
						and cat_regio2019.nombre_localidad not in (select `cat_regio2019`.`nombre_localidad`
						                                           from `cat_regio2019`
																										   where  cat_regio2019.nombre_localidad like '%ageb%')
						order by cat_regio2019.nombre_localidad asc;";
		}
		$sth = $this->dbh->query($sql);
		return $sth->fetchAll(PDO::FETCH_OBJ);
	}

  public function listado_loca()
	{
		$sql="select cat_regio2019.id_catregio2019,
					cat_regio2019.nombre_localidad AS 'nom_loca',
					cat_regio2019.id_clues,
					CONCAT(cat_jurisdicciones.clv_juris,' ',cat_jurisdicciones.nombre_juris) AS 'jur',
					CONCAT(cat_municipios.clv_mpio,' ',cat_municipios.nombre_mpio) AS 'mpio',
					concat(cat_clues.clv_clues,' ',cat_clues.nombre_clues) AS 'unidad', cat_instituciones.clv_inst AS 'institucion',
					cat_regio2019.pob_hom_derhab+cat_regio2019.pob_hom_noderhab+cat_regio2019.pob_muj_derhab+cat_regio2019.pob_muj_noderhab AS 'pob_total'
					FROM cat_regio2019
					left join cat_jurisdicciones on cat_regio2019.id_juris_loc = cat_jurisdicciones.id_juris
					left join cat_municipios on cat_regio2019.id_mpio_loc = cat_municipios.id_mpio
					left join cat_clues on cat_regio2019.id_clues = cat_clues.id_clues
					left join cat_instituciones on cat_clues.id_inst=cat_instituciones.id_inst
					order by cat_regio2019.id_catregio2019 asc;";
		$sth = $this->dbh->query($sql);
		return $sth->fetchAll(PDO::FETCH_OBJ);
	}

	public function detalles_loc($id)
	{
		$sql="select cat_regio2019.id_catregio2019,
							cat_regio2019.nombre_localidad AS 'nom_loca',
							cat_regio2019.clv_jurloc AS 'clv_jurloc',
						    CONCAT(cat_jurisdicciones.clv_juris,' ',cat_jurisdicciones.nombre_juris) AS 'jur_loc',
							CONCAT(cat_municipios.clv_mpio,' ',cat_municipios.nombre_mpio) AS 'mpio_loc',
							cat_clues.clv_clues AS 'clues_unidad',
						    cat_clues.nombre_clues AS 'nom_unidad',
						    CONCAT(cat_tipologia.clv_tipologia,' - ',cat_tipologia.nombre_tipologia) AS 'tipologia',
						    cat_instituciones.clv_inst AS 'institucion',
							cat_regio2019.pob_hom_derhab+cat_regio2019.pob_hom_noderhab+cat_regio2019.pob_muj_derhab+cat_regio2019.pob_muj_noderhab AS 'pob_total',
						    cat_regio2019.pob_hom_derhab+cat_regio2019.pob_hom_noderhab AS 'hom_total',
						    cat_regio2019.pob_muj_derhab+cat_regio2019.pob_muj_noderhab AS 'muj_total',
						    cat_regio2019.pob_hom_derhab+cat_regio2019.pob_muj_derhab AS 'pob_derhab',
						    cat_regio2019.pob_hom_derhab AS 'hom_derhab',
						    cat_regio2019.pob_muj_derhab AS 'muj_derhab',
						    cat_regio2019.pob_hom_noderhab+cat_regio2019.pob_muj_noderhab AS 'pob_noderhab',
						    cat_regio2019.pob_hom_noderhab AS 'hom_noderhab',
						    cat_regio2019.pob_muj_noderhab AS 'muj_noderhab',
						    cat_regio2019.pob_ssh AS 'pob_ssh',
						    cat_regio2019.pob_imssbienestar AS 'pob_imssbienestar',
							cat_regio2019.med_trans AS 'med_trans',
							cat_regio2019.tipo_cam AS 'tipo_cam',
							cat_regio2019.tiempo_loc AS 'tiempo_loc',
							cat_regio2019.distancia AS 'distancia',
							cat_regio2019.aux_salud AS 'aux_salud',
							cat_regio2019.casa_salud AS 'casa_salud',
							cat_regio2019.parteras AS 'parteras',
							cat_regio2019.grad_margina AS 'grad_margina',
							cat_regio2019.localidad_ind AS 'localidad_ind'
						FROM cat_regio2019
								left join cat_jurisdicciones on cat_regio2019.id_juris_loc = cat_jurisdicciones.id_juris
								left join cat_municipios on cat_regio2019.id_mpio_loc = cat_municipios.id_mpio
								left join cat_clues on cat_regio2019.id_clues = cat_clues.id_clues
								left join cat_instituciones on cat_clues.id_inst=cat_instituciones.id_inst
								left join cat_tipologia on cat_clues.id_tipologia=cat_tipologia.id_tipologia
						WHERE cat_regio2019.id_catregio2019=".$id.";";
		$sth = $this->dbh->query($sql);
		return $sth->fetchAll(PDO::FETCH_OBJ);
	}

	public function detalles_loc0($id)
	{
		$sql="select cat_regio2019.id_catregio2019,
						  CONCAT(cat_jurisdicciones.clv_juris,' ',cat_jurisdicciones.nombre_juris) AS 'jur_cs',
							CONCAT(cat_municipios.clv_mpio,' ',cat_municipios.nombre_mpio) AS 'mpio_cs'
						FROM cat_regio2019
							left join cat_jurisdicciones on cat_regio2019.id_juris_cs = cat_jurisdicciones.id_juris
							left join cat_municipios on cat_regio2019.id_mpio_cs = cat_municipios.id_mpio
						WHERE cat_regio2019.id_catregio2019=".$id.";";
		$sth = $this->dbh->query($sql);
		return $sth->fetchAll(PDO::FETCH_OBJ);
	}

}

$db = new Regio2019();
if(strlen($function)>0)
  {
	 echo $db->$function();
  }
