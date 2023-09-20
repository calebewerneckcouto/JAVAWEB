<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
<!DOCTYPE html>
<html lang="en">


<jsp:include page="head.jsp"></jsp:include>
<style>


iframe {
  width: 1000px; /* Defina a largura desejada */
  height: 600px; /* Defina a altura desejada */
 
}
Nesse exemplo, um <div> com a classe .video-wrapper é usado como um invólucro para os <iframe> dos vídeos. O CSS define que o conteúdo deve ser exibido em coluna (flex-direction: column;), centralizado vertical e horizontalmente (justify-content: center; align-items: center;) dentro do contêiner. A altura do contêiner é definida como 100vh (100% da altura da tela).

Cada <iframe> representa um vídeo e pode ter sua largura e altura definidas de acordo com suas necessidades. O espaçamento entre os vídeos pode ser ajustado usando a propriedade margin-bottom nos <iframe>.

Lembre-se de substituir "url_do_videoX" pelas URLs reais dos seus vídeos. Você pode adicionar quantos <iframe> de vídeo desejar dentro do <div class="video-wrapper">.








  </style>

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
                                                  <div class="video-wrapper">
 
</head>
<body>
    <%-- Importar classes necessárias --%>
    <%@ page import="java.sql.*" %>

    <%-- Configurar informações do banco de dados --%>
    <%  /*String banco = "jdbc:postgresql://localhost:5432/cwcdcomb_curso-jsp?autoReconnect=true";
	String user = "cwcdcomb";
	 String senha = "0E2W+wgH66K[ui";/*senha da sua hospedagem
	 Connection conn = null;*/
	 String banco = "jdbc:postgresql://localhost:5432/cwcdcomb_curso_jsp?autoReconnect=true";
		String user = "cwcdcomb_cwc3d";
		String senha = "cwc3d14694899";
		Connection conn = null;

	 
       try {
           Class.forName("org.postgresql.Driver");
           conn = DriverManager.getConnection(banco, user, senha);

           // Criar uma instrução SQL parametrizada para recuperar os iframes
           String sql = "SELECT nomevideo,link FROM videos WHERE pagina = ?";
           PreparedStatement statement = conn.prepareStatement(sql);
           statement.setString(1, "autocad.jsp");

           // Executar a consulta SQL e obter o resultado
           ResultSet resultSet = statement.executeQuery();

           // Exibir os iframes
           while (resultSet.next()) {
        	   
        	   
        	   String nomevideo = resultSet.getString("nomevideo");
               out.println(nomevideo);
        	  
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
</body>
</html>
 
        
       
                            
                                 
                                
                             
                                
                                
                                
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
    