<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
<!DOCTYPE html>
<html lang="en">


<jsp:include page="head.jsp"></jsp:include>
<style>
   .video-wrapper {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  height: 200vh;
}

iframe {
  width: 1000px; /* Defina a largura desejada */
  height: 9000px; /* Defina a altura desejada */
  margin-bottom: 20px; /* Espa�amento entre os v�deos */
}
Nesse exemplo, um <div> com a classe .video-wrapper � usado como um inv�lucro para os <iframe> dos v�deos. O CSS define que o conte�do deve ser exibido em coluna (flex-direction: column;), centralizado vertical e horizontalmente (justify-content: center; align-items: center;) dentro do cont�iner. A altura do cont�iner � definida como 100vh (100% da altura da tela).

Cada <iframe> representa um v�deo e pode ter sua largura e altura definidas de acordo com suas necessidades. O espa�amento entre os v�deos pode ser ajustado usando a propriedade margin-bottom nos <iframe>.

Lembre-se de substituir "url_do_videoX" pelas URLs reais dos seus v�deos. Voc� pode adicionar quantos <iframe> de v�deo desejar dentro do <div class="video-wrapper">.








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
     
                           
   
  </div>
                          
 
  
 
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
    