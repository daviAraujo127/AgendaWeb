<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="br.senai.sp.cfp127.model.Usuario" %>	
<%
	Usuario usuario = new Usuario();
	// Converter uma string em um objeto do tipo usuario (casting)
	usuario = (Usuario) session.getAttribute("usuario");
	
	if (usuario == null){
		response.sendRedirect("login.html");
	}else{
	%>
	<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/bootstrap.css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body class="bg-dark">
	<!-- Cabe�alho -->
	<div class="bg-info text-white">
		<div class="container">
			<div class="row">
				<div class="col-md-1">
					<img src="imagens/agenda64.png">
				</div>
				<div class="col-md-11">
					<h1>Agenda Eletr�nica</h1>
					<h6>Contatos e Compromissos</h6>
				</div>
			</div>
		</div>
	</div>
	<!-- Corpo -->
	<div class="container mt-4 fluid">
		<div class="row">
			<div class="col-md-4">
				<div class="card">
					<%@ include file = "painelUsuario.jsp"%>
				</div>
				<div class="card mt-4">
					<%@ include file = "menu.html"%>
				</div>
			</div>
			<div class="col-md-8">
				<div class="card">
					<div class="card-header bg-info">
						<h5 class="text-white">Bem-vindo</h5>
					</div>
					<div class="card-body">
						<table class="table table-hover">
							<thead>
								<tr>
									<th scope="col">#</th>
									<th scope="col">First</th>
									<th scope="col">Last</th>
									<th scope="col">Handle</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th scope="row">1</th>
									<td>Mark</td>
									<td>Otto</td>
									<td>@mdo</td>
								</tr>
								<tr>
									<th scope="row">2</th>
									<td>Jacob</td>
									<td>Thornton</td>
									<td>@fat</td>
								</tr>
								<tr>
									<th scope="row">3</th>
									<td colspan="2">Larry the Bird</td>
									<td>@twitter</td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="card-footer"></div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
	<%	
	}
	%>
