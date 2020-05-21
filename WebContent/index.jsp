<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="utf-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
	<title>La Gatoteca</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
	<link href="https://fonts.googleapis.com" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="assets/css/styleIndex.css">
</head>
<body>
	<div class="nav">
		<nav class="navbar navbar-expand-xl navbar-light bg-light">
			<!-- Just an image -->
			<nav class="navbar navbar-light bg-light">
			  <a class="navbar-brand" href="#">
			    <img class="logoNav" src="images/logo.gif" width="100" height="100" alt="logo">
			  </a>
			</nav>
		  <a class="navbar-brand" href="#">La Gatoteca</a>
		  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
		    <span class="navbar-toggler-icon"></span>
		  </button>
		  <div class="collapse navbar-collapse" id="navbarSupportedContent">
		    <ul class="navbar-nav mr-auto">
		      <li class="nav-item active">
		        <a class="nav-link" href="#"><button type="button" class="btn btn-primary">Indice</button><span class="sr-only">(current)</span></a>
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
		      	<a class="nav-link" href="logIn.jsp"><button type="button" class="btn btn-info">LogIn</button></a>
		      </li>		      
		    </ul>
		  </div>
		</nav>
		<!-- Fin barra de nav-->
	</div>
	<div class="mainContainer">
		<div class="intro">
			<h1 class="title">La Gatoteca</h1>
			<h2 class="subtitle">Quienes somos:</h2>
			<hr>
			<p class="textInfo"><img class="imgIntro" src="images/centro.jpg">La Gatoteca es un establecimiento público gestionado por la asociación sin ánimo de lucro ABRIGA. El proyecto abrió sus puertas en octubre de 2013 y busca dar visibilidad a los gatos sin hogar que conforman su colonia, con la esperanza de que la interacción entre nuestros visitantes y los gatos fomente adopciones responsables y esto permita ayudar a más gatos.<br>
			<br>
			No es necesario acudir con la idea de adoptar un gato, simplemente visitarnos y disfrutar de nuestros gatos les ayuda a ellos a socializar y estar colmados de juego y afecto humano. El proyecto también da la oportunidad a nuestros visitantes de interactuar con gatos sin la responsabilidad de una adopción definitiva; también nos ayuda a desmitificar falsa información sobre la figura del gato y su carácter, concienciar sobre una tenencia responsable y el actual problema de abandono animal.
			</p>
			
		</div>
		<hr>
		<!-- publi -->
		<div class="Publi">
			<div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
			  <div class="carousel-inner">
			    <div class="carousel-item active">
			      <a href="https://just4goals.com/app/Reservas?nombre=Gatoteca"><img class="d-block w-100" src="images/banner1.png" alt="First slide"></a>
			    </div>
			    <div class="carousel-item">
			      <a href="https://www.crowdence.com/s/section/la-gatoteca"><img class="d-block w-100" src="images/banner2.png" alt="Second slide"></a>
			    </div>
			    <div class="carousel-item">
			      <a href="https://just4goals.com/app/Reservas?nombre=Gatoteca"><img class="d-block w-100" src="images/banner3.gif" alt="Third slide"></a>
			    </div>
			    <div class="carousel-item">
			     <a href="https://www.facebook.com/lagatoteca/"><img class="d-block w-100" src="images/banner4.jpg" alt="Fourth slide"></a> 
			    </div>
			    <div class="carousel-item">
			      <a href="https://www.teaming.net/lagatoteca"><<img class="d-block w-100" src="images/banner5.png" alt="Fifth slide"></a>
			    </div>
			  </div>
			  <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
			    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
			    <span class="sr-only">Previous</span>
			  </a>
			  <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
			    <span class="carousel-control-next-icon" aria-hidden="true"></span>
			    <span class="sr-only">Next</span>
			  </a>
			</div>
		</div>
		<!-- Fin publi -->
		<div class="resume">
			<h2 class="subtitle">¿QUIÉN PUEDE ENTRAR?</h2>
			<hr>
			<p class="textInfo">Cualquier persona puede acceder a nuestro espacio felino, sin importar edad o condición. Tenemos una tarifa general para nuestros visitantes y otras especiales para niños hasta 12 años (incluido), pensionistas o discapacitados. Los socios de ABRIGA tienen acceso gratuito al centro los lunes por la tarde como agradecimiento por su colaboración con la asociación.</p>
		</div>
		<hr>
		<div class="fotos">
			<div class="itemGrid"><img src="images/gatoteca1.jpg" alt="foto de dos gatos"></div>
			<div class="itemGrid"><img src="images/gatoteca2.jpg" alt="foto de una joven acariciando un gato"></div>
			<div class="itemGrid"><img src="images/gatoteca3.jpg" alt="foto de un mural de la gatoteca"></div>
			<div class="itemGrid"><img src="images/gatoteca4.jpg" alt="foto de otro mural de la gatoteca"></div>
			<div class="itemGrid"><img src="images/gatoteca5.jpg" alt="foto de un gato en el hueco de una estanteria"></div>
			<div class="itemGrid"><img src="images/gatoteca10.jpg" alt="foto de la entrada de la gatoteca"></div>
			<div class="itemGrid"><img src="images/gatoteca7.jpg" alt="foto de una de las salas de la gatoteca"></div>
			<div class="itemGrid"><img src="images/gatoteca8.jpg" alt="foto de la zona de refrigerios"></div>
			<div class="itemGrid"><img src="images/gatoteca9.jpg" alt="foto de las tazas que se pueden comprar en la gatoteca"></div>
		</div>
		<div class="resume">
			<h2 class="subtitle">¿DÓNDE ESTÁN LOS GATOS?</h2>
			<hr>
			<p class="textInfo">Nuestro espacio no es como una cafetería al uso, realmente se asemeja más al salón de una casa, de 160 metros cuadrados y dos plantas. Los gatos de nuestra colonia se mueven libremente por el espacio, juegan, duermen, se acicalan… y nuestros visitantes pueden ir recorriendo el espacio e interactuar con ellos. Solo hay ciertas zonas que están reservadas exclusivamente para nuestros felinos, las cuales están señalizadas y a las que solo puede acceder el personal de ABRIGA.</p>
		</div>
		<hr>
	</div>
		<div class="recuadro">
			<div>
				<h1 class="importante">IMPORTANTE: NUEVOS HORARIOS 2020 A PARTIR DEL LUNES 13 DE ENERO</h1>
				<h2 class="subtitle">EL SALÓN DE GATOS ABRE:</h2>
				<p class="horarios">Lunes a Jueves de 15:30 a 21:00 horas.<br>
				Viernes y Sábado de 11:00 a 22:00 horas.<br>
				Domingos y festivos de 11:00 a 21:00 horas.</p>
				<h2  class="subtitle">TIENDA ABIERTA TODOS LOS DIAS:</h2>
				<p class="horarios">De 11:00 a 21:00 horas.</p>  
				<hr>
			</div>
			<div class="Index-gallery-item-content-body">
				<h2 class="importante">La Gatoteca está gestionada por ABRIGA y la importancia en este proyecto son los gatos.</h2>
				<p class="textInfo">Cuando nos visites no pagarás por la bebida sino por el tiempo de estancia en nuestras instalaciones.<br>
				Existe un precio orientativo por dicho tiempo, el cual se abona al final de la visita, dando libertad a cada persona de permanecer el tiempo que desee.</p>
				<h2 class="subtitle">Nuestras tarifas orientativas y proporcionales son:</h2>
				<p class="horarios">30min: 4Euros<br>60min: 6Euros <em>(a partir de los 60min: 0.1Euros /min)<br>Estancia mínima 10min / 2Euros</em></p>
				<h2>DESCUENTOS:</h2>
				<p class="horarios">Hasta 2 años: Gratuito | De 2 a 12 años (inclusive): 3Euros | Pensionistas 50% dto. | Discapacitados 50% dto.</p>
				<hr>
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