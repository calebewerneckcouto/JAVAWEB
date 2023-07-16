<%@page import="model.ModelGeral"%>
<%@page import="model.ModelCadastroMateriais"%>
<%@page import="model.ModelCalculadora"%>
<%@page import="dao.DAOCalculadoraCustos"%>
<%@page import="dao.DAOCadastroImpressoras"%>
<%@page import="model.ModelCadastroImpressoras"%>
<%@page import="java.util.List"%>
<%@page import="dao.DAOVideos"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.ModelVideos"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  	




<!DOCTYPE html>
<html lang="en">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<jsp:include page="head.jsp"></jsp:include>

<body>
	<!-- Pre-loader start -->

	<jsp:include page="theme-loader.jsp"></jsp:include>

	<!-- Pre-loader end -->
	<div id="pcoded" class="pcoded">
		<div class="pcoded-overlay-box"></div>
		<div class="pcoded-container navbar-wrapper">

			<jsp:include page="navbar.jsp"></jsp:include>

			<div class="pcoded-main-container">
				<div class="pcoded-wrapper">

					<jsp:include page="navbarmainmenu.jsp"></jsp:include>

					<div class="pcoded-content">
						<!-- Page-header start -->

						<jsp:include page="page-header.jsp"></jsp:include>

						<!-- Page-header end -->
						<div class="pcoded-inner-content">
							<!-- Main-body start -->
							<div class="main-body">
								<div class="page-wrapper">
									<!-- Page-body start -->
									<div class="page-body">

										<div class="row">
											<div class="col-sm-12">
												<!-- Basic Form Inputs card start -->
												<div class="card">

													<div class="card-block">
														<h6 class="sub-title" style="color: blue;">Calculadora de Custos</h6>
															
															 <form class="form-material"  action="<%= request.getContextPath() %>/SertvletCalculadoraCustos" method="post" id="formVideos" >

														
															
														<h4 class="sub-title" style="color: blue;">Detalhes da Impressão</h4>
														
														
														
														
														    
                                                              
                                                             <div class="form-group form-default form-static-label">
                                                                <input value="${usuarioid}" readonly="readonly" type="text" name="idusuariologado" id="idusuariologado" class="form-control" required="required" >
                                                                <span class="form-bar"></span>
                                                                <label class="float-label" style="color: black">Id Usuario Logado:</label>
                                                                
                                                            </div>
                                                            
                                                            
														
														
														
	
  
  
  
  
  
  
 <%
 // Criar uma instância da classe de acesso aos dados (DAO) ou qualquer classe que lide com a recuperação dos dados do banco de dados
 DAOCalculadoraCustos daoCalculadoraCustos = new DAOCalculadoraCustos();
 
 // Chamar o método buscarVideos() para obter os dados do banco de dados
 List<ModelCalculadora> calculadora = daoCalculadoraCustos.buscarCalculadora();
 
 DAOCalculadoraCustos daoCalculadoraCustos2 = new DAOCalculadoraCustos();
 List<ModelCadastroImpressoras>impressoras = daoCalculadoraCustos2.buscarNomeImpressora();
 
 
 

 DAOCalculadoraCustos daoCalculadoraCustos3 = new DAOCalculadoraCustos();
 List<ModelCadastroMateriais> materiais = daoCalculadoraCustos3.buscarfabricante();
 
 
 
 DAOCalculadoraCustos daoCalculadoraCustos4 = new DAOCalculadoraCustos();
	List<ModelGeral> consumoenergia = daoCalculadoraCustos4.buscarconsumodeenergiausuario();
 
	request.setAttribute("consumoenergia", consumoenergia);
	System.out.println(consumoenergia);
 
 request.setAttribute("materiais", materiais);
 // Passar os dados para a página JSP
 request.setAttribute("calculadora", calculadora);
 request.setAttribute("impressoras", impressoras);
 
 
 

 

     

