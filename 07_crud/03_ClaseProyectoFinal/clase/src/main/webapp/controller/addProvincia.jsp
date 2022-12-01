<%@page import="dao.ProvinciaDAO2"%>
<%
	String nombre=request.getParameter("nombre");
	
	ProvinciaDAO2 dao=new ProvinciaDAO2();
	
%>