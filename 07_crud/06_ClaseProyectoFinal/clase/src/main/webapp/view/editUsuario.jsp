<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Editar Usuario</title>

<!-- Bootstrap core CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">

	<link href="css/estilo.css" rel="stylesheet" type="text/css">
</head>

<body class="bg-light">
 	<div class="py-4 text-center">
		<img class="d-block mx-auto mb-4" src="./images/logo.jpg"
			alt="Logo caba" width="72" height="72">
		<h2>Editar Usuario</h2>
	</div>

	<div class="container">
	<div class="col-md-12 text-center">
		<form action="../controller/updUsuario.jsp" method="POST">
			<div class="row">
				<%  
				String idUsuario=request.getParameter("idUsuario");
				String usuario=request.getParameter("usuario");
				String clave=request.getParameter("clave");
				
				%>
				<input type="hidden" id="idUsuario" name="idUsuario" value="<% out.print(idUsuario); %>"  >
				<div class="col-md-6 mb-3">
					<input type="email" class="form-control" id="usuario" name="usuario" value="<% out.print(usuario); %>"  required pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$">
				</div>
				<div class="col-md-6 mb-3">
					<input type="password" class="form-control" id="clave" name="clave" value="<% out.print(clave); %>" required pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}">
				</div>
			</div>

			<hr class="mb-4">

			<div class="row">
				<div class="d-flex justify-content-around">
					<button class="btn btn-primary btn-lg btn-block" type="submit">
						Guardar
					</button>
				</div>
			</div>
		</form>
	</div>
	</div>


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
</body>
</html>