<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!doctype html>
<html lang="en">

<head>
<title>Title</title>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS v5.2.1 -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT"
	crossorigin="anonymous">
	
	<link rel="stylesheet" href="css/index.css" >

</head>

<body>
	<header>
		<!-- place navbar here -->
	</header>
	<main>

		<div class="container">
		<h4 class="my-4">Listado Alumnos</h4>

		<div class="table-responsive">
			<table class="table table-primary">
				<thead>
					<tr>
						<th scope="col">#ID</th>
						<th scope="col">Nombre</th>
						<th scope="col">Apellido</th>
						<th scope="col">DNI</th>
					</tr>
				</thead>
				<tbody>
					<%
					//conectamos a db -> x ahora con array
					//traemos una lista de alumnos
					//generamos dinámicamente una fila x c/alumno
					
					//cargamos el array con los datos de los alumnos
					List listAlumn=new ArrayList<String>();
					listAlumn.add("Juan");
					listAlumn.add("Romina");
					listAlumn.add("Felipe");
					listAlumn.add("Win");
					listAlumn.add("Whasington");
					listAlumn.add("Baltazar");
					listAlumn.add("Ramón");
					listAlumn.add("Ramón");
					listAlumn.add("Ramón");
					listAlumn.add("Ramón");
					listAlumn.add("Ramón");
					listAlumn.add("Ramón");
					
					//recorrer la lista y hacer una fila x alumno
					for(int i=0; i<listAlumn.size(); i++) {
						out.println("<tr>");
						
						//id
						out.println("<td>");
						out.println(i+1);
						out.println("</td>");

						//nombre
						out.println("<td>");
						out.println(listAlumn.get(i));
						out.println("</td>");

						//apellido
						out.println("<td>");
						out.println(listAlumn.get(i));
						out.println("</td>");

						//dni
						out.println("<td>");
						out.println("22333666");
						out.println("</td>");

						out.println("</tr>");
						
					}
					%>
				</tbody>
			</table>
		</div>
		</div>


	</main>
	<footer>
		<!-- place footer here -->
	</footer>
	<!-- Bootstrap JavaScript Libraries -->
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
		integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
		crossorigin="anonymous">
  </script>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js"
		integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz"
		crossorigin="anonymous">
  </script>
  
  <script src="js/index.js"></script>
</body>

</html>