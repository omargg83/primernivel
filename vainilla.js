let intval=""

onload = ()=> {
	loadContent(location.hash.slice(1));
	if(intval==""){
		intval=setInterval(function(){ sesion_ver(); }, 10000);
	}
	cargando(false);
};
let url=window.location.href;
let hash=url.substring(url.indexOf("#")+1);
if(hash===url || hash===''){
	hash='dash/dashboard';
}

window.addEventListener("hashchange", (e)=>{
	loadContent(location.hash.slice(1));
},false);	///////////////////para el hash


function loadContent(hash){
	cargando(true);
	let formData = new FormData();
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
	if(nhash==''){
		nhash= 'dash/dashboard';
	}
	let destino=nhash + '.php';
	let xhr = new XMLHttpRequest();
	xhr.open('POST',destino);
	xhr.addEventListener('load',(data)=>{
		document.getElementById("contenido").innerHTML =data.target.response;
		var scripts = document.getElementById("contenido").getElementsByTagName("script");
		for (var i = 0; i < scripts.length; i++) {
			eval(scripts[i].innerText);
		}
	});
	xhr.send(formData);
	cargando(false);
}
function salir(){
	var formData = new FormData();
	formData.append("function", "salir");
	formData.append("ctrl", "control");
	let xhr = new XMLHttpRequest();
	xhr.open('POST',"control_db.php");
	xhr.addEventListener('load',(data)=>{
		location.href ="login/";
	});
	xhr.onerror = (e)=>{
		console.log(e);
	};
	xhr.send(formData);
}
function sesion_ver(){
	var formData = new FormData();
	formData.append("function", "ses");
	formData.append("ctrl", "control");

	let xhr = new XMLHttpRequest();
	xhr.open('POST',"control_db.php");
	xhr.addEventListener('load',(data)=>{
		var datos = JSON.parse(data.target.response);
		if (datos.sess=="cerrada"){
			location.href ="login/";
		}
	});
	xhr.onerror = (e)=>{
		console.log(e);
	};
	xhr.send(formData);
}


/*!
		* Start Bootstrap - SB Admin v6.0.1 (https://startbootstrap.com/templates/sb-admin)
		* Copyright 2013-2020 Start Bootstrap
		* Licensed under MIT (https://github.com/StartBootstrap/startbootstrap-sb-admin/blob/master/LICENSE)
		*/
(function($) {
		"use strict";

		// Add active state to sidbar nav links
		var path = window.location.href; // because the 'href' property of the DOM element is the absolute path
				$("#layoutSidenav_nav .sb-sidenav a.nav-link").each(function() {
						if (this.href === path) {
								$(this).addClass("active");
						}
				});

		// Toggle the side navigation
		$(".menu-icon").on("click", function(e) {
				e.preventDefault();
				$("body").toggleClass("sb-sidenav-toggled");
		});

		$(".sidenav__close-icon").on("click", function(e) {
				e.preventDefault();
				$("body").toggleClass("sb-sidenav-toggled");
		});


})(jQuery);
