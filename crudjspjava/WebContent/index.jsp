<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cadastro de Usuários</title>
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

a.link {
	color: black;
	text-align: center;
	text-decoration: none;
}

a.link:hover {
	text-decoration: underline;
    color: blue;
}

</style>
</head>
<body>
	<header>
        <h1>Cadastro de Usuários</h1>
    </header>
    <section>
        <div>
            <a class="link" href="addusuarioform.jsp">Cadastrar Novo Usuário</a>
        </div>
    </section>
    <br>
    <section>
        <div>
            <a class="link" href="viewusuarios.jsp">Listagem de Usuários</a>
        </div>
    </section>
    <footer>
        <p>&copy; Site feito por: <a href="https://github.com/DEIDADEV" target="_blank" class="externo">Cezar Augusto Rodrigues</a>.</p>
    </footer>
</body>
</html>