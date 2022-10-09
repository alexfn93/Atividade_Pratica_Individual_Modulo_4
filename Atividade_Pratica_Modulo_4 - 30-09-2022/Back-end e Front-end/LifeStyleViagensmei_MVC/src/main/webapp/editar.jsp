<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="pt-br" xmlns:mso="urn:schemas-microsoft-com:office:office"
	xmlns:msdt="uuid:C2F41010-65B3-11d1-A29F-00AA00C14882">
<head>
<meta charset="UTF-8">
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

button {
	background-color: green;
	border: 2px solid black;
	border-radius: 5px;
	color: white;
	font-size: 15px;
}
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
	<br>
	<!---Fim do menu-->

	<h1>Alterar cliente</h1>
	<form name="frmCliente" action="update">

		<table>
			<tr>
				<td>ID Cliente:<input type="text" name="idclientes" readonly
					value="<%out.print(request.getAttribute("idclientes"));%>"></td>
			</tr>
			<tr>
				<td>Nome:<input type="text" name="nome"
					value="<%out.print(request.getAttribute("nome"));%>"></td>
			</tr>
			<tr>
				<td>Sobrenome:<input type="text" name="sobrenome"
					value="<%out.print(request.getAttribute("sobrenome"));%>"></td>
			</tr>
			<tr>
				<td>Data de Nascimento:<input type="date" name="dataNascimento"
					value="<%out.print(request.getAttribute("dataNascimento"));%>"></td>
			</tr>
			<tr>
				<td>CPF:<input type="text" name="cpf"
					value="<%out.print(request.getAttribute("cpf"));%>"></td>
			</tr>
			<tr>
				<td>Nacionalidade:<input type="text" name="nacionalidade"
					value="<%out.print(request.getAttribute("nacionalidade"));%>"></td>
			</tr>
			<tr>
				<td>Celular:<input type="text" name="celular"
					value="<%out.print(request.getAttribute("celular"));%>"></td>
			</tr>
			<tr>
				<td>Sexo:<input type="text" name="sexo"
					value="<%out.print(request.getAttribute("sexo"));%>"></td>
			</tr>
			<tr>
				<td>E-mail:<input type="text" name="email"
					value="<%out.print(request.getAttribute("email"));%>"></td>
			</tr>
		</table>
		<button value="Salvar" onclick="validar()">Salvar</button>
	</form>

</body>
</html>