%>

  
         
                                                      <div class="form-group form-default form-static-label" >
												  <h6>Nome da Impressora:</h6>
												  <select     id="impressora" name="impressora" required="required" onchange="updateConsumoEnergia()" onchange="valoreletricidadecustos()" >
												    <c:forEach items='${impressoras}' var='ml'     >
												     
												     <option  value="${ml.consumodeenergia}">
                ${ml.nomedaimpressora} 
            </option>
												     
												 
												    </c:forEach>
												  </select>
												 
												  
												</div>
													
													
													
													   
                                                             <div class="form-group form-default form-static-label">
                                                             
                                                       
												     
												     <input  value="${consumoenergiausuario}" readonly="readonly"   type="text" name="consumo" id="consumo" class="form-control" required="required"     >
                                
                                                                
                                                                <span class="form-bar"></span>
                                                                <label class="float-label" style="color: black">Consumo de Energia (Impressora):</label>
                                                                
                                                            </div>
                                                            
                                                             <div class="form-group form-default form-static-label" >
												
												  <select  hidden="hidden"   id="custodeenergiacadastradopelousuario" name="custodeenergiacadastradopelousuario" required="required" onchange="updateConsumoEnergia()" >
												    <c:forEach items='${consumoenergia}' var='ml'     >
												     <c:if test="${ml.idusuariologado == usuarioid}">
												     <option  value="${ml.custoenergia}">
                ${ml.idusuariologado} 
            </option>
												</c:if>     
												 
												    </c:forEach>
												  </select>
												 
												  
												</div>
                                                            
                                                              
                                                             <div class="form-group form-default form-static-label">
                                                             
                                                       
												   
												     <input    readonly="readonly"   type="text" name="valorcustodeenergia" id="valorcustodeenergia" class="form-control" required="required"  onchange="valoreletricidadecustos()"   >
                                                                     
                                                                
                                                                <span class="form-bar"></span>
                                                                <label class="float-label" style="color: black">Valor do Consumo de Energia (Usuario):</label>
                                                                
                                                            </div>
                                                            
                                                            
															
                                                             
                                                      <div class="form-group form-default form-static-label" >
												  <h6>Nome do Material/Fabricante:</h6>
												  <select  id="filamento" name="filamento" required="required" >
												    <c:forEach items='${materiais}' var='ml'     >
												     
												      <option value="${ml.fabricante}">${ml.fabricante}</option>
												 
												    </c:forEach>
												  </select>
												</div>
													
								
													
													        
                                                              
                                                             <div class="form-group form-default form-static-label">
                                                             
                                                                <input  type="text" name="peso" id="peso" class="form-control" required="required" >
                                                           
                                                              
                                                                <span class="form-bar"></span>
                                                                <label class="float-label" style="color: black">Peso (gramas):</label>
                                                                
                                                            </div>
                                                            
                                                            
                                                             
                                                                 
                                                             <div class="form-group form-default form-static-label">
                                                              <input value="00:00" type="text" name="tempoimpressao" id="tempoimpressao" class="form-control" required="required" oninput="formatarHora(this)" onchange="valoreletricidadecustos()">
                                                                <span class="form-bar"></span>
                                                                <label class="float-label" style="color: black">Tempo Impressão:(hh:mm)</label>
                                                                
                                                            </div>
                                                            
                                                            
                                                                   
                                                             <div class="form-group form-default form-static-label">
                                                              <input  type="text" name="tempoimpressaoconvertidominutos" id="tempoimpressaoconvertidominutos" class="form-control" required="required" oninput="formatarHora(this)" onchange="valoreletricidadecustos()">
                                                                <span class="form-bar"></span>
                                                                <label class="float-label" style="color: black">Tempo Impressão:(minutos)</label>
                                                                
                                                            </div>
                                                            
                                                         
                                                            
                                                            
                                                            
                                                             
                                                              <h4 class="sub-title" style="color: blue;">Preparo da Impressão</h4>
                                                              
                                                              
                                                               
                                                             <div class="form-group form-default form-static-label">
                                                                <input value="00:00" type="text" name="preparacao" id="preparacao" class="form-control"   onchange="calcularSomaPreparoImpressao();"     oninput="formatarHora(this)"  onchange="somacustos()">
                                                                <span class="form-bar"></span>
                                                                <label class="float-label" style="color: black">Preparação: (minutos)</label>
                                                                
                                                            </div>
                                                                                      
 
                                                                 
                                                             <div class="form-group form-default form-static-label">
                                                                <input value="00:00" type="text" name="fatiamento" id="fatiamento" class="form-control" onchange="calcularSomaPreparoImpressao();" oninput="formatarHora(this)"  onchange="somacustos()">
                                                                <span class="form-bar"></span>
                                                                <label class="float-label" style="color: black">Fatiamento: (minutos)</label>
                                                                
                                                            </div>
                                                            
                                                          
                                                                   
                                                             <div class="form-group form-default form-static-label">
                                                                <input value="00:00" type="text" name="trocamaterial" id="trocamaterial" class="form-control" onchange="calcularSomaPreparoImpressao();" oninput="formatarHora(this)"  onchange="somacustos()">
                                                                <span class="form-bar"></span>
                                                                <label class="float-label" style="color: black">Troca de Material: (minutos)</label>
                                                                
                                                            </div>
                                                            
                                                          
                                                                          
                                                             <div class="form-group form-default form-static-label">
                                                                <input value="00:00" type="text" name="transferenciaeinicio" id="transferenciaeinicio" class="form-control" onchange="calcularSomaPreparoImpressao();" oninput="formatarHora(this)" onchange="somacustos()" >
                                                                <span class="form-bar"></span>
                                                                <label class="float-label" style="color: black">Transferência e Inicio: (minutos)</label>
                                                                
                                                            </div>
                                                            
                                                                            
                                                             <div class="form-group form-default form-static-label">
                                                                <input value="0" type="text" name="somapreparacao" id="somapreparacao"     class="form-control"  readonly="readonly" onchange="somacustos()"  >
                                                                <span class="form-bar"></span>
                                                                <label class="float-label" style="color: black">Soma: (minutos)</label>
                                                                
                                                            </div>
                                                            
                                                            
                                                                  <h4 class="sub-title" style="color: blue;">Pós-Processamento</h4>
                                                            
                                                                              
                                                             <div class="form-group form-default form-static-label">
                                                                <input value="00:00" type="text" name="remocaoimpressao" id="remocaoimpressao" class="form-control"   onchange="calcularSomaPosProcessamento();"  oninput="formatarHora(this)"   onchange="somacustos()">
                                                                <span class="form-bar"></span>
                                                                <label class="float-label" style="color: black">Remoção da Impressão: (minutos)</label>
                                                                
                                                            </div>
                                                            
                                                            
                                                                                
                                                             <div class="form-group form-default form-static-label">
                                                                <input value="00:00" type="text" name="remocaosuportes" id="remocaosuportes" class="form-control"  onchange="calcularSomaPosProcessamento();" oninput="formatarHora(this)" onchange="somacustos()" >
                                                                <span class="form-bar"></span>
                                                                <label class="float-label" style="color: black">Remoção dos Suportes: (minutos)</label>
                                                                
                                                            </div>
                                                            
                                                            
                                                                                  
                                                             <div class="form-group form-default form-static-label">
                                                                <input value="00:00" type="text" name="trabalhoadicional" id="trabalhoadicional" class="form-control" onchange="calcularSomaPosProcessamento();" oninput="formatarHora(this)"   onchange="somacustos()">
                                                                <span class="form-bar"></span>
                                                                <label class="float-label" style="color: black">Trabalho Adicional: (minutos)</label>
                                                                
                                                            </div>
                                                            
                                                            
                                                              
                                                                            
                                                             <div class="form-group form-default form-static-label">
                                                                <input value="0"  type="text" name="somaposprocessamento"     id="somaposprocessamento" class="form-control"  readonly="readonly"  onchange="somacustos()" >
                                                                <span class="form-bar"></span>
                                                                <label class="float-label" style="color: black">Soma: (minutos)</label>
                                                                
                                                            </div>
                                                            
                                                             <h4 class="sub-title" style="color: blue;">Variados</h4>
                                                            
                                                            
                                                            
                                                            
                                                                                       
                                                             <div class="form-group form-default form-static-label">
                                                                <input value="00:00" type="text" name="consumiveis" id="consumiveis" class="form-control"   oninput="formatarHora(this)"  onchange="valorconsumiveis ()" onchange="somacustos()">
                                                                <span class="form-bar"></span>
                                                                <label class="float-label" style="color: black">Consumíveis: (minutos)</label>
                                                                
                                                            </div>
                                                            
                                                             <div class="form-group form-default form-static-label">
                                                                <input  type="text" name="somaconsumiveis"  value="0"   id="somaconsumiveis" class="form-control"  readonly="readonly" onchange="somacustos()" onchange="somacustos()" >
                                                                <span class="form-bar"></span>
                                                                <label class="float-label" style="color: black">Soma: (minutos)</label>
                                                                
                                                            </div>
                                                            
                                                             <h4 class="sub-title" style="color: blue;">Custos</h4>
                                                             
                                                             
                                                                <div class="form-group form-default form-static-label">
                                                                <input value="0"  type="text" name="filamentovalor" id="filamentovalor" class="form-control"  onchange="somasubtotalincluindoperdas()"  onchange="somacustos()"  >
                                                                <span class="form-bar"></span>
                                                                <label class="float-label" style="color: black">Filamento(R$):</label>
                                                                
	                                                            </div>
	                                                            
	                                                            
	                                                             
	                                                                <div class="form-group form-default form-static-label">
	                                                             
                                                                <input  value="0"  type="text" name="eletricidadevalor" id="eletricidadevalor" class="form-control"   onchange="somasubtotalincluindoperdas()" onchange="somacustos()"   >
                                                                <span class="form-bar"></span>
                                                                <label class="float-label" style="color: black">Eletricidade(R$):</label>
                                                               
	                                                            </div>
	                                                           
	                                                            
	                                                            
	                                                            
	                                                                <div class="form-group form-default form-static-label">
	                                                             
                                                                <input   value="0"  type="text" name="depreciacaomaquina" id="depreciacaomaquina" class="form-control"   onchange="somasubtotalincluindoperdas()"  onchange="somacustos()"  >
                                                                <span class="form-bar"></span>
                                                                <label class="float-label" style="color: black">Depreciação da Impressora(R$):</label>
                                                               
	                                                            </div>
	                                                           
	                                                            
	                                                            
	                                                                <div class="form-group form-default form-static-label">
                                                                <input  value="0" type="text" name="preparacaocustos" id="preparacaocustos" class="form-control"  onchange="somasubtotalincluindoperdas()"  onchange="somavalorespreparacaoposconsumiveis()" readonly="readonly" onchange="somacustos()" >
                                                                <span class="form-bar"></span>
                                                                <label class="float-label" style="color: black">Preparacação(R$):</label>
                                                                
	                                                            </div>
	                                                            
	                                                            
	                                                              
	                                                  
	                                                                <div class="form-group form-default form-static-label">
                                                                <input value="0" type="text" name="posprocessamentocustos" id="posprocessamentocustos" class="form-control"    onchange="somasubtotalincluindoperdas()" onchange="somavalorespreparacaoposconsumiveis()" readonly="readonly" onchange="somacustos()">
                                                                <span class="form-bar"></span>
                                                                <label class="float-label" style="color: black">Pós-Processamento(R$):</label>
                                                                
	                                                            </div>
	                                                            
	                                                            
	                                                             
	                                                                <div class="form-group form-default form-static-label">
                                                                <input value="0" type="text" name="consumiveiscustos" id="consumiveiscustos" class="form-control"   readonly="readonly"  onchange="somacustos()" onchange="somasubtotalincluindoperdas()" >
                                                                <span class="form-bar"></span>
                                                                <label class="float-label" style="color: black">Consumíveis(R$):</label>
                                                                
	                                                            </div>
	                                                            
                                                               
	                                                                <div class="form-group form-default form-static-label">
                                                                <input  value="0" type="text" name="subtotal" id="subtotal" class="form-control"   readonly="readonly" onchange="somasubtotalincluindoperdas()" >
                                                                <span class="form-bar"></span>
                                                                <label class="float-label" style="color: black">Subtotal(R$):</label>
                                                                
	                                                            </div>
	                                                            
	                                                            
	                                                            
	                                                                <div class="form-group form-default form-static-label">
                                                                <input value="0" type="text" name="incluindoperdas" id="incluindoperdas" class="form-control"    onchange="lucroreal()" onchange="somasubtotalincluindoperdas()" >
                                                                <span class="form-bar"></span>
                                                                <label class="float-label" style="color: black">Incluindo Perdas(R$):</label>
                                                                
	                                                            </div>
	                                                            
	                                                           <h4 class="sub-title" style="color: blue;">Orçamento</h4>

	                                                             
	                                                                   <div class="form-group form-default form-static-label">
                                                                <input  type="text" name="lucroporcentagem" id="lucroporcentagem" class="form-control"   onchange="lucroreal()"  onchange="somasubtotalincluindoperdas()" >
                                                                <span class="form-bar"></span>
                                                                <label class="float-label" style="color: black">Informe a Porcentagem de Lucro que deseja (%):</label>
                                                                
	                                                            </div>
	                                                            
	                                                            
	                                                            
	                                                            
	                                                                <div class="form-group form-default form-static-label">
                                                                <input  type="text" name="lucrovalor" id="lucrovalor" class="form-control"   readonly="readonly"  onchange="somasubtotalincluindoperdas()" >
                                                                <span class="form-bar"></span>
                                                                <label class="float-label" style="color: black">Lucro(R$):</label>
                                                                
	                                                            </div>
	                                                            
	                                                            
	                                                            
	                                                            
	                                                                <div class="form-group form-default form-static-label">
                                                                <input  type="text" name="precofinal" id="precofinal" class="form-control"   onchange="somasubtotalincluindoperdas()"  >
                                                                <span class="form-bar"></span>
                                                                <label class="float-label" style="color: black">Preço Final(R$):</label>
                                                                
	                                                            </div>
                                                            
                                                            
                                                            
                                                            <button  class="btn btn-success waves-effect waves-light">Salvar</button>
                                                            
                                                              
												               <a href="<%=request.getContextPath() %>/SertvletCadastroImpressoras?acao=listarcadastroimpressoras"  class="btn btn-primary waves-effect waves-light" >Cadastro de Impressoras</a>
												           <a  href="<%=request.getContextPath() %>/SertvletCadastroMateriais?acao=listarmateriais" class="btn btn-info waves-effect waves-light" >Cadastro de Materiais</a>
												          
												               <a  href="<%=request.getContextPath() %>/SertvletCadastroGeral?acao=listargeral" class="btn btn-secondary"  >Cadastro Geral</a>
												        
													
															

														</form>
													</div>

												</div>
											</div>
										</div>
										
										
										 <span id="msg">${msg}</span>
										 
																	
														
													<div style="height: 300px; overflow: scroll;">
											<table class="table" id="tabelaresultadosview">
												<thead>
													<tr>
															<th scope="col">ID</th>
																<th scope="col">ID Usuario Logado</th>
									<th scope="col">Impressora</th>
									<th scope="col">Filamento</th>
									<th scope="col">Peso</th>
									<th scope="col">Tempo de Impressão</th>
									<th scope="col">Lucro(%)</th>
									<th scope="col">Lucro(R$))</th>
									<th scope="col">Preço Final</th>
									
									
													</tr>
												</thead>
												<tbody>
													<c:forEach items="${calculadora}" var="ml">
  <c:if test="${ml.idusuariologado == usuarioid}">

    <tr>
      <td><c:out value="${ml.id}"></c:out></td>
      <td><c:out value="${ml.idusuariologado}"></c:out></td>
      <td><c:out value="${ml.impressora}"></c:out></td>
      <td><c:out value="${ml.filamento}"></c:out></td>
      <td><c:out value="${ml.peso}"></c:out></td>
      <td><c:out value="${ml.tempoimpressao}"></c:out></td>
      <td><c:out value="${ml.lucroporcentagem}"></c:out></td>
      <td><c:out value="${ml.lucrovalor}"></c:out></td>
      <td><c:out value="${ml.precofinal}"></c:out></td>
      <td><a class="btn btn-success" href="<%= request.getContextPath() %>/SertvletCalculadoraCustos?acao=excluir&id=${ml.id}">Excluir</a></td>
     
    </tr>
  </c:if>
