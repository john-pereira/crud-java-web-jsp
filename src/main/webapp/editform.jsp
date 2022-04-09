<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Editar dados do Cliente</title>
</head>
<body>
	<%@page import="com.cruddao.bean.Cliente, com.cruddao.dao.ClienteDao" %>
	
	<% 
		String id = request.getParameter("id");
		Cliente cliente = ClienteDao.getRegistroById(Integer.parseInt(id));
	%>
<div class="wrapper">
  <div id="formContent">	
	<h1>Editar dados do Cliente</h1>
	
	<form action="editcliente.jsp" method="post">
		<td>ID :</td>
		<input type="text" readonly name="id" value="<%=cliente.getId()%>"/>
		<table class="table-form">
			<tr>
				<td>CPF :</td>
				<td><input type="text" name="cpf" value="<%=cliente.getCpf()%>"/></td>
			</tr>
			<tr>
				<td>Nome :</td>
				<td><input type="text" name="nome" value="<%=cliente.getNome()%>"/></td>
			</tr>
			<tr>
				<td>Sobrenome :</td>
				<td><input type="text" name="sobrenome" value="<%=cliente.getSobrenome()%>"/></td>
			</tr>
			<tr>
				<td>Email :</td>
				<td><input type="text" name="email" value="<%=cliente.getEmail()%>"/></td>
			</tr>
			<tr>
				<td>Sexo :</td>
				<td><input type="text" name="sexo" value="<%=cliente.getSexo()%>"/></td>
			</tr>
			<tr>
				<td>Pais :</td>
				<td><input type="text" name="pais" value="<%=cliente.getPais()%>"/></td>
			</tr>
			<tr>
				<td></td>
			</tr>
		</table>
		<input type="submit" name="button" value="Editar Cliente"/>
	</form>
	<br/>
	<a class="underlineHover" href="index.jsp">Voltar</a>
  </div>	
</div>	
</body>
</html>

<style>

a {
  color: #92badd;
  display:inline-block;
  text-decoration: none;
  font-weight: 400;
  margin-left: 100px;
}

h2 {
  text-align: center;
  font-size: 16px;
  font-weight: 600;
  text-transform: uppercase;
  display:inline-block;
  margin: 40px 8px 10px 8px; 
  color: #cccccc;
}

.wrapper {
  display: flex;
  align-items: center;
  flex-direction: column; 
  justify-content: center;
 
}

#formContent {
  -webkit-border-radius: 10px 10px 10px 10px;
  border-radius: 10px 10px 10px 10px;
  background: #fff;
  padding: 30px;
  width: 60%;
  
  position: relative;
  padding: 0px;
  -webkit-box-shadow: 0 30px 60px 0 rgba(0,0,0,0.3);
  box-shadow: 0 30px 60px 0 rgba(0,0,0,0.3);
  text-align: center;
}

.table-form{
	display: flex;
  align-items: center;
  flex-direction: column; 
  justify-content: center;
}

/* FORM TYPOGRAPHY*/

input[type=button], input[type=submit], input[type=reset]  {
  background-color: #56baed;
  border: none;
  color: white;
  padding: 15px 80px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  text-transform: uppercase;
  font-size: 13px;
  -webkit-box-shadow: 0 10px 30px 0 rgba(95,186,233,0.4);
  box-shadow: 0 10px 30px 0 rgba(95,186,233,0.4);
  -webkit-border-radius: 5px 5px 5px 5px;
  border-radius: 5px 5px 5px 5px;
  margin-left: 120px;
  -webkit-transition: all 0.3s ease-in-out;
  -moz-transition: all 0.3s ease-in-out;
  -ms-transition: all 0.3s ease-in-out;
  -o-transition: all 0.3s ease-in-out;
  transition: all 0.3s ease-in-out;
}

input[type=button]:hover, input[type=submit]:hover, input[type=reset]:hover  {
  background-color: #39ace7;
}

input[type=button]:active, input[type=submit]:active, input[type=reset]:active  {
  -moz-transform: scale(0.95);
  -webkit-transform: scale(0.95);
  -o-transform: scale(0.95);
  -ms-transform: scale(0.95);
  transform: scale(0.95);
}

input[type=text] {
  background-color: #f6f6f6;
  border: none;
  color: #0d0d0d;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 5px;
  width: 85%;
  border: 2px solid #f6f6f6;
  -webkit-transition: all 0.5s ease-in-out;
  -moz-transition: all 0.5s ease-in-out;
  -ms-transition: all 0.5s ease-in-out;
  -o-transition: all 0.5s ease-in-out;
  transition: all 0.5s ease-in-out;
  -webkit-border-radius: 5px 5px 5px 5px;
  border-radius: 5px 5px 5px 5px;
}

input[type=text]:focus {
  background-color: #fff;
  border-bottom: 2px solid #5fbae9;
}

input[type=text]:placeholder {
  color: #cccccc;
}

        .btn-form  {
  background-color: #56baed;
  border: none;
  color: white;
  padding: 15px 80px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  text-transform: uppercase;
  font-size: 13px;
  -webkit-box-shadow: 0 10px 30px 0 rgba(95,186,233,0.4);
  box-shadow: 0 10px 30px 0 rgba(95,186,233,0.4);
  -webkit-border-radius: 5px 5px 5px 5px;
  border-radius: 5px 5px 5px 5px;
  margin: 5px 20px 40px 20px;
  -webkit-transition: all 0.3s ease-in-out;
  -moz-transition: all 0.3s ease-in-out;
  -ms-transition: all 0.3s ease-in-out;
  -o-transition: all 0.3s ease-in-out;
  transition: all 0.3s ease-in-out;
}
/* Simple CSS3 Fade-in Animation */
.underlineHover:after {
  display: block;
  left: 0;
  bottom: -10px;
  width: 0;
  height: 2px;
  background-color: #56baed;
  content: "";
  transition: width 0.2s;
}

.underlineHover:hover {
  color: #0d0d0d;
}

.underlineHover:hover:after{
  width: 100%;
}
</style>