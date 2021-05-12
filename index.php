<?php
	require_once("db_.php");

	 $fechaGuardada = $_SESSION["ultimoAcceso"];
	 $ahora = date("Y-M-d H:i:s");
	 $tiempo_transcurrido = (strtotime($ahora)-strtotime($fechaGuardada));
		if($tiempo_transcurrido >= 600) {
		//si pasaron 10 minutos o más
		 session_destroy(); // destruyo la sesión
		 header("location: login/"); //envío al usuario a la pag. de autenticación
		 //sino, actualizo la fecha de la sesión
	 }else {
	 $_SESSION["ultimoAcceso"] = $ahora;
 }
 if(!isset($_SESSION['idusuario']) and strlen($_SESSION['idusuario'])==0 and $_SESSION['nivel_usuario']==0){
//	if(!isset($_SESSION['idusuario']) and strlen($_SESSION['idusuario'])==0){
		header("location: login/");
	}
?>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="SISTEMA PARA CONSULTA DE INFORMACIÓN INSTITUCIONAL DE PRIMER NIVEL DE ATENCIÓN" />
        <meta name="author" content="DPNA-SSH" />
				<?php
				if ($_SESSION['nivel_usuario']==1){echo "<title>ADMIN - Sistema para el registro de información institucional de Primer Nivel de Atención</title>";}
				else{echo "<title>Sistema para el registro de información institucional de Primer Nivel de Atención</title>";}
				?>
        <link href="style.css" rel="stylesheet" />

        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/js/all.min.js" crossorigin="anonymous"></script>
				<link rel="shortcut icon" href="img/favicon2.ico">
        <link rel="stylesheet" href="librerias15/load/css-loader.css">
        <link rel="stylesheet" href="librerias15/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.css" />
        <link rel="stylesheet" href="librerias15/swal/dist/sweetalert2.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/uikit@3.5.5/dist/css/uikit.min.css" />
		  <!-- Custom fonts for this template-->
		  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
		  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

		  <!-- Custom styles for this template-->
		  <link href="css/sb-admin-2.min.css" rel="stylesheet">
			<link href="ipsi.css" rel="stylesheet">

    </head>
    <body class="sb-nav-fixed">

        <div id="layoutSidenav">


            <div id="layoutSidenav_nav">
							<nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">

									<div class="sidenav__close-icon" style="text-align: right;padding-right: 10px;">
							      <i class="fas fa-times sidenav__brand-close"></i>
							    </div>



                    <div class="sb-sidenav-menu">
                        <div class="nav">

													<div class="sb-sidenav-menu-heading">
														<div style="padding-left: 5px;width: 96%;display: inline-block;color:#fff;">  <strong><?php echo $_SESSION['nombrec']; ?> </strong></div>
													</div>
										<?php
										if ($_SESSION['nivel_usuario']==1){
											  echo "<a class='nav-link' is='menu-link' href='#a_usuarios/index' title='Usuarios'><div class='sb-nav-link-icon'><i class='fas fa-user-alt'></i></div>Control Usuarios</a>";
										}
										if ( ($_SESSION['nivel_usuario']==1)||($_SESSION['nivel_usuario']==2) ){
												echo"<a class='nav-link' is='menu-link' href='#a_datosvacuna/index' title='Configuración de remesas, sedes, procesos de vacunación contra COVID-19'><div class='sb-nav-link-icon'><i class='fas fa-cog'></i></div>Datos vacuna COVID-19</a>";
										}
										/*if (($_SESSION['nivel_usuario']==1)||($_SESSION['nivel_usuario']==2)||($_SESSION['nivel_usuario']==3)){
											  echo "<a class='nav-link' is='menu-link' href='#a_regio2019/index' title='Regionalización Operativa 2019'><div class='sb-nav-link-icon'><i class='fas fa-sitemap'></i></div>ERO 2019</a>";
										}
										if ($_SESSION['nivel_usuario']==0){
												echo "<a class='nav-link' is='menu-link' href='#a_pruebas/index' title='Pruebas Rápidas COVID-19'><div class='sb-nav-link-icon'><i class='fas fa-thermometer'></i></div>Pruebas Rápidas</a>";
										}*/
										if (($_SESSION['nivel_usuario']==1)||($_SESSION['nivel_usuario']==2)||($_SESSION['nivel_usuario']==3)){
												echo"<a class='nav-link' is='menu-link' href='#a_consul_vac_covid/index' title='Reportes de la vacunación contra COVID-19'><div class='sb-nav-link-icon'><i class='fas fa-syringe'></i></div>Reportes vacunación COVID-19</a>";
										}
										?>
                        </div>
                    </div>
                    <div class="sb-sidenav-footer">
                        <a onclick='salir()' href='#' class="btn btn-block" style="color:white;"><i class="fas fa-sign-out-alt"></i> Salir</a>
                    </div>
                </nav>
            </div>
            <div id="layoutSidenav_content">
            	  <!-- Topbar -->
        <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

					<div class="menu-icon btn btn-link d-md-none rounded-circle mr-3">
					 <i class="fas fa-bars header__menu"></i>
				 </div>

          <!-- Topbar Mensaje bienvenida-->
        <p class="bienvenida">SISTEMA PARA EL REGISTRO DE INFORMACIÓN INSTITUCIONAL DE PRIMER NIVEL DE ATENCIÓN</p>
				<!--p class="bienvenida"> Hola, <?php echo $_SESSION['nombrec']; ?>, Que bueno tenerte de vuelta </p-->

          <!-- Topbar Navbar -->
          <ul class="navbar-nav ml-auto">


              <!-- Dropdown - Messages -->
              <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in" aria-labelledby="searchDropdown">
                <form class="form-inline mr-auto w-100 navbar-search">
                  <div class="input-group">
                    <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
                    <div class="input-group-append">
                      <button class="btn btn-primary" type="button">
                        <i class="fas fa-search fa-sm"></i>
                      </button>
                    </div>
                  </div>
                </form>
              </div>
            </li>

            <!-- Nav Item - Alerts -->
            <li class="nav-item dropdown no-arrow mx-1">
              <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i style="color:black; font-size:150%;" class="fas fa-home" ></i>
                <!-- Counter - Alerts -->
                <span class="badge badge-danger badge-counter"></span>
              </a>

            <!-- Nav Item - User Information -->
            <li class="nav-item dropdown no-arrow">
              <span class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
               <span class="mr-2 d-none d-lg-inline text-gray-600 small"><?php echo $_SESSION['nombrec'];?></span>
								 <?php

										 //echo "<a class='topcuenta' is='menu-link' href='#a_usuarios/editar' v_idusuario='".$_SESSION['idusuario']."'>Mi cuenta</a></span>";

								 ?>


								<span class="mr-2 d-none d-lg-inline text-gray-600 small">|</span>
								<span class="mr-2 d-none d-lg-inline text-gray-600 small"><a onclick='salir()' href="#" class="topcuenta"> <i class='fas fa-sign-out-alt'></i> Salir</a></span>
                <!--img class="img-profile rounded-circle" src="<?php echo $_SESSION['foto']; ?>"-->
              </span>
            </li>
          </ul>
        </nav>
                <main>
										<!---DIV PRINCIPAL--->
                    <div id="contenido" class="container-fluid">
                    </div>
                </main>
            </div>
        </div>

        <div class="loader loader-default is-active" id='cargando_div' data-text="Cargando"></div>

        <div class="modal animated fadeInDown" tabindex="-1" role="dialog" id="myModal" data-keyboard="false" data-backdrop="static">
          <div class="modal-dialog modal-dialog-centered  modal-lg" role="document" id='modal_dispo'>
            <div class="modal-content" id='modal_form'>

            </div>
          </div>
        </div>

        <script src="https://code.jquery.com/jquery-3.5.1.min.js" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js" integrity="sha256-T0Vest3yCU7pafRw9r+settMBX6JkKN06dqBnpQ8d30=" crossorigin="anonymous"></script>

        <link rel="stylesheet" href="librerias15/jqueryconfirm/css/jquery-confirm.css">
        <script src="librerias15/jqueryconfirm/js/jquery-confirm.js"></script>

        <!-- Animation library for notifications   -->
        <link href="librerias15/animate.css" rel="stylesheet"/>

        <!--   Alertas   -->
        <script src="librerias15/swal/dist/sweetalert2.min.js"></script>

        <!--   para imprimir   -->
        <script src="librerias15/VentanaCentrada.js" type="text/javascript"></script>

        <!--   iconos   -->
        <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>

        <!--   Boostrap   -->
        <link href="https://fonts.googleapis.com/css2?family=Baloo+Paaji+2&display=swap" rel="stylesheet">

        <script src="librerias15/js/bootstrap.js"></script>

        <!--   Propios   -->
				<script src="vainilla.js"></script>
        <script src="sagyc.js"></script>
    </body>
</html>
