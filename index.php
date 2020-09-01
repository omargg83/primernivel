<?php
	require_once("db_.php");
	if(!isset($_SESSION['idusuario']) and strlen($_SESSION['idusuario'])==0){
		header("location: login/");
	}
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>IPSI - Admin</title>
        <link href="style.css" rel="stylesheet" />

        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/js/all.min.js" crossorigin="anonymous"></script>

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
                    <div class="sb-sidenav-menu">
                        <div class="nav">

													<div class="sb-sidenav-menu-heading">

														<div style="width: 36%;display: inline-block;"> <img style="vertical-align: bottom;border-radius: 10px; max-width: 50px;" src="<?php echo $_SESSION['foto']; ?>"> </div>
														<div style="padding-left: 5px;width: 46%;display: inline-block;color:#fff;">  <strong><?php echo $_SESSION['nombrec']; ?> </strong> <br><?php echo $_SESSION['tipo_user']; ?></div>

													</div>


														<?php
															if($_SESSION['tipo_user'] == "Paciente"){
																$sql="SELECT * from terapias_per left outer join terapias on terapias.id=terapias_per.idterapia where terapias_per.idpaciente=:id";
															  $sth_te = $db->dbh->prepare($sql);
															  $sth_te->bindValue(":id",$_SESSION['idusuario']);
															  $sth_te->execute();

															  foreach($sth_te->fetchAll(PDO::FETCH_OBJ) as $terapia){
																	echo "<a class='nav-link collapsed' href='#' data-toggle='collapse' data-target='#d".$terapia->id."' aria-expanded='false' aria-controls='demo1'>";
																		echo "<div class='sb-nav-link-icon'><i class='fas fa-columns'></i></div>";
																		echo $terapia->nombre;
																		echo "<div class='sb-sidenav-collapse-arrow'><i class='fas fa-angle-down'></i></div>";
																	echo "</a>";

																	$sql="SELECT * from track_per left outer join track on track.id=track_per.idtrack where track_per.idpaciente=:id and track.idterapia=:idterapia order by track.inicial desc";
																	$sth = $db->dbh->prepare($sql);
																	$sth->bindValue(":id",$_SESSION['idusuario']);
																	$sth->bindValue(":idterapia",$terapia->id);
																	$sth->execute();
																	foreach($sth->fetchAll(PDO::FETCH_OBJ) as $track){
																		echo "<div class='collapse' id='d".$terapia->id."' aria-labelledby='headingOne' data-parent='#sidenavAccordion'>";
																			echo "<nav class='sb-sidenav-menu-nested nav'>";
																				echo "<a class='nav-link' is='menu-link' href='#a_respuesta/modulos?idtrack=$track->id' is='menu-link'>$track->nombre</a>";
																			echo "</nav>";
																		echo "</div>";
																	}
																}
														?>
															<!--
															<a class="nav-link" is='menu-link' href='#a_usuarios/index' title='Usuarios'><div class="sb-nav-link-icon"><i class="fas fa-user-alt"></i></div>Expediente</a>
															<a class="nav-link" is='menu-link' href='#a_usuarios/index' title='Usuarios'><div class="sb-nav-link-icon"><i class="fas fa-user-alt"></i></div>Relaciones</a>
															<a class="nav-link" is='menu-link' href='#a_usuarios/index' title='Usuarios'><div class="sb-nav-link-icon"><i class="fas fa-user-alt"></i></div>Agenda</a>
														-->
															<a class="nav-link" is='menu-link' href='#a_paciente_perfil/index' title='Usuarios'><div class="sb-nav-link-icon"><i class="fas fa-user-alt"></i></div>Mi cuenta</a>
														<?php
															}
															if($_SESSION['tipo_user'] == "Psicólogo" and $_SESSION['nivel']==2){
														?>
																<a class="nav-link" is='menu-link' href='#a_pacientes/index' title='Pacientes'><div class="sb-nav-link-icon"><i class='far fa-file-alt'></i></div>Mis Pacientes</a>
																<a class="nav-link" is='menu-link' href='#a_usuarios/index' title='Usuarios'><div class="sb-nav-link-icon"><i class='far fa-file-alt'></i></div>Agenda</a>
																<a class="nav-link" is='menu-link' href='#a_usuarios/editar_p' title='Usuarios'><div class="sb-nav-link-icon"><i class="fas fa-user-alt"></i></div>Mi cuenta</a>

																<div class="sb-sidenav-menu-heading">Terapias</div>
																<a class="nav-link" is='menu-link' href='#a_actividades/index' title='Actividades'><div class="sb-nav-link-icon"><i class='far fa-file-alt'></i></div>Catalogo Terapias</a>

														<?php
															}
															if($_SESSION['tipo_user'] == "Psicólogo" and $_SESSION['nivel']==1){
														?>
															<a class="nav-link" is='menu-link' href='#a_pacientes/index' title='Pacientes'><div class="sb-nav-link-icon"><i class="far fa-file-alt"></i></div>Pacientes</a>
															<!-- <a class="nav-link" is='menu-link' href='#a_usuarios/editar_p' title='Usuarios'><div class="sb-nav-link-icon"><i class="fas fa-user-alt"></i></div>Mi Cuenta</a>-->
															<a class="nav-link" is='menu-link' href='#a_usuarios/index' title='Usuarios'><div class="sb-nav-link-icon"><i class="fas fa-user-alt"></i></div>Cuentas</a>
															<div class="sb-sidenav-menu-heading">Terapias</div>
															<a class="nav-link" is='menu-link' href='#a_actividades/index' title='Actividades'><div class="sb-nav-link-icon"><i class='far fa-file-alt'></i></div>Catalogo Terapias</a>
														<?php
															}
														?>


                        </div>
                    </div>
                    <div class="sb-sidenav-footer">
                        <a onclick='salir()' href='#' class="btn btn-block"><i class="fas fa-sign-out-alt"></i>Salir</a>
                    </div>
                </nav>
            </div>
            <div id="layoutSidenav_content">
            	  <!-- Topbar -->
        <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

          <!-- Sidebar Toggle (Topbar) -->
          <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
            <i class="fa fa-bars"></i>
          </button>

          <!-- Topbar Mensaje bienvenida-->
        <p class="bienvenida"> Hola, <?php echo $_SESSION['nombrec']; ?>, Que bueno tenerte de vuelta </p>

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
                <i class="fas fa-bell fa-fw"></i>
                <!-- Counter - Alerts -->
                <span class="badge badge-danger badge-counter">3+</span>
              </a>
              <!-- Dropdown - Alerts
              <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="alertsDropdown">
                <h6 class="dropdown-header">
                  Alerts Center
                </h6>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="mr-3">
                    <div class="icon-circle bg-primary">
                      <i class="fas fa-file-alt text-white"></i>
                    </div>
                  </div>
                  <div>
                    <div class="small text-gray-500">December 12, 2019</div>
                    <span class="font-weight-bold">A new monthly report is ready to download!</span>
                  </div>
                </a>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="mr-3">
                    <div class="icon-circle bg-success">
                      <i class="fas fa-donate text-white"></i>
                    </div>
                  </div>
                  <div>
                    <div class="small text-gray-500">December 7, 2019</div>
                    $290.29 has been deposited into your account!
                  </div>
                </a>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="mr-3">
                    <div class="icon-circle bg-warning">
                      <i class="fas fa-exclamation-triangle text-white"></i>
                    </div>
                  </div>
                  <div>
                    <div class="small text-gray-500">December 2, 2019</div>
                    Spending Alert: We've noticed unusually high spending for your account.
                  </div>
                </a>
                <a class="dropdown-item text-center small text-gray-500" href="#">Show All Alerts</a>
              </div>
            </li>
						-->
            <!-- Nav Item - User Information -->
            <li class="nav-item dropdown no-arrow">
              <span class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
               <span class="mr-2 d-none d-lg-inline text-gray-600 small">
								 <?php
									 if($_SESSION['tipo_user'] == "Psicólogo"){
										 echo "<a class='topcuenta' is='menu-link' href='#a_usuarios/editar_p'>Mi cuenta</a></span>";
									 }
									 else{
										 echo "<a class='topcuenta' is='menu-link' href='#a_paciente_perfil/index'>Mi cuenta</a></span>";
									 }
								 ?>


								<span class="mr-2 d-none d-lg-inline text-gray-600 small">|</span>
								<span class="mr-2 d-none d-lg-inline text-gray-600 small"><a onclick='salir()' href="#"class="topcuenta">Salir</a></span>
                <img class="img-profile rounded-circle" src="<?php echo $_SESSION['foto']; ?>">
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

        <!-- WYSWYG   -->
        <link href="librerias15/summernote8.12/summernote-lite.css" rel="stylesheet" type="text/css">
        <script src="librerias15/summernote8.12/summernote-lite.js"></script>
        <script src="librerias15/summernote8.12/lang/summernote-es-ES.js"></script>

        <!--   Alertas   -->
        <script src="librerias15/swal/dist/sweetalert2.min.js"></script>

        <!--   para imprimir   -->
        <script src="librerias15/VentanaCentrada.js" type="text/javascript"></script>

        <!--   iconos   -->
        <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>

        <!--   Boostrap   -->
        <link href="https://fonts.googleapis.com/css2?family=Baloo+Paaji+2&display=swap" rel="stylesheet">

        <script src="https://cdn.jsdelivr.net/npm/uikit@3.5.5/dist/js/uikit.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/uikit@3.5.5/dist/js/uikit-icons.min.js"></script>

        <script src="librerias15/js/bootstrap.js"></script>

        <!--   Propios   -->
				<script src="vainilla.js"></script>
        <script src="sagyc.js"></script>
    </body>
</html>
