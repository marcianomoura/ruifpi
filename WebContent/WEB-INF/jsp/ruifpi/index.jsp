<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Pagina Inicial</title>
</head>
<body>

<div style="margin-top: 80px;">
	<c:import url="/header.jsp"></c:import>
</div>

<div class="">
	<div class="jumbotron">
		<div class="container" align="center">
			<img class="img-responsive img-circle" src='<c:url value="img/almoco.jpg"></c:url>' alt="">
		</div>
	
		<c:if test="${usuarioSessao.usuario != null}">
			<div class="container" align="center">
				<h1>Ol�, <small> ${usuarioSessao.usuario.primeiroNome}</small></h1>
			  <p><small>Seja Bem vindo(a) ao sistema de avalia��o e sugest�o de card�pio do IFPI</small> </p>	
			</div>
		</c:if>
		
		<c:if test="${funcionarioSessao.funcionario != null}">
			<div class="container" align="center">
				<h1>Ol�, <small> ${funcionarioSessao.funcionario.funcao} (a) ${funcionarioSessao.funcionario.nome}</small></h1>
			  <p><small>Seja Bem vindo(a) ao sistema de gerenciamento, avalia��o e sugest�o de card�pio do IFPI</small> </p>	
			</div>
		</c:if>	
		
	</div>
</div>

</body>
</html>