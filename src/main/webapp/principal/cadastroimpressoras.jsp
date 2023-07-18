<%@page import="dao.DAOVideos"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.ModelVideos"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  	


<!DOCTYPE html>
<html lang="en">


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
													
															
															 <form class="form-material"  action="<%= request.getContextPath() %>/SertvletCadastroImpressoras" method="post" id="formVideos" >

														
															
														<h4 class="sub-title" style="color: blue;">Cadastro de Impressoras</h4>
														
														         
														
                                                             <div class="form-group form-default form-static-label">
                                                             
                                                             
                                                           
												        <input readonly="readonly"  value="${usuarioid}" type="text" name="idusuariologado" id="idusuariologado" class="form-control" required="required"  >
				
                                                              
                                                                <span class="form-bar"></span>
                                                                <label class="float-label" style="color: black">Id do Usuario Logado</label>
                                                            </div>
                                                           
														
                                                             
                                                            
                                                            
                                                             <div class="form-group form-default form-static-label">
                                                                <input  type="text" name="nomedaimpressora" id="nomedaimpressora" class="form-control" required="required" >
                                                                <span class="form-bar"></span>
                                                                <label class="float-label" style="color: black">Nome da Impressora:</label>
                                                            </div>
                                                           
                                                              
                                                              
                                                           
                                                            
                                                            
                                                             <div class="form-group form-default form-static-label">
                                                                <input  type="text" name="diametrodomaterial" id="diametrodomaterial" class="form-control" required="required" >
                                                                <span class="form-bar"></span>
                                                                <label class="float-label" style="color: black">Diâmetro do Material:</label>
                                                            </div>
                                                            
                                                            
                                                              
                                                             <div class="form-group form-default form-static-label">
                                                                <input  type="text" name="preco" id="preco" class="form-control" required="required" onchange=" somatotal()" >
                                                                <span class="form-bar"></span>
                                                                <label class="float-label" style="color: black">Preço(R$):</label>
                                                                
                                                            </div>
                                                             <div class="form-group form-default form-static-label">
                                                                <input  type="text" name="tempodepreciacao" id="tempodepreciacao" class="form-control" required="required" onchange=" somatotal()">
                                                                <span class="form-bar"></span>
                                                                <label class="float-label" style="color: black">Tempo de Depreciação(Horas):</label>
                                                                
                                                            </div>
                                                            
                                                                
                                                             <div class="form-group form-default form-static-label">
                                                                <input  type="text" name="custodereparos" id="custodereparos" class="form-control" required="required" onchange=" somatotal()" >
                                                                <span class="form-bar"></span>
                                                                <label class="float-label" style="color: black">Custo de Reparos(R$):</label>
                                                                
                                                            </div>
                                                            
                                                              <div class="form-group form-default form-static-label">
                                                                <input  type="text" name="consumodeenergia" id="consumodeenergia" class="form-control" required="required" >
                                                                <span class="form-bar"></span>
                                                                <label class="float-label" style="color: black">Consumo de Energia(KWh/h):</label>
                                                                
                                                            </div>
                                                            
                                                            
                                                              <div class="form-group form-default form-static-label">
                                                                <input  type="text" name="depreciacao" id="depreciacao" class="form-control" required="required" readonly="readonly">
                                                                <span class="form-bar"></span>
                                                                <label class="float-label" style="color: black">Depreciacão(R$/h):</label>
                                                                
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
									<th scope="col">Nome da Impressora</th>
									<th scope="col">Diâmetro do Material</th>
									<th scope="col">Preço</th>
									<th scope="col">Tempo de Depreciação(Horas)</th>
									<th scope="col">Custo de Reparo(R$)</th>
									<th scope="col">Consumo de Energia(KWh/h)</th>
									<th scope="col">Depreciacão</th>
									
									
													</tr>
												</thead>
												<tbody>
													<c:forEach items='${cadastroimpressora}' var='ml'>
													 <c:if test="${ml.idusuariologado == usuarioid}">
														<tr>
															<td><c:out value="${ml.id}"></c:out></td>
															<td><c:out value="${ml.idusuariologado}"></c:out></td>
															<td><c:out value="${ml.nomedaimpressora}"></c:out></td>
															<td><c:out value="${ml.diametrodomaterial}"></c:out></td>
															<td><c:out value="${ml.preco}"></c:out></td>
															<td><c:out value="${ml.tempodepreciacao}"></c:out></td>
														    <td><c:out value="${ml.custodereparos}"></c:out></td>
														    <td><c:out value="${ml.consumodeenergia}"></c:out></td>
														    <td><c:out value="${ml.depreciacao}"></c:out></td>
														
														  
															<td><a class="btn btn-success"
																href="<%= request.getContextPath() %>/SertvletCadastroImpressoras?acao=excluir&id=${ml.id}">Excluir</a></td>
													
														
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


$("#diametrodomaterial").keypress(function (event) {
    return /\d/.test(String.fromCharCode(event.keyCode)); 
 });
$("#preco").keypress(function (event) {
    return /\d/.test(String.fromCharCode(event.keyCode)); 
 });

$("#tempodepreciacao").keypress(function (event) {
    return /\d/.test(String.fromCharCode(event.keyCode)); 
 });

$("#custodereparos").keypress(function (event) {
    return /\d/.test(String.fromCharCode(event.keyCode)); 
 });
$("#depreciacao").keypress(function (event) {
    return /\d/.test(String.fromCharCode(event.keyCode)); 
 });
$("#consumodeenergia").keypress(function (event) {
    return /\d/.test(String.fromCharCode(event.keyCode)); 
 });








function somatotal(){
    
    const preco = parseFloat(document.getElementById('preco').value.replace(',', '.'));
    const custodereparos = parseFloat(document.getElementById('custodereparos').value.replace(',', '.'));
    const tempodepreciacao = parseFloat(document.getElementById('tempodepreciacao').value.replace(',', '.'));
   
    

    // Verificar se os campos contêm valores numéricos válidos
    if (isNaN(preco)) {
	preco = 0; // Atribuir 0 se o valor não for numérico
    }
    if (isNaN(custodereparos)) {
	custodereparos = 0; // Atribuir 0 se o valor não for numérico
    }
    if (isNaN(tempodepreciacao)) {
	tempodepreciacao = 0; // Atribuir 0 se o valor não for numérico
    }
   
   

    var soma = (preco + custodereparos)/tempodepreciacao ;
    
    soma = soma.toFixed(2);


    document.getElementById('depreciacao').value = soma;

    
}


</script>	
</body>

</html>