</c:forEach>

												</tbody>
											</table>
										</div>


								</div>
														
										

								</div>
								<!-- Page-body end -->
							</div>
							<div id="styleSelector"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<jsp:include page="javascripfile.jsp"></jsp:include>

	
<script type="text/javascript">





 





function formatarHora(input) {
    // Remove todos os caracteres que não sejam números ou dois pontos
    input.value = input.value.replace(/[^0-9:]/g, '');

    // Remove o excesso de dois pontos
    input.value = input.value.replace(/:+/g, ':');

    // Divide o valor em horas e minutos
    var partes = input.value.split(':');
    var horas = partes[0] || '00';
    var minutos = partes[1] || '00';

    // Limita as horas a 2 dígitos
    horas = horas.substring(0, 2).padStart(2, '0');

    // Limita os minutos a 2 dígitos
    minutos = minutos.substring(0, 2).padStart(2, '0');

    // Atualiza o valor no formato "hh:mm"
    input.value = horas + ':' + minutos;
  }
  
  
function valorconsumiveis (){
    
    var consumiveis = document.getElementById('consumiveis').value;
    var consumiveisMinutos = converterParaMinutos(consumiveis);
 
    document.getElementById('somaconsumiveis').value = consumiveisMinutos;
    document.getElementById('consumiveiscustos').value = consumiveisMinutos;
    
}


