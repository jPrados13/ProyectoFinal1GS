<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>KittySitters</title>
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
		      	<a class="nav-link" href="kittysitters.jsp"><button type="button" class="btn btn-primary">KittySitters</button><span class="sr-only">(current)</span></a>
		      </li>
		      <li class="nav-item">
		      	<a class="nav-link" href="hazteSocio.jsp"><button type="button" class="btn btn-info">Hazte Socio</button></a>
		      </li>		
		      <li class="nav-item">
		      	<a class="nav-link" href="logIn.jsp"><button type="button" class="btn btn-info">LogIn</button></a>
		      </li>	 
		    </ul>
		  </div>
		</nav>
		<!-- Fin barra de nav-->
	</div>
	<div class="mainContainer">
		<h2 class="subtitle">¡CUIDAMOS A TU GATO EN TU PROPIO DOMICILIO!</h2>
		
		<p class="textInfo">Es un servicio ofrecido por los voluntarios de la Asociación ABRIGA, con sede física en La Gatoteca. Son personas experimentadas en el cuidado de gatos, capaces de ser responsables de una colonia de hasta 18 animales a la vez. Todos ellos han asistido al Curso Básico del Gato, así como a charlas de comunicación, comportamiento, nutrición, etc. que impartimos en nuestro centro, además de contar con la sobrada experiencia que han adquirido desde hace unos meses con nuestra colonia; de hecho contamos también con dos cuidadores con la titulación de ATV por si tu gato necesita unos cuidados especiales. Hacemos todo legalmente y con la máxima confianza! Realizamos contrato con cada servicio y damos fotocopia del Documento Nacional de Identidad del Sitter que entrará en tu casa para mayor seguridad. Además te enviaremos diariamente fotos y seguimientos de tu gato para que compruebes lo bien que está bajo nuestros cuidados. </p>

		<div class="Publi">
			<div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
			  <div class="carousel-inner">
			    <div class="carousel-item active">
			      <a href=""><img class="d-block w-100" src="images/kittySitters.png" alt="First slide"></a>
			    </div>
			  </div>
			</div>
		</div>

		<p class="textInfo">Por norma general el servicio consta de visitas diarias (o cada dos días) de 30 minutos al domicilio en el que reside el gato. Trabajamos sobretodo Zona A de Madrid capital, aunque podemos realizar visitas a domicilios más lejanos, siempre sujeto a la disponibilidad y voluntad de los Sitters. El precio aproximado de cada visita es de 12€, existiendo un plus de transporte para domicilios que requieran un desplazamiento superior a la media hora. Una parte de la recaudación se destina como donativo a la Asociación ABRIGA, por lo que al contratar el servicio estás ayudando a los gatos sin hogar!<br>

		Si estás interesado en que cuidemos de tus gatos, puedes solicitar un presupuesto sin compromiso en rellenando el formulario que encontrarás a continuación:</p>
		<div class="formulario">
			<form>
			  <div class="form-row">
			    <div class="form-group col-md-6">
			      <label for="inputEmail4">Nombre</label>
			      <input type="text" class="form-control" id="inputEmail4" placeholder="Nombre">
			    </div>
			    <div class="form-group col-md-6">
			      <label for="inputPassword4">Apellido</label>
			      <input type="text" class="form-control" id="inputPassword4" placeholder="Apellido">
			    </div>
			  </div>
			  <div class="form-group">
			    <label for="inputAddress">Email</label>
			    <input type="Email" class="form-control" id="inputAddress" placeholder="abcde123@example.com">
			  </div>
			  <div class="form-group">
			    <label for="inputAddress2">Nº de teléfono</label>
			    <input type="number" max="999999999" class="form-control" id="inputAddress2" placeholder="601098555">
			  </div>
			  <div class="form-row">
			    <div class="form-group col-md-6">
			      <label for="inputCity">Calle</label>
			      <input type="text" class="form-control" id="inputCity">
			    </div>
			    <div class="form-group col-md-4">
			      <label for="inputState">Distrito</label>
			      <select id="inputState" class="form-control">
			        <option selected>Guindalera</option>
			        <option>Otros Distritos</option>
			      </select>
			    </div>
			    <div class="form-group col-md-2">
			      <label for="inputZip">C.P.</label>
			      <input type="text" class="form-control" id="inputZip">
			    </div>
			  </div>
			  <div class="form-group">
			    <div class="form-check">
			      <input class="form-check-input" type="checkbox" id="gridCheck">
			      <label class="form-check-label" for="gridCheck">
			        Soy socio
			      </label>
			    </div>
			  </div>
			  <button type="submit" class="btn btn-secondary">Pedir un presupuesto</button>
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