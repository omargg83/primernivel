
<div class="sidebar-header" id='menu'>
    <?php
			echo "<div class='row'>";
	      echo "<div class='col-4 p-3'>";
	        echo "<img src='".$_SESSION['foto']."' class='img-thumbnail' width='200px'>";
				echo "</div>";
				echo "<div class='col-8 p-3'>";
	        echo "<h4>".$_SESSION['nombre']."</h4>";
	        echo "<h5>".$_SESSION['tipo_user']."</h5>";
	      echo "</div>";
			echo "</div>";
    ?>
</div>

<ul class="list-unstyled components p-3">
    <li class='active'>
        <a href="#"><i class="fas fa-home"></i> Inicio</a>
    </li>
		<?php
			if($_SESSION['admin']==1){
				echo "<li>";
						echo "<a href='#a_clientes/index' title='Pacientes'><i class='fas fa-user-tag'></i>Mis Pacientes</a>";
				echo "</li>";

				echo "<li>";
						echo "<a href='#a_terapia/index' title='Terapias'><i class='far fa-file-alt'></i>Terapias</a>";
				echo "</li>";

				echo "<li>";
						echo "<a href='#a_track/index' title='Track'><i class='far fa-file-alt'></i>Tracks</a>";
				echo "</li>";

				echo "<li>";
						echo "<a href='#a_actividades/index' is='menu-link' title='Actividades'><i class='far fa-file-alt'></i>Actividades</a>";
				echo "</li>";

				if($_SESSION['nivel']==1){
					echo "<li >";
							echo "<a href='#homeSubmenu' data-toggle='collapse' aria-expanded='false' class='dropdown-toggle'><i class='fas fa-user-shield'></i> Administrador</a>";
							echo "<ul class='collapse list-unstyled' id='homeSubmenu'>";
								echo "<li>";
										echo "<a href='#a_usuarios/index' title='Usuarios'><i class='fas fa-users'></i>Cuentas</a>";
								echo "</li>";
								echo "<li>";
										echo "<a href='#a_clientes/index' title='Pacientes'><i class='fas fa-user-tag'></i>Pacientes</a>";
								echo "</li>";
								echo "<li>";
										echo "<a href='#a_citas/index' title='Pacientes'><i class='fas fa-user-tag'></i>Citas</a>";
								echo "</li>";
							echo "</ul>";
					echo "</li>";
				}
			}
			else{
				echo "<li>";
						echo "<a href='#a_terapias/index' title='Pacientes'><i class='fas fa-user-tag'></i>Actividades</a>";
				echo "</li>";

				echo "<li >";
						echo "<a href='#individual' data-toggle='collapse' aria-expanded='false' class='dropdown-toggle'><i class='fas fa-user-shield'></i> T.INDIVIDUAL</a>";
						echo "<ul class='collapse list-unstyled' id='individual'>";
							echo "<li>";
									echo "<a href='#a_usuarios/index' title='Usuarios'><i class='fas fa-users'></i>Cuentas</a>";
							echo "</li>";
							echo "<li>";
									echo "<a href='#a_clientes/index' title='Pacientes'><i class='fas fa-user-tag'></i>Pacientes</a>";
							echo "</li>";
							echo "<li>";
									echo "<a href='#a_citas/index' title='Pacientes'><i class='fas fa-user-tag'></i>Citas</a>";
							echo "</li>";
						echo "</ul>";
				echo "</li>";

				echo "<li >";
						echo "<a href='#pareja' data-toggle='collapse' aria-expanded='false' class='dropdown-toggle'><i class='fas fa-user-shield'></i> T.PAREJA</a>";
						echo "<ul class='collapse list-unstyled' id='pareja'>";
							echo "<li>";
									echo "<a href='#a_usuarios/index' title='Usuarios'><i class='fas fa-users'></i>Cuentas</a>";
							echo "</li>";
							echo "<li>";
									echo "<a href='#a_clientes/index' title='Pacientes'><i class='fas fa-user-tag'></i>Pacientes</a>";
							echo "</li>";
							echo "<li>";
									echo "<a href='#a_citas/index' title='Pacientes'><i class='fas fa-user-tag'></i>Citas</a>";
							echo "</li>";
						echo "</ul>";
				echo "</li>";

				echo "<li >";
						echo "<a href='#infantil' data-toggle='collapse' aria-expanded='false' class='dropdown-toggle'><i class='fas fa-user-shield'></i> T.INFANTIL</a>";
						echo "<ul class='collapse list-unstyled' id='infantil'>";
							echo "<li>";
									echo "<a href='#a_usuarios/index' title='Usuarios'><i class='fas fa-users'></i>Cuentas</a>";
							echo "</li>";
							echo "<li>";
									echo "<a href='#a_clientes/index' title='Pacientes'><i class='fas fa-user-tag'></i>Pacientes</a>";
							echo "</li>";
							echo "<li>";
									echo "<a href='#a_citas/index' title='Pacientes'><i class='fas fa-user-tag'></i>Citas</a>";
							echo "</li>";
						echo "</ul>";
				echo "</li>";

				echo "<li>";
						echo "<a href='#a_clientes/index' title='Pacientes'><i class='fas fa-user-tag'></i>Mi cuenta</a>";
				echo "</li>";
			}
		?>

</ul>

<ul class="list-unstyled CTAs">
    <li>
        <a onclick='salir()' href='#' class="btn btn-warning btn-sm"><i class="fas fa-sign-out-alt"></i>Salir</a>
    </li>
</ul>
