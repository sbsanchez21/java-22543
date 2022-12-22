
<%@page import="dao.UsuarioDAO2"%>
<%
	String idUsuario=request.getParameter("idUsuario");
	String usuario=request.getParameter("usuario");
	String clave=request.getParameter("clave");

	UsuarioDAO2 dao=new UsuarioDAO2();
	Boolean updOk=dao.updUsuario(Integer.valueOf(idUsuario), usuario, clave);
	
	if(updOk) {
		response.sendRedirect("../view/mensajeOk.jsp");
	}else {
		response.sendRedirect("../view/mensajeError.jsp");
	}
	
	
%>