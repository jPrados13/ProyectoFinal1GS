<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="lagatoteca.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.util.ArrayList" %>
<% BDController controladorBD = new BDController();%>
<% ArrayList<Gato> gatosLocal = controladorBD.dameGatosLocal();%>
<% ArrayList<Gato> gatosAdop = controladorBD.dameGatosAdoptados(); %>
<!DOCTYPE html>
<html>
<head>
	<title>Elige el Gato</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
	<link href="https://fonts.googleapis.com" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="assets/css/styleGatos.css">
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
		        <a class="nav-link" href="indexAdmin.jsp"><button type="button" class="btn btn-info">Indice</button></a>
		      </li>
		      <li class="nav-item">
		        <a class="nav-link" href="gatos.jsp"><button type="button" class="btn btn-primary">Gatos</button><span class="sr-only">(current)</span></a>
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
		<h1 class="title">Nuestros gatos</h1>
		<h2 class="subtitle">Ahora en La Gatoteca</h2>
		<hr>
		<div class="gatos">
		<%for(int i = 0; i < gatosLocal.size(); i++) { %>
			<div class="card" style="width: 18rem;">
			  <img class="card-img-top" src="images/gatos/<%=gatosLocal.get(i).getNombre()%>.jpg" alt="<%=gatosLocal.get(i).getNombre()%>">
			  <div class="card-body">
			    <h5 class="card-title"><%=gatosLocal.get(i).getNombre()%></h5>
			    <p class="card-text"><%=gatosLocal.get(i).getDescripcion()%></p>
			    <form action="modificarGL.jsp" method="post">
			    <input type="hidden" class="option" name="chipLocal" value="<%=gatosLocal.get(i).getnChip()%>"/>
			     <button type="submit" class="btn btn-primary">Modificar</button>
			     </form>
			  </div>
			</div><%} %>
		</div>
		<hr>
		<h2 class="subtitle">Ya Adoptados</h2>
		<hr>
		<div class="gatos">
			<%for(int i = 0; i < gatosAdop.size(); i++) { %>
			<div class="card" style="width: 18rem;">
			  <img class="card-img-top" src="images/gatos/<%=gatosAdop.get(i).getNombre()%>.jpg" alt="<%=gatosAdop.get(i).getNombre()%>">
			  
			  <div class="card-body">
			    <h5 class="card-title"><%=gatosAdop.get(i).getNombre()%></h5>
			    <p class="card-text"><%=gatosAdop.get(i).getDescripcion()%></p>
			    <form action="modificarGA.jsp" method="post">
			    <input type="hidden" class="option" name="chipAdop" value="<%=gatosAdop.get(i).getnChip()%>"/>
			     <button type="submit" class="btn btn-primary">Modificar</button>
			     </form>
			  </div>
			</div><%} %>
		</div>
	</div>
	
	
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>