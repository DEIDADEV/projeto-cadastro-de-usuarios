<%@ page import="com.crudjspjava.dao.UsuarioDao"%>

<jsp:useBean id="u" class="com.crudjspjava.bean.Usuario"></jsp:useBean>

<jsp:setProperty property="*" name="u"/>

<%
	UsuarioDao.deletarUsuario(u);
	response.sendRedirect("viewusuarios.jsp");
%>