<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   
    
 

    
    <nav class="pcoded-navbar">
                     
                      
                      <div class="pcoded-inner-navbar main-menu">
                          <div class="">
                              <div class="main-menu-header">
                                  <img class="img-80 img-radius" src="<%= request.getContextPath() %>/assets/images/icone.png" alt="User-Profile-Image">
                                  <div class="user-details">
                                      <span id="more-details"><%= request.getSession().getAttribute("usuario") %><i class="fa fa-caret-down"></i></span>
                                  </div>
                              </div>
        
                              <div class="main-menu-content">
                                  <ul>
                                      <li class="more-details">
                                         
                                          <a href="<%=request.getContextPath() %>/ServletLogin?acao=logout"><i class="ti-layout-sidebar-left"></i>Sair</a>
                                      </li>
                                  </ul>
                              </div>
                          </div>
                         
                          <div class="pcoded-navigation-label" data-i18n="nav.category.navigation"></div>
                          <ul class="pcoded-item pcoded-left-item">
                              <li class="active">
                                  <a href="<%= request.getContextPath() %>/principal/principal.jsp" class="waves-effect waves-dark">
                                      <span class="pcoded-micon"><i class="ti-home"></i><b>D</b></span>
                                       
                                      <span class="pcoded-mtext" data-i18n="nav.dash.main">Página Principal</span>
                                      <span class="pcoded-mcaret"></span>
                                  </a>
                              </li>
                              <li class="pcoded-hasmenu">
                                  <a href="javascript:void(0)" class="waves-effect waves-dark">
                                      <span class="pcoded-micon"><i class="ti-layout-grid2-alt"></i></span>
                                      <span class="pcoded-mtext"  data-i18n="nav.basic-components.main">Menu</span>
                                      <span class="pcoded-mcaret"></span>
                                  </a>
                                  
                                  <ul class="pcoded-submenu">
                                  
                                 
                                      <li class=" ">
                                          <a href="<%= request.getContextPath() %>/principal/principal.jsp"  class="waves-effect waves-dark">
                                              <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                                              <span class="pcoded-mtext" data-i18n="nav.basic-components.alert">Fusion 360</span>
                                              <span class="pcoded-mcaret"></span>
                                          </a>
                                      </li>
                                      
                                      
                                      <li class=" ">
                                          <a href="<%= request.getContextPath() %>/principal/3dbuilder.jsp"  class="waves-effect waves-dark">
                                              <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                                              <span class="pcoded-mtext" data-i18n="nav.basic-components.alert">3D Builder</span>
                                              <span class="pcoded-mcaret"></span>
                                          </a>
                                      </li>
                                      
                                      
                                      
                                  
                                   <c:if test="${permissao == 'admin'}">
                                      <li class=" ">
                                          <a href="<%=request.getContextPath() %>/ServletUsuarioController?acao=listarUser" class="waves-effect waves-dark">
                                              <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                                              <span class="pcoded-mtext" data-i18n="nav.basic-components.alert">Usuário</span>
                                              <span class="pcoded-mcaret"></span>
                                          </a>
                                      </li>
                                   </c:if>   
                                      
                                    
                      
                  </nav>