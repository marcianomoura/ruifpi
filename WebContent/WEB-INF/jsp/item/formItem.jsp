<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Item Alimentar</title>
</head>
<body>

<div style="margin-top: 60px;">
	<c:import url="/header.jsp"></c:import>
</div>

<div class="col-md-12">
	<div class="panel panel-default">
		<div class="panel-heading">Cadastro dos alimentos do refeit�rio</div>
		<div class="panel-body">
			<label class="small" style="color: red" > * Campos Obrigat�rios</label><br>
			<form class="form-horizontal" action='<c:url value="/item/save"></c:url>' method="post">
				<fieldset>				
					<input type="hidden" name="item.id" value="${item.id}" >	
				
					<div class="control-group col-md-7">
					  <label class="control-label small" for="nomeItem">* Descri��o do Alimento</label>
					  <small style="color: red" >${errors.from('descricao')}</small>
					  <div class="controls">
					    <input  name="item.descricao" value="${item.descricao}"  type="text"   class="form-control" required="">
					    <p class="help-block">Ex: Arroz a grega, Frango Assado</p>
					  </div>
					</div>			
				
					<div class="control-group col-md-4">
					  <label class="control-label small" for="valorCalorico">* Total de calorias (quantidade/aluno)</label>
					  <small style="color: red" >${errors.from('valorCalorico')}</small>
					  <div class="controls">
					   				    
					    <input id="valorCalorico"  name="item.valorCalorico" value="<fmt:formatNumber maxFractionDigits="2" value="${item.valorCalorico}" />"
					     type="text"  class="form-control" required="">
					     <p class="help-block">Ex: 200 Kcal</p>
					  </div>
					</div>				
								
					<div class="control-group col-md-5">
					  <label class="control-label small" for="beneficios">* Informe algum tipo de benef�cios do alimento � saude </label>
					  <small style="color: red" >${errors.from('beneficios')}</small>
					  <div class="controls">
					    <input required name="item.beneficios" value="${item.beneficios}" type="text" class="form-control">
					    <p class="help-block">ex: Recomendado para diab�ticos ou hipertensos</p>
					  </div>
					</div>
				
					<div class="control-group col-md-5">
					  <label class="control-label small" for="contraIndicacoes">* Contra Indica��o</label>
					  <small style="color: red" >${errors.from('maleficios')}</small>
					  <div class="controls">
					    
					    <input required name="item.maleficios" value="${item.maleficios}" type="text" class="form-control">
					    <p class="help-block">Ex: N�o recomendado para diab�ticos</p>
					  </div>
					</div>					
					
					<div class="control-group col-md-4">
					  <label class="control-label small" for="classeNutricional">* Classe Nutricional ao qual pertence</label>
					  <small style="color: red" >${errors.from('classeNutricional')}</small>
					  <div class="controls">
					    <select  name="item.classeNutricional.id" class="form-control" required>
					      
					      <option value="${item.classeNutricional.id}">${item.classeNutricional.descricao}</option>
					      
					      <c:forEach items="${classes}" var="item">
					      		<option value="${item.id}">${item.descricao}</option>
					      </c:forEach>
					    </select>
					  </div>
					</div>
				
					<div class="control-group col-md-12">
					  <label class="control-label" for="button1id"></label>
					  <div class="controls">
					    <button type="submit" class="btn btn-primary"><span class="glyphicon glyphicon-saved" aria-hidden="true"></span> Cadastrar</button>
					    <a class="btn btn-warning" href='<c:url value="/item"></c:url>'>
						    	<span class="glyphicon glyphicon-remove" aria-hidden="true"></span> Desistir
						    </a>
					  </div>
					</div>
				
				</fieldset>
			</form>		
		</div>
	</div>
	
</div>


</body>
</html>