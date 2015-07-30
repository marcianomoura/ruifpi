<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>�rea Livre</title>

</head>
<body>

<c:import url="/base.jsp"></c:import>

<nav class="navbar navbar-default navbar-fixed-top">
    <div class="container">
        <div class="navbar-header page-scroll">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">Ru-IFPI</a>
        </div>
        
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                <li class="page-scroll">
                    <a href="#cardapio">Card�pio</a>
                </li>
                
                <li class="page-scroll">
                    <a href="#avaliacao">Avalia��o do card�pio</a>
                </li>
                
                <li class="page-scroll">
                    <a href="#sugestao">Sugest�es de card�pio</a>
                </li>
                
                <li class="page-scroll">
                    <a href="#" data-toggle="modal"  data-target="#modalAutenticacao"><span class="glyphicon glyphicon-info"></span>Entrar</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<c:import url="/mensagens.jsp"></c:import>

<div class="content-wrapper">
    <section class="primary" id="cardapio">
    
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h3>Cardapio do dia</h3>
                    <hr class="star-primary">
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4">
                    <div class="panel panel-default" style="max-height: 500px; overflow-y: scroll; overflow-x: hidden; ">
						<div class="panel-heading">Card�pio</div>
						<div class="panel-body">
							<div class="col-md-12">
							    <div class="thumbnail">
							      <img class="img-responsive" src="img/almoco.jpg" width="100%">
							    </div>
							</div>
							
							<div class="col-md-12">
								<ul class="list-group">
								  <li class="list-group-item">Arroz Integral<span class="badge">70</span></li>
								  <li class="list-group-item">Bisteca suina assada<span class="badge">90</span></li>
								  <li class="list-group-item">Macarr�o<span class="badge">50</span></li>
								  <li class="list-group-item">Suco de Abacaxi<span class="badge">20</span></li>
								</ul>
							</div>
						</div>
					</div> 
                </div>
                
                <div class="col-sm-4">
                    <div class="panel panel-default" style="max-height: 500px; overflow-y: scroll; overflow-x: hidden; ">
						<div class="panel-heading">Informa��es Nutricionais do card�pio</div>
						<div class="panel-body">
							<div class="col-md-12">
							    <div class="thumbnail">
							      <img class="img-responsive" src="img/almoco.jpg" width="100%">
							    </div>
							</div>
							
							<div class="col-md-12">
								<ul class="list-group">
								  <li class="list-group-item">Total de Calorias<span class="badge">760 Kcal</span></li>
								  <li class="list-group-item">Fonte de Vitaminas A e D</li>
								  <li class="list-group-item">Macarr�o<span class="badge">50</span></li>
								  <li class="list-group-item">Suco de Abacaxi<span class="badge">20</span></li>
								</ul>
							</div>
						</div>
					</div>    
                </div>
                
                <div class="col-sm-4">
                    <div class="panel panel-default" style="max-height: 500px; overflow-y: scroll; overflow-x: hidden; ">
						<div class="panel-heading">Contra Indica��es</div>
						<div class="panel-body">
							<div class="col-md-12">
							    <div class="thumbnail">
							      <img class="img-responsive" src="img/almoco.jpg" width="100%">
							    </div>
							</div>
							
							<div class="col-md-12">
								<ul class="list-group">
								  <li class="list-group-item">Total de Calorias<span class="badge">760 Kcal</span></li>
								  <li class="list-group-item">Contra indicado para alergicos a camar�o</li>
								  <li class="list-group-item">Colesterol alto</li>
								</ul>
							</div>
						</div>
					</div>    
                </div>
                
            </div>
        </div>
    </section>
    <section class="primary" id="avaliacao">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h3>Avalia��o de Card�pio</h3>
                    <hr class="star-primary">
                </div>
            </div>
            <div class="col-md-12">
                <div class="panel panel-default" style="max-height: 500px; overflow-y: scroll; overflow-x: hidden; ">
					<div class="panel-heading">Resultado da avalia��o do card�pio de hoje</div>
					<div class="panel-body">
						<div class="col-md-6">
						    <div class="thumbnail">
						      <img class="img-responsive" src="img/almoco.jpg" width="100%">
						    </div>
						</div>
						
						<div class="col-md-6">
							<ul class="list-group">
							  <li class="list-group-item">Excelente<span class="badge">70</span></li>
							  <li class="list-group-item">Bom<span class="badge">90</span></li>
							  <li class="list-group-item">Razo�vel<span class="badge">50</span></li>
							  <li class="list-group-item">Ruim<span class="badge">20</span></li>
							  <li class="list-group-item">Muito Ruim<span class="badge">10</span></li>
							</ul>
						</div>
					</div>
				</div>
            </div>
        </div>
    </section>
    
    <section class="primary" id="sugestao">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h3>Sugest�es de Card�pio</h3>
                    <hr class="star-primary">
                </div>
            </div>
            
            <div class="col-md-12">
                <div class="panel panel-default" style="max-height: 500px; overflow-y: scroll; overflow-x: hidden; ">
					<div class="panel-heading">Card�pio mais sugerido</div>
					<div class="panel-body">
						<div class="col-md-6">
						    <div class="thumbnail">
						      <img class="img-responsive" src="img/almoco.jpg" width="100%" alt="">
						    </div>
						</div>
						
						<div class="col-md-6">
							<ul class="list-group">
							  <li class="list-group-item">Arroz Maria Izabel<span class="badge">60 sugest�es</span></li>
							  <li class="list-group-item">Salada Verde<span class="badge">66 sugest�es</span></li>
							  <li class="list-group-item">Suco de Abacaxi<span class="badge">30 sugest�es</span></li>
							  <li class="list-group-item">Frango a Milanesa<span class="badge">20 sugest�es</span></li>
							  <li class="list-group-item">Creme de Galinha<span class="badge">50 sugest�es</span></li>
							</ul>
						</div>
						<a id="back-to-top" href="#" class="btn btn-primary btn-lg back-to-top" role="button" title="Topo da P�gina" 
						data-toggle="tooltip" data-placement="left"><span class="glyphicon glyphicon-chevron-up"></span></a>
					</div>
				</div>
            </div>
        </div>
    </section>
