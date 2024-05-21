<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Visualização de Usuários</title>
</head>
<style>

body {
    background-color: rgb(70, 142, 236);
    font: normal 15pt Arial;
}

header {
    color: white;
    text-align: center;
}

section {
    background-color: white;
    border-radius: 10px;
    padding: 15px;
    width: 810px;
    margin: auto;
    box-shadow: 5px 5px 10px rgba(0, 0, 0, 0.363);
}

footer {
    color: white;
    text-align: center;
    font-style: italic;
}

footer a {
    color: white;
    font-weight: bolder;
    text-decoration: none;
}

footer a:hover {
    text-decoration: underline;
    color: black;
}

a#link {
	color: rgb(253, 122, 0);
	text-align: center;
	text-decoration: none;
	box-shadow: 0px 3px 3px rgba(0, 0, 0, 0.192);
}

a#link:hover {
	text-decoration: underline;
    color: blue;
}

</style>
		<body>
		<%@ page import="com.crudjspjava.dao.UsuarioDao, com.crudjspjava.bean.*, java.util.*"%>
		<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	
	<%
	List<Usuario> list = UsuarioDao.getAllUsuarios();
	request.setAttribute("list", list);
	%>
	
		<header>
		<h1>Listagem de Usuários</h1>
		</header>
	    <section>
        <div>
        	<table border="1">
		<tr>
			<th>ID</th>
			<th>Nome</th>
			<th>Password</th>
			<th>Email</th>
			<th>Sexo</th>
			<th>País</th>
			<th>Editar</th>
			<th>Excluir</th>
		</tr>
		<c:forEach items="${list}" var="usuario">
		<tr>
			<td>${usuario.getId()}</td>
			<td>${usuario.getNome()}</td>
			<td>${usuario.getPassword()}</td>
			<td>${usuario.getEmail()}</td>
			<td>${usuario.getSexo()}</td>
			<td>${usuario.getPais()}</td>
			<td><a href="editform.jsp?id=${usuario.getId()}">Editar</a></td>
			<td><a href="deleteusuario.jsp?id=${usuario.getId()}">Excluir</a></td>
		</tr>
		</c:forEach>
	</table>
		<br>
		<a id="link" href="addusuarioform.jsp">Adicionar novo Usuário</a>
        </div>
    </section>
    <footer>
        <p>&copy; Site feito por: <a href="https://github.com/DEIDADEV" target="_blank" class="externo">Cezar Augusto Rodrigues</a>.</p>
    </footer>
</body>
</html>