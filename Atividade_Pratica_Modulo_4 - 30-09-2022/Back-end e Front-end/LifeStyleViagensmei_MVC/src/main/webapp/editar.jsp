<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Alterar Cliente</title>
<style>
body {
  background-color: lightblue;
}
h1 {
  text-align: center;
  }
button {
  background-color:green;
  border: 2px solid black;
  border-radius: 5px;
  color:white;
  font-size: 15px;
  }
  
 table, th, td {
  border:
 }
  
  
</style>
</head>
<body>
<script src="scripts/validador.js"></script>
	<h1>Alterar cliente</h1>
	<form name="frmCliente" action="update" style="center;">
		<table style="justify-content: center;">
        	<tr>
        		<td><input type="text" name="idclientes" readonly value="<%out.print(request.getAttribute("idclientes"));%>"></td>
        	</tr>
        	<tr>
        		<td><input type="text" name="nome" value="<%out.print(request.getAttribute("nome"));%>"></td>
        	</tr>
        	<tr>
        		<td><input type="text" name="sobrenome" value="<%out.print(request.getAttribute("sobrenome"));%>"></td>
        	</tr>
        	<tr>
        		<td><input type="date" name="dataNascimento" value="<%out.print(request.getAttribute("dataNascimento"));%>"></td>
        	</tr>
        	<tr>
        		<td><input type="text" name="cpf" value="<%out.print(request.getAttribute("cpf"));%>"></td>
        	</tr>
        	<tr>
        		<td><input type="text" name="nacionalidade" value="<%out.print(request.getAttribute("nacionalidade"));%>"></td>
        	</tr>
        	<tr>
        		<td><input type="text" name="celular" value="<%out.print(request.getAttribute("celular"));%>"></td>
        	</tr>
        	<tr>
        		<td><input type="text" name="sexo" value="<%out.print(request.getAttribute("sexo"));%>"></td>
        	</tr>
        	<tr>
        		<td><input type="text" name="email" value="<%out.print(request.getAttribute("email"));%>"></td>
        	</tr>
		</table>
		<input type="button" value="Salvar" onclick="validar()">
	</form>

</body>
</html>