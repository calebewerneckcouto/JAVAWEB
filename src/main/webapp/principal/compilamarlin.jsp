<%@ page import="java.io.BufferedReader" %>
<%@ page import="java.io.IOException" %>
<%@ page import="java.io.InputStreamReader" %>
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
														<h4 class="sub-title">Resultado Compilação</h4>



<%
try {
    // Defina o diretório do projeto Marlin
 String marlinDirectory = System.getProperty("user.home") + "\\Downloads\\Marlin-2.1.2.1";




    // Execute o comando de compilação usando o PlatformIO
    Process process = Runtime.getRuntime().exec("platformio run -d " + marlinDirectory);

    // Capture a saída do processo
    BufferedReader reader = new BufferedReader(new InputStreamReader(process.getInputStream()));
    String line;
    while ((line = reader.readLine()) != null) {
        out.println(line + "<br/>");
    }

    // Aguarde até que o processo seja concluído
    int exitCode = process.waitFor();
    out.println("<br/>Processo de compilação concluído com código de saída: " + exitCode);
} catch (IOException | InterruptedException e) {
    e.printStackTrace();
}
%>

													</div>

												</div>
											</div>
										</div>
										
										
										 <span id="msg">${msg}</span>
										 
										 
										
										 
										 
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
$("#numero").keypress(function (event) {
    return /\d/.test(String.fromCharCode(event.keyCode)); 
 });

</script>	
</body>

</html>