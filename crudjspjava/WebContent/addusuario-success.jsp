<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cadastrar Novo Usuário</title>
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

p#adc {
	text-align: center;
	color: rgb(0, 128, 0);
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
	<header>
		<h1>Cadastrar Novo Usuário</h1>
	</header>
    <section>
        <div>
        <p id="adc" >Usuário adicionado com Sucesso!</p>
            <jsp:include page="usuarioform.html"></jsp:include>
        </div>
        <br>
		<a id="link" href="viewusuarios.jsp">Visualizar Lista de Usuários</a>
    </section>
    <footer>
        <p>&copy; Site feito por: <a href="https://github.com/DEIDADEV" target="_blank" class="externo">Cezar Augusto Rodrigues</a>.</p>
    </footer>
</body>
</html>