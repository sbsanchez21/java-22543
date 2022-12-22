<%@page import="java.sql.SQLException"%>
<%@page import="dao.ProvinciaDAO2"%>
<%
	try {
		String idProvincia=request.getParameter("idProvincia");
		
		ProvinciaDAO2 dao=new ProvinciaDAO2();
		
		Boolean delOk=dao.delProvincia(Integer.valueOf(idProvincia));
		
		if(delOk) {
			response.sendRedirect("../view/mensajeOk.jsp");
		}else {
			response.sendRedirect("../view/mensajeError.jsp");
		}

	} catch (SQLException e) {
		// TODO: mostrar un mensaje de error amigable al usuario
		//enviar un whastapp al desarrollador
		response.sendRedirect("../view/mensajeError.jsp");
	}
	

	
	
	
%>