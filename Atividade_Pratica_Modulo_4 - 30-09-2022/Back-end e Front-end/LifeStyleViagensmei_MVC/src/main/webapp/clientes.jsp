<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="model.Clientes"%>
<%@ page import="java.util.ArrayList"%>

<%
ArrayList<Clientes> lista = (ArrayList<Clientes>) request.getAttribute("clientes");
%>

<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!--Aqui insiro um arquivo externo de CSS-->
<link rel="stylesheet" href="CSS/style.css">

<!--Aqui insiro um icon para aparecer na aba da janela do site-->
<link rel="shortcut icon" href="img/LV.icon.ico" type="image/x-icon">

<!--Adicionando o Bootstrap-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

<!--Adicionando o Java Script-->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
	crossorigin="anonymous"></script>



<!--Aqui insiro o nome do site dentro da aba da janela do site-->
<title>Lifestyle Viagens</title>

<style>
body {
	background-color: lightblue;
}

h1 {
	text-align: center;
}

a {
	text-decoration: none;
	color: white;
}

button {
	border: 2px solid black;
	border-radius: 5px;
	color: white;
	font-size: 15px;
}

table {
  border-collapse: collapse;
  width: 100%;
}

th, td {
  text-align: left;
  padding: 8px;
}

tr:nth-child(even)


</style>
</head>
<body>

	<!---Início do menu-->
	<nav
		class="navbar navbar-expand-sm bg-primary navbar-dark fixed-top sticky-top">
		<div class="container-fluid" style="height: 80px;">
			<a class="navbar-brand" href="index.html"></a><img
				src="img/LV_2_.png-removebg-preview.png" id="foto1"
				alt="logo Lifestyle Viagens">
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#collapsibleNavbar">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse bg-primary"
				id="collapsibleNavbar">
				<ul class="navbar-nav">
					<li class="nav-item"><a class="nav-link text-light"
						href="index.html"><strong>Home</strong></a></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle text-light" href="#" role="button"
						data-bs-toggle="dropdown"><strong>Destino</strong></a>
						<ul class="dropdown-menu bg-primary">
							<li><a class="dropdown-item text-light"
								href="passagens.html"><strong>Passagens</strong></a></li>
							<li><a class="dropdown-item text-light"
								href="index.html#promoções"><strong>Promoções</strong></a></li>
						</ul></li>
					<li class="nav-item"><a class="nav-link text-light"
						href="#contatos"><strong>Contatos</strong></a></li>
					<li class="nav-item"><a class="nav-link text-light"
						href="about.html"><strong>Sobre nós</strong></a></li>
					<li class="nav-item"><a class="nav-link text-light"
						href="cadastre-se.html"><strong>Cadastre-se</strong></a></li>
				</ul>
			</div>
		</div>
	</nav>
	<!---Fim do menu-->

	<div style="overflow-x:auto;">
    <h1>LISTA DE CLIENTES</h1>

		<div class="table-responsive">
			<table class="table table-bordered table-dark table-striped">
				<thead>
					<tr>
						<th>Idclientes</th>
						<th>Nome</th>
						<th>Sobrenome</th>
						<th>Data de Nascimento</th>
						<th>CPF</th>
						<th>Nacionalidade</th>
						<th>Celular</th>
						<th>Sexo</th>
						<th>Email</th>
						<th>Opções</th>
					</tr>
				</thead>
				<tbody>
					<%
					for (int i = 0; i < lista.size(); i++) {
					%>
					<tr>
						<td><%=lista.get(i).getIdclientes()%></td>
						<td><%=lista.get(i).getNome()%></td>
						<td><%=lista.get(i).getSobrenome()%></td>
						<td><%=lista.get(i).getDataNascimento()%></td>
						<td><%=lista.get(i).getCpf()%></td>
						<td><%=lista.get(i).getNacionalidade()%></td>
						<td><%=lista.get(i).getCelular()%></td>
						<td><%=lista.get(i).getSexo()%></td>
						<td><%=lista.get(i).getEmail()%></td>
						<td>
							<button style="background-color: green;">
								<a href="select?idclientes=<%=lista.get(i).getIdclientes()%>">Editar</a>
							</button>
							<button style="background-color: red;">
								<a href="delete?idclientes=<%=lista.get(i).getIdclientes()%>">Excluir</a>
							</button>
						</td>
					</tr>
					<%} %>
				</tbody>
			</table>
		</div>
		<button style="background-color: blue;"><a href="cadastre-se.html">Novo Cliente</a></button>
	</div>
</body>
</html>