</div>


<!-- Modal -->
<div class="modal fade" id="modalAutenticacao" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel"></h4>
      </div>
	      <div class="modal-body">
	      <div class="bs-example bs-example-tabs" data-example-id="togglable-tabs">			
		    <ul id="myTabs" class="nav nav-tabs" role="tablist">
		      <li role="presentation" class="active"><a href="#usuario" role="tab" id="profile-tab" data-toggle="tab" aria-controls="profile" aria-expanded="true">Area do Aluno</a></li>
		      <li role="presentation" class=""><a href="#administracao" id="home-tab" role="tab" data-toggle="tab" aria-controls="home" aria-expanded="true">Administra��o</a></li>
		    </ul>
		    
		    <div id="myTabContent" class="tab-content">
		      <div role="tabpanel" class="tab-pane fade active in" id="usuario" aria-labelledby="profile-tab">	      	
		        <form action='<c:url value="/autenticacao/usuario"></c:url>' method="get">
					  <fieldset>
					  	  <h3 class="form-signin-heading">Alunos e Servidores </h3>	       
						  <hr class="colorgraph"><br>
						  <small style="color: red" >${errors.from('usuario')}</small>
						  <input type="text" class="form-control" name="usuario.login" value="${usuario.login}" 
						  	placeholder="Login" required="" autofocus="" />
						  <br>
						  <input type="password" class="form-control" name="usuario.senha" value="${usuario.senha}"
						  placeholder="Senha" required=""/>     		  
						 
						  <button class="btn btn-lg btn-primary btn-block" type="Submit">Autenticar</button>	
					</fieldset>
				</form>

		      </div>
		      
		      <div role="tabpanel" class="tab-pane fade" id="administracao" aria-labelledby="home-tab">
		        	<form action='<c:url value="/autenticacao/administracao"></c:url>' method="get">
					   	<fieldset>       
							<h3 class="form-signin-heading">Administra��o do Refeit�rio</h3>
						  	<hr class="colorgraph"><br>
						  	<small style="color: red" >${errors.from('funcionario')}</small>
						  	<input type="text" class="form-control" name="funcionario.login" value="${funcionario.login}" 
						  		placeholder="Username" required="" autofocus="" />
						  	<br>
							<input type="password" class="form-control" name="funcionario.senha" value="${funcionario.senha}"
						  		placeholder="Password" required=""/>     		  
						 
						  	<button class="btn btn-lg btn-primary btn-block" type="Submit">Autenticar</button>	
						</fieldset>
					</form>
		      </div>
		      
		    </div>
  		</div>
			
	      </div>
      <div class="modal-footer">
		<button type="button" class="btn btn-default" data-dismiss="modal">Fechar</button>
      </div>
    </div>
  </div>
</div>


</body>
</html>