function calcularSomaPreparoImpressao() {
    // Obter os valores dos campos de entrada
    
    
            
    
    var preparacao = document.getElementById('preparacao').value;
    var fatiamento = document.getElementById('fatiamento').value;
    var trocamaterial = document.getElementById('trocamaterial').value;
    var transferenciaeinicio = document.getElementById('transferenciaeinicio').value;
  
    
    // Converter para minutos
    var preparacaoMinutos = converterParaMinutos(preparacao);
    var fatiamentoMinutos = converterParaMinutos(fatiamento);
    var trocamaterialMinutos = converterParaMinutos(trocamaterial);
    var transferenciaeinicioMinutos = converterParaMinutos(transferenciaeinicio);
    

    // Calcular a soma
    var soma = preparacaoMinutos + fatiamentoMinutos + trocamaterialMinutos + transferenciaeinicioMinutos ;
   
    // Atualizar o valor do campo de soma
    document.getElementById('somapreparacao').value = soma;
   
    
  }


function somasubtotalincluindoperdas(){
    var preparacaocustos = parseFloat(document.getElementById('preparacaocustos').value.replace(',', '.'));
    var posprocessamentocustos = parseFloat(document.getElementById('posprocessamentocustos').value.replace(',', '.'));
    var depreciacaomaquina = parseFloat(document.getElementById('depreciacaomaquina').value.replace(',', '.'));
    var filamentovalor = parseFloat(document.getElementById('filamentovalor').value.replace(',', '.'));
    var eletricidadevalor = parseFloat(document.getElementById('eletricidadevalor').value.replace(',', '.'));
    var consumiveiscustos = parseFloat(document.getElementById('consumiveiscustos').value.replace(',', '.'));
   
    

    // Verificar se os campos contêm valores numéricos válidos
    if (isNaN(preparacaocustos)) {
      preparacaocustos = 0; // Atribuir 0 se o valor não for numérico
    }
   
    if (isNaN(posprocessamentocustos)) {
      posprocessamentocustos = 0;
    }
    if (isNaN(depreciacaomaquina)) {
	depreciacaomaquina = 0; // Atribuir 0 se o valor não for numérico
	    }
    if (isNaN(filamentovalor)) {
      filamentovalor = 0;
    }
    if (isNaN(eletricidadevalor)) {
      eletricidadevalor = 0;
    }
    if (isNaN(consumiveiscustos)) {
      consumiveiscustos = 0;
    }

    var soma = preparacaocustos + posprocessamentocustos + filamentovalor + eletricidadevalor + consumiveiscustos + depreciacaomaquina;

    document.getElementById('subtotal').value = soma;

    
}


function lucroreal(){
    var incluindoperdas = parseFloat(document.getElementById('incluindoperdas').value.replace(',', '.'));
    var lucroporcentagem = parseFloat(document.getElementById('lucroporcentagem').value.replace(',', '.'));
   
    
    

    // Verificar se os campos contêm valores numéricos válidos
    if (isNaN(incluindoperdas)) {
	incluindoperdas = 0; // Atribuir 0 se o valor não for numérico
    }
   
    if (isNaN(lucroporcentagem)) {
	lucroporcentagem = 0;
    }
   

    var soma = (incluindoperdas * lucroporcentagem)/ 100;
   

    document.getElementById('lucrovalor').value = soma.toFixed(2);
    var precofinal = incluindoperdas + soma;
    document.getElementById('precofinal').value = precofinal.toFixed(2);
    
    
}




function updateConsumoEnergia() {
    var impressora = document.getElementById("impressora").value;
    
    var custodeenergiacadastradopelousuario = document.getElementById("custodeenergiacadastradopelousuario").value;
    valorcustodeenergia.value = custodeenergiacadastradopelousuario;
    
    consumo.value = impressora;
}

window.onload = function() {
    updateConsumoEnergia();
    valoreletricidadecustos();
    // Adiciona o evento onchange no elemento select
    document.getElementById("impressora").onchange = updateConsumoEnergia;
    document.getElementById("custodeenergiacadastradopelousuario").value;
};





