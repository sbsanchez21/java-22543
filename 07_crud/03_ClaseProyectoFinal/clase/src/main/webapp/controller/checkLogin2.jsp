<%@page import="dao.UsuarioDAO2"%>
<%@page import="dataBase.ConexionDB"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<% 
/**
Recibe los parámetros enviados desde index.jsp
Se conecta a la db y verifica que el user y pass existan
Si existe ingreso al sistema, si no me da mensaje error
*/


	//recibe parámetros
	String user=request.getParameter("user");
	String pass=request.getParameter("pass");
	// out.println(user);
	// out.println(pass);
	
	//conectarnos a la db y verificar si existe user y pass
	UsuarioDAO2 dao=new UsuarioDAO2();
	Boolean usuYPassValido=dao.validarUsuYPass(user, pass);
	
	if(usuYPassValido) {
		response.sendRedirect("../view/inicio.html");
	} else {
		response.sendRedirect("../view/loginError.html");
	}

%>