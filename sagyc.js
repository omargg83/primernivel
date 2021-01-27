/*
	Libreria Propia V.2
	Ruben Omar García
*/

	$(document).on('click',"[is='menu-link']",function(e){
		e.preventDefault();

		let formData = new FormData();
		let hash=e.currentTarget.hash.slice(1);
		let arrayDeCadenas = hash.split("?");
		let nhash=arrayDeCadenas[0];
		if(arrayDeCadenas.length>1){
			let query=arrayDeCadenas[1];
			var vars = query.split("&");
			for (var i=0; i < vars.length; i++) {
			var pair = vars[i].split("=");
				formData.append(pair[0],pair[1]);
			}
		}

		for(let contar=0;contar<e.currentTarget.attributes.length; contar++){
			let arrayDeCadenas = e.currentTarget.attributes[contar].name.split("_");
			if(arrayDeCadenas.length>1){
				formData.append(arrayDeCadenas[1], e.currentTarget.attributes[contar].value);
			}
		}

		let datos = new Object();
		datos.des=nhash+".php";
		datos.dix="contenido";
		redirige_div(formData,datos);
	});
	$(document).on('click',"[is*='li-link']",function(e){
		e.preventDefault();
		proceso_db(e);
	});
	$(document).on('click',"[is*='b-link']",function(e){
		e.preventDefault();
		proceso_db(e);
	});
	$(document).on('click',"[is*='a-link']",function(e){
		e.preventDefault();
		proceso_db(e);
	});
	$(document).on('submit',"[is*='f-submit']",function(e){
		e.preventDefault();
		 //////////id del formulario
		 let id=e.currentTarget.attributes.id.nodeValue;
		 let elemento = document.getElementById(id);

		 /////////API que procesa el form
		 let db;
		 (elemento.attributes.db !== undefined) ? db=elemento.attributes.db.nodeValue : db="";

		 /////////funcion del api que procesa el form
		 let fun;
		 (elemento.attributes.fun !== undefined) ? fun=elemento.attributes.fun.nodeValue : fun="";

		 /////////Div de destino despues de guardar
		 let dix;
		 (elemento.attributes.dix !== undefined) ? dix=elemento.attributes.dix.nodeValue : dix="trabajo";

		 /////////div destino despues de guardar
		 let des;
		 (elemento.attributes.des !== undefined) ? des=elemento.attributes.des.nodeValue : des="";

		 let desid;
		 (elemento.attributes.desid !== undefined) ? desid=elemento.attributes.desid.nodeValue : desid="";

		 ////////FORM pertenece a ventanamodal
		 let cmodal;
		 (elemento.attributes.cmodal !== undefined) ? cmodal=elemento.attributes.cmodal.nodeValue : cmodal="";

		 let datos = new Object();
		 datos.des=des+".php";
		 datos.desid=desid;
		 datos.db=db+".php";
		 datos.dix=dix;
		 datos.fun=fun;
		 //datos.tp=tp;
		 //datos.iddest=iddest;
		 //datos.omodal=omodal;
		 datos.cmodal=cmodal;
		 var formDestino = new FormData();

		 var formData = new FormData(elemento);
		 formData.append("function", datos.fun);

		 /////////esto es para todas las variables
		 let variables = new Object();
		 for(let contar=0;contar<elemento.attributes.length; contar++){
			 let arrayDeCadenas = elemento.attributes[contar].name.split("_");
			 if(arrayDeCadenas.length>1){
				 formData.append(arrayDeCadenas[1], elemento.attributes[contar].value);
				 formDestino.append(arrayDeCadenas[1], elemento.attributes[contar].value);
			 }
		 }

		 if(db.length>4){
			 Swal.fire({
				 title: '¿Desea procesar los cambios realizados?',
				 showCancelButton: true,
				 confirmButtonColor: '#3085d6',
				 cancelButtonColor: '#d33',
				 confirmButtonText: 'Guardar'
			 }).then((result) => {
				 if (result.value) {

					 let xhr = new XMLHttpRequest();
					 xhr.open('POST',datos.db);
					 xhr.addEventListener('load',(data)=>{
						 if (!isJSON(data.target.response)){
							 console.log(data.target.response);
							 Swal.fire({
								 type: 'error',
								 title: "Error favor de verificar",
								 showConfirmButton: false,
								 timer: 1000
							 });
							 return;
						 }

						 var respon = JSON.parse(data.target.response);
						 if (respon.error==0){
							 if (datos.desid !== undefined && datos.desid.length>0) {
								 document.getElementById(datos.desid).value=respon.id1;
								 formDestino.append(datos.desid, respon.id1);
							 }
							 if (datos.des !== undefined && datos.des.length>4) {
								 redirige_div(formDestino,datos);
							 }
							 if(datos.cmodal==1){
								 $('#myModal').modal('hide');
							 }

							 Swal.fire({
								 type: 'success',
								 title: "Se guardó correctamente ",
								 showConfirmButton: false,
								 timer: 1000
							 });
						 }
						 else{
							 Swal.fire({
								 type: 'info',
								 title: respon.terror,
								 showConfirmButton: false,
								 timer: 1000
							 });
						 }
					 });
					 xhr.onerror =  ()=>{
						 console.log("error");
					 };
					 xhr.send(formData);

				 }
			 });

		 }
		 else{

			 let xhr = new XMLHttpRequest();
			 xhr.open('POST',datos.des);
			 xhr.addEventListener('load',(data)=>{
				 document.getElementById(datos.dix).innerHTML = data.target.response;
			 });
			 xhr.onerror =  ()=>{
				 console.log("error");
			 };
			 xhr.send(formData);
		 }
	});

	class Formlogin extends HTMLFormElement {
		connectedCallback() {
		 this.addEventListener('submit', (e) => {
				e.preventDefault();

				//////////id del formulario
				let id=e.currentTarget.attributes.id.nodeValue;
				let elemento = document.getElementById(id);

				/////////API que procesa el form
				let db;
				(elemento.attributes.db !== undefined) ? db=elemento.attributes.db.nodeValue : db="";

				/////////funcion del api que procesa el form
				let fun;
				(elemento.attributes.fun !== undefined) ? fun=elemento.attributes.fun.nodeValue : fun="";

				/////////div destino despues de guardar
				let des;
				(elemento.attributes.des !== undefined) ? des=elemento.attributes.des.nodeValue : des="";

				let datos = new Object();
				datos.db=db+".php";
				datos.fun=fun;
				datos.des=des+".php";


				var formData = new FormData(elemento);
				formData.append("function", datos.fun);

				let xhr = new XMLHttpRequest();
				xhr.open('POST',datos.db);
				xhr.addEventListener('load',(resp)=>{
					var data = JSON.parse(resp.target.response);
		      if (data.acceso==1){
						location.href="../";
		      }
		      else{
		        Swal.fire({
		            type: 'error',
		            title: 'Usuario o contraseña incorrecta',
		            showConfirmButton: false,
		            timer: 1000
		        })
		      }
				});
				xhr.onerror =  ()=>{
					console.log("error");
				};
				xhr.send(formData);

		 })
		}
	}
	customElements.define("f-login", Formlogin, { extends: "form" });

	//////////////////////////Solo para un proceso antes del flujo ejem. al borrar que primero borre y luego redirive_div
	function proceso_db(e){
		let des;	/////////////el destino
		e.currentTarget.attributes.des!==undefined ? des=e.currentTarget.attributes.des.nodeValue : des="";

		let dix; 	/////////////	el div donde se pone el destino
		e.currentTarget.attributes.dix!==undefined ? dix=e.currentTarget.attributes.dix.nodeValue : dix="";

		let db;		/////////////en caso de base de datos
		e.currentTarget.attributes.db!==undefined ? db=e.currentTarget.attributes.db.nodeValue : db="";

		let fun;	///////////// la funcion a ejecutar
		e.currentTarget.attributes.fun!==undefined ? fun=e.currentTarget.attributes.fun.nodeValue : fun="";

		let tp;	///////////// la funcion a ejecutar
		e.currentTarget.attributes.tp!==undefined ? tp=e.currentTarget.attributes.tp.nodeValue : tp="";

		let iddest;
		e.currentTarget.attributes.iddest!==undefined ? iddest=e.currentTarget.attributes.iddest.nodeValue : iddest="";

		let omodal;
		e.currentTarget.attributes.omodal!==undefined ? omodal=e.currentTarget.attributes.omodal.nodeValue : omodal="";

		let cmodal;
		(e.currentTarget.attributes.cmodal !== undefined) ? cmodal=e.currentTarget.attributes.cmodal.nodeValue : cmodal="0";

		let datos = new Object();
		datos.des=des+".php";
		datos.db=db+".php";
		datos.dix=dix;
		datos.fun=fun;
		datos.tp=tp;
		datos.iddest=iddest;
		datos.omodal=omodal;
		datos.cmodal=cmodal;

		/////////esto es para todas las variables
		var variables = new FormData();
		var formData = new FormData();
		for(let contar=0;contar<e.currentTarget.attributes.length; contar++){
			let arrayDeCadenas = e.currentTarget.attributes[contar].name.split("_");
			if(arrayDeCadenas.length>1){
				formData.append(arrayDeCadenas[1], e.currentTarget.attributes[contar].value);
				variables.append(arrayDeCadenas[1], e.currentTarget.attributes[contar].value);
			}
		}
		if(datos.cmodal==1){
			$('#myModal').modal('hide');
			return;
		}
		if(datos.cmodal==2){
			$('#myModal').modal('hide');
		}
		//////////////poner aqui proceso en caso de existir funcion
		if(fun.length>0){
			if(datos.tp.length>0){
				formData.append("function", datos.fun);
				Swal.fire({
					title: datos.tp,
					showCancelButton: true,
					confirmButtonColor: '#3085d6',
					cancelButtonColor: '#d33',
					confirmButtonText: 'Aceptar'
				}).then((result) => {
					if (result.value) {
						let variable=0;
						let xhr = new XMLHttpRequest();
						xhr.open('POST',datos.db);
						xhr.addEventListener('load',(data)=>{
							if (!isJSON(data.target.response)){
								Swal.fire({
									type: 'error',
									title: "Error favor de verificar",
									showConfirmButton: false,
									timer: 1000
								});
								console.log(data.target.response);
								return;
							}
							var respon = JSON.parse(data.target.response);
							if (respon.error==0){
								Swal.fire({
									type: 'success',
									title: "Listo",
									showConfirmButton: false,
									timer: 1000
								});
								if (des.length>0){
									redirige_div(variables,datos);
								}
							}
							else{
								Swal.fire({
									type: 'info',
									title: respon.terror,
									showConfirmButton: false,
									timer: 1000
								});
							}
						});
						xhr.onerror = (e)=>{

						};
						xhr.send(formData);
					}
				});
			}
		}
		else{
			redirige_div(formData,datos);
		}
	}
	//////////////////////////redirige si es necesario
	function redirige_div(formData,datos){
		//console.log(datos);
		//for(var pair of formData.entries()) {
   		//console.log(pair[0]+ ', '+ pair[1]);
		//}
		cargando(true);
		let xhr = new XMLHttpRequest();
		xhr.open('POST', datos.des);
		xhr.addEventListener('load',(datares)=>{
			if(datares.target.status=="404"){
				Swal.fire({
						type: 'error',
						title: "No encontrado: "+datos.des,
						showConfirmButton: false,
				})
				cargando(false);
				return 0;
			}
			else{
				if(datos.omodal==1){
					$('#myModal').modal('show');
					datos.dix="modal_form";
				}
				document.getElementById(datos.dix).innerHTML = datares.target.responseText;
				var scripts = document.getElementById(datos.dix).getElementsByTagName("script");
				for (var i = 0; i < scripts.length; i++) {
			    eval(scripts[i].innerText);
				}
			}
			cargando(false);
		});
		xhr.onerror = (e)=>{
			cargando(false);
			console.log(e);
		};
		xhr.send(formData);
	}
	function cargando(valor) {
		let element = document.getElementById("cargando_div");
		if(valor){
			element.classList.add("is-active");
		}
		else{
			element.classList.remove("is-active");
		}
	}
	function isJSON (something) {
		if (typeof something != 'string')
				something = JSON.stringify(something);
		try {
				JSON.parse(something);
				return true;
		} catch (e) {
				return false;
		}
	}