function converteparaminutos(){
    
    var consumo = parseFloat(document.getElementById('consumo').value.replace(',', '.'));
    
    
}


    function valoreletricidadecustos(){
	
	
	
	
	   
	
	var consumo = parseFloat(document.getElementById('consumo').value.replace(',', '.'));
	var valorcustodeenergia = parseFloat(document.getElementById('valorcustodeenergia').value.replace(',', '.'));


   

    // Calcular a soma
    var soma = consumo *  valorcustodeenergia  ;

    // Atualizar o valor do campo de soma
    document.getElementById('eletricidadevalor').value =soma.toFixed(2);
   
   
   
    
  }








function calcularSomaPosProcessamento() {
    // Obter os valores dos campos de entrada
    var remocaoimpressao = document.getElementById('remocaoimpressao').value;
    var trabalhoadicional = document.getElementById('trabalhoadicional').value;
    var remocaosuportes = document.getElementById('remocaosuportes').value;

    // Converter para minutos
    var remocaoimpressaoMinutos = converterParaMinutos(remocaoimpressao);
    var trabalhoadicionalMinutos = converterParaMinutos(trabalhoadicional);
    var remocaosuportesMinutos = converterParaMinutos(remocaosuportes);

    // Calcular a soma
    var soma = trabalhoadicionalMinutos + remocaosuportesMinutos + remocaoimpressaoMinutos ;

    // Atualizar o valor do campo de soma
    document.getElementById('somaposprocessamento').value = soma;
   
   
   
    
  }

  function converterParaMinutos(horaMinuto) {
    // Extrair horas e minutos
    var partes = horaMinuto.split(':');
    var horas = parseInt(partes[0]);
    var minutos = parseInt(partes[1]);

    // Converter para minutos
    var totalMinutos = horas * 60 + minutos;
    return totalMinutos;
  }
  
  
 
</script>

  
 


  
	
</body>

</html>