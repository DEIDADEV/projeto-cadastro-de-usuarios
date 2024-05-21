<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edição do Usuário</title>
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
    width: 500px;
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

</style>
<body>
	<%@page import="com.crudjspjava.bean.Usuario, com.crudjspjava.dao.UsuarioDao" %>
	<%
		String id = request.getParameter("id");
		Usuario usuario = UsuarioDao.getRegistroById(Integer.parseInt(id));
	%>
	<header>
		<h1>Edição do Usuário</h1>
	</header>
    <section>
        <div>
            <form action="editusuario.jsp" method="post">
		<input type="hidden" name="id" value="<%=usuario.getId()%>"/>
		<table>
			<tr>
				<td>Nome: </td>
				<td><input type="text" name="nome" value="<%=usuario.getNome()%>"/></td>
			</tr>
			<tr>
				<td>Password: </td>
				<td><input type="password" name="password" value="<%=usuario.getPassword()%>"/></td>
			</tr>
			<tr>
				<td>Email: </td>
				<td><input type="email" name="email" value="<%=usuario.getEmail()%>"/></td>
			</tr>
			<tr>
				<td>Sexo: </td>
				<td><input type="radio" name="sexo" value="Masculino"/>Masculino
					<input type="radio" name="sexo" value="Feminino"/>Feminino
				</td>
			<tr>
				<td>País: </td>
				<td>
					<select name="pais">
						<option>Brasil</option>
						<option>EUA</option>
						<option>Portugal</option>
						<option>Argentina</option>
						<option>Outro</option>
					</select>
				</td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="Editar Usuário"></input></td>
			</tr>
		</table>
	</form>
        </div>
    </section>
    <footer>
        <p>&copy; Site feito por: <a href="https://github.com/DEIDADEV" target="_blank" class="externo">Cezar Augusto Rodrigues</a>.</p>
    </footer>
</body>
</html>