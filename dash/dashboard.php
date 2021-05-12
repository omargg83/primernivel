<?php
  require_once("../db_.php");
  echo "<center>";

 ?>
 <div class="container">
   <IMG SRC='images/encabezado.png' style='margin-top:12px; max-width:75%;'>
     <br><br>
 	<div class='card'>
 		<div class='card-header text-white bg-dark'>
		    SISTEMA PARA CONSULTA DE INFORMACIÓN INSTITUCIONAL DE PRIMER NIVEL DE ATENCIÓN
 		</div>
 		<div class='card-body'>
      <h3>Bienvenido <strong><?php echo $_SESSION['nombrec']; ?> </strong>, por favor no olvide dar clic en <b> <i class='fas fa-sign-out-alt'></i> Salir</b> para terminar su sesión en la plataforma. </h3>
    </div>
    <div class='card-footer'>
			<div class='row'>
				<div class="col-12">
					<label style="font-size:80%;">Cualquier cuestión relacionada con la plataforma, favor de comunicarse con el L.S.C. Rubén Ávila Téllez de la Dirección de Primer Nivel de Atención</label>
				</div>
			</div>
		</div>
  </div>
</div>
</center>
