<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Clientes</title>
<style><%@include file="/WEB-INF/assets/bootstrap/css/bootstrap.min.css"%></style>
<style><%@include file="/WEB-INF/css/style.css"%></style>
</head>
<body>
	<%@ page import="com.cruddao.dao.ClienteDao, com.cruddao.bean.*, java.util.*"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<div class="wrapper">
		<h1>Listagem de Clientes</h1>
		
		<% 
		List<Cliente> list = ClienteDao.getAllClientes();
		request.setAttribute("list", list);
		%>
		
		<table class="table">
			<tr>
				<th scope="col">ID</th>
				<th scope="col">CPF</th>
				<th scope="col">Nome</th>
				<th scope="col">Sobrenome</th>
				<th scope="col">Email</th>
				<th scope="col">Sexo</th>
				<th scope="col">Pais</th>
				<th scope="col">Editar</th>
				<th scope="col">Excluir</th>
			</tr>
				<c:forEach items="${list}" var="cliente">
					<tr>
						<th scope="row">${cliente.getId()}</th>
						<td>${cliente.getCpf()}</td>
						<td>${cliente.getNome()}</td>
						<td>${cliente.getSobrenome()}</td>
						<td>${cliente.getEmail()}</td>
						<td>${cliente.getSexo()}</td>
						<td>${cliente.getPais()}</td>
						<td><a href="editform.jsp?id=${cliente.getId()}">E</a></td>
						<td><a href="deletecliente.jsp?id=${cliente.getId()}">X</a></td>
					</tr>
				</c:forEach>
			
		</table>
		<a class="btn-form" href="addclienteform.jsp">Cadastar novo Cliente</a>
		<a class="underlineHover" href="index.jsp">Voltar</a>
	</div>	
</body>
</html>