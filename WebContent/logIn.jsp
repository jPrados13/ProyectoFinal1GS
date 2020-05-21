<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<title>LogIn</title>
	<link href="https://fonts.googleapis.com" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="assets/css/styleKitty.css">
</head>
<body>
	<div class="nav">
		<nav class="navbar navbar-expand-xl navbar-light bg-light">
			<!-- Just an image -->
			<nav class="navbar navbar-light bg-light">
			  <a class="navbar-brand" href="index.jsp">
			    <img class="logoNav" src="images/logo.gif" width="100" height="100" alt="logo">
			  </a>
			</nav>
		  <a class="navbar-brand" href="index.jsp">La Gatoteca</a>
		  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
		    <span class="navbar-toggler-icon"></span>
		  </button>
		  <div class="collapse navbar-collapse" id="navbarSupportedContent">
		    <ul class="navbar-nav mr-auto">
		      <li class="nav-item active">
		        <a class="nav-link" href="index.jsp"><button type="button" class="btn btn-info">Indice</button></a>
		      </li>
		      <li class="nav-item">
		        <a class="nav-link" href="gatos.jsp"><button type="button" class="btn btn-info">Gatos</button></a>
		      </li>
		      <li class="nav-item">
		      	<a class="nav-link" href="adopcion.jsp"><button type="button" class="btn btn-info">Adopta</button></a>	     
		      </li>
		      <li class="nav-item">
		      	<a class="nav-link" href="kittysitters.jsp"><button type="button" class="btn btn-info">KittySitters</button></a>
		      </li>
		      <li class="nav-item">
		      	<a class="nav-link" href="hazteSocio.jsp"><button type="button" class="btn btn-info">Hazte Socio</button></a>
		      </li>	
		      <li class="nav-item">
		      	<a class="nav-link" href="logIn.jsp"><button type="button" class="btn btn-primary">LogIn</button><span class="sr-only">(current)</span></a>
		      </li>	 
		    </ul>
		  </div>
		</nav>
		<!-- Fin barra de nav-->
	</div>
	<div class="mainContainer">
		<h2 class="subtitle"></h2>
		<div class="formulario">
			<form action="operaciones.jsp?tipo=entrar" method="post">
			  <div class="form-row">
			    <div class="form-group col-md-6">
			      <label for="usuario">Usuario</label>
			      <input type="text" class="form-control" id="usuario" name="usuario" placeholder="Usuario">
			    </div>
			    <div class="form-group col-md-6">
			      <label for="password">Contraseña</label>
			      <input type="password" class="form-control" id="password" name="password" placeholder="contraseña">
			    </div>
			  </div>
			  <a href=""><button type="submit" class="btn btn-secondary">Entrar</button></a>
			</form>
		</div>	
	</div>
	<div class="footer">
	   <div class="mapaYtitulo">
	   	<h1 class="display-4">La Gatoteca</h1>
	    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2554.7085356045677!2d-3.696496420941615!3d40.40713239553252!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd42262ec8ae51bd%3A0x230a1b3f69e74cc8!2sLa%20Gatoteca!5e0!3m2!1ses!2ses!4v1588946493472!5m2!1ses!2ses" width="450" height="350" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
	   </div>
	   <div class="generalInfo">
	   	<p class="lead"></p>
	   	<p class="InfoAbajo">EL SALÓN DE GATOS ABRE:</p>
		<p class="lead">Lunes a Jueves de 15:30 a 21:00 horas.<br>
		Viernes y Sábado de 11:00 a 22:00 horas.<br>
		Domingos y festivos de 11:00 a 21:00 horas.</p>
		<p class="InfoAbajo">TIENDA ABIERTA TODOS LOS DIAS</p>
		<p class="lead">De 11:00 a 21:00 horas.</p> 
	    <p class="InfoAbajo">Nuestras redes sociales</p>
		<a href="https://twitter.com/lagatoteca"><img class="RSImages" src="images/twitter.png"></a>
		<a href="https://www.instagram.com/lagatoteca/"><img class="RSImages" src="images/instagram.png"></a>
		<a href="https://www.youtube.com/channel/UCc76jh38FFGuEcNYeCZoz9w"><img class="RSImages" src="images/youtube.png"></a>
		<p>Telefono: (+34) 916 225 831</p>
		<p>Calle Argumosa, 28. 28012, Madrid. </p>
	   </div>	    
	</div>

	
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>