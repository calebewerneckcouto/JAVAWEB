<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
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
                                              
                                               <%-- Importar classes necessárias --%>
    <%@ page import="java.sql.*" %>

    <%-- Configurar informações do banco de dados --%>
    <% /*String banco = "jdbc:postgresql://localhost:5432/cwcdcomb_curso-jsp?autoReconnect=true";
	String user = "cwcdcomb";
	 String senha = "0E2W+wgH66K[ui";/*senha da sua hospedagem
	 Connection conn = null;*/
	 
	  String banco = "jdbc:postgresql://localhost:5432/curso-jsp?autoReconnect=true";
		 String user = "postgres";
		 String senha = "admin";
		 Connection conn = null;
      try {
          Class.forName("org.postgresql.Driver");
          conn = DriverManager.getConnection(banco, user, senha);

           // Criar uma instrução SQL parametrizada para recuperar os iframes
           String sql = "SELECT link FROM videos WHERE pagina = ?";
           PreparedStatement statement = conn.prepareStatement(sql);
           statement.setString(1, "compilandomarlin.jsp");

           // Executar a consulta SQL e obter o resultado
           ResultSet resultSet = statement.executeQuery();

           // Exibir os iframes
           while (resultSet.next()) {
               String link = resultSet.getString("link");
               out.println(link);
                    }
       } catch (Exception e) {
           e.printStackTrace();
       } finally {
           // Fechar a conexão com o banco de dados
           if (conn != null) {
               try {
                   conn.close();
               } catch (SQLException e) {
                   e.printStackTrace();
               }
           }
       }
    %>
    
    
           
    
    <ul>
    <h6>Compilando o Marlin</h6>
        <li>
            <a href="https://drive.google.com/uc?id=1dmigHB1-NwKgWovHIvUBCI86TJ-_Ji1b">Download Marlin 2.1.2.1</a>
        </li>
        <li>
            <a href="#">Download Compilador Marlin CWC3D</a>
        </li>
    </ul>
                                      
                                      
                                              
                                              
                                              
                                        </div>
                                    </div>
                                    <!-- Page-body end -->
                                </div>
                                <div id="styleSelector"> </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
   
   
<jsp:include page="javascripfile.jsp"></jsp:include>
</body>

</html>
    