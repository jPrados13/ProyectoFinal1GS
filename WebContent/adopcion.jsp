<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="utf-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
	<title>Adopcion</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
	<link href="https://fonts.googleapis.com" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="assets/css/styleAdopcion.css">
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
		      	<a class="nav-link" href="adopcion.jsp"><button type="button" class="btn btn-primary">Adopta</button><span class="sr-only">(current)</span></a>	     
		      </li>
		      <li class="nav-item">
		      	<a class="nav-link" href="kittysitters.jsp"><button type="button" class="btn btn-info">KittySitters</button></a>
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
		<h1 class="subtitle">¿QUÉ HAGO SI QUIERO ADOPTAR UN GATO DE LA GATOTECA?</h1>

		
		<p>Todos los gatos de nuestra colonia están buscando un nuevo y definitivo hogar y están disponibles para adopción. Siempre recomendamos realizar primero una visita a nuestras instalaciones para conocerlos personalmente y no guiarte solo por la apariencia del gato sino más bien por su carácter y personalidad.</p>
		<hr>
		<div class="infoAdop">
			<p class="titleAdop">Si estás interesado en algún gato en concreto, o si llevas idea de adoptar pero todavía no sabes cuál sería tu gato ideal y quieres que te asesoremos, los pasos son los siguientes:</p>

			<p><strong><svg class="bi bi-dot" width="1em" height="1em" viewBox="0 0 16 16" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  <path fill-rule="evenodd" d="M8 9.5a1.5 1.5 0 100-3 1.5 1.5 0 000 3z" clip-rule="evenodd"/>
</svg>CONCERTAR UNA ENTREVISTA PERSONAL CON NOSOTROS.</strong>
			Es algo informal donde queremos conocerte un poco, donde estudiaremos tus necesidades e intentaremos ofrecerte los gatos que mejor encajen con tu ritmo de vida actual. Te hablaremos de ellos, resolveremos tus dudas y te contaremos más a fondo cómo proseguir con el proceso de adopción.</p>		 

			<p><strong><svg class="bi bi-dot" width="1em" height="1em" viewBox="0 0 16 16" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  <path fill-rule="evenodd" d="M8 9.5a1.5 1.5 0 100-3 1.5 1.5 0 000 3z" clip-rule="evenodd"/>
</svg>HACERTE SOCIO DE ABRIGA.</strong>
			Es una cuota simbólica de 50€ al año sin ninguna permanencia, de manera que colaboras con la asociación para que sigamos realizando nuestra labor de ayuda a los gatos, pero además tienes todos los beneficios de ser socio nuestro. Puedes leer más aquí.</p>

			<p><strong><svg class="bi bi-dot" width="1em" height="1em" viewBox="0 0 16 16" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  <path fill-rule="evenodd" d="M8 9.5a1.5 1.5 0 100-3 1.5 1.5 0 000 3z" clip-rule="evenodd"/>
</svg>REALIZAR EL CURSO BÁSICO DEL GATO.</strong>
			Apostamos por una adopción definitiva y una tenencia responsable, por lo que es obligatoria la asistencia a este curso, donde adquirirás los conocimientos necesarios de cara a esta nueva convivencia. Puedes consultar las próximas fechas en nuestra sección agenda.</p> 

			<p><strong><svg class="bi bi-dot" width="1em" height="1em" viewBox="0 0 16 16" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  <path fill-rule="evenodd" d="M8 9.5a1.5 1.5 0 100-3 1.5 1.5 0 000 3z" clip-rule="evenodd"/>
</svg>CONTRATO Y ADOPCIÓN.</strong>
			Después de cumplir los pasos anteriores, se acuerda una fecha para realizar la adopción. Se firma un contrato privado acorde a la Ley de Protección Animal del 22 de Julio de la Comunidad de Madrid, y el cambio de titularidad (20€ de gestión administrativa), se te entrega la cartilla, un informe de salud, toda la documentación del gato y, por supuesto, a tu nuevo familiar felino.</p>

			 

			<p>En total la adopción tiene un valor de poco más de 100€ y se entrega al gato con todo el protocolo veterinario cumplido. El tiempo que se tarda en finalizar el proceso depende de cada caso y de cuándo esté previsto el siguiente Curso Básico del Gato, pero de forma orientativa suelen ser dos o tres semanas.</p>
		</div>
		<a href="gatosGatoteca.jsp"><button type="button" class="btn btn-secondary btn-lg btn-block">Ver gatos en adopción</button></a>
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