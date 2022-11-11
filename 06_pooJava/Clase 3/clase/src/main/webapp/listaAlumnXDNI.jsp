<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="dataBase.ConexionDB"%>
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
		<h4 class="my-4">Listado Alumnos con DNI mayor a 230000000</h4>

		<div class="table-responsive">
			<table class="table table-primary">
				<thead>
					<tr>
						<th scope="col">#ID</th>
						<th scope="col">Nombre</th>
						<th scope="col">Apellido</th>
						<th scope="col">Fecha</th>
					</tr>
				</thead>
				<tbody>
					<%
					//conectar db
					ConexionDB conexionDB=new ConexionDB();
					Statement st=conexionDB.conectarCreateStatement();
					
					ResultSet rs=st.executeQuery("SELECT * FROM alumnos WHERE dni>24000000");
					
					while(rs.next()) {
						out.println("<tr>");

						out.println("<td>");
						out.println(rs.getInt("id"));
						out.println("</td>");

						out.println("<td>");
						out.println(rs.getString("nombre"));
						out.println("</td>");

						out.println("<td>");
						out.println(rs.getString("apellido"));
						out.println("</td>");
						
						out.println("<td>");
						out.println(rs.getDate("fecha"));
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