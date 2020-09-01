<?php
require_once("control_db.php");

class dashboard extends ipsi{
	public function __construct(){
		parent::__construct();
		$this->pac="a_archivos/clientes/";
	}
}

$db = new dashboard();
