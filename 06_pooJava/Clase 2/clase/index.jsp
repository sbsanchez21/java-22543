<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="css/index.css" >
</head>
<body>
	<p onclick="saludar()">Hola Mundo</p>
	
	
	<%
	//conecto a la db
	//consulto las materias del alumno 1
	//genero html dinámicante
	
	out.println("hola jsp");
	
	Integer cant=new Integer(15);
	
	for(int i=0; i<cant; i++) {
		out.println("<div>Fila generada dinámicamente " + i + "</div>");
	}
	
	%>

	<script src="js/index.js"></script>
</body>
</html>