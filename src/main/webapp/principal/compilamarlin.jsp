<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.BufferedReader" %>
<%@ page import="java.io.File" %>
<%@ page import="java.io.IOException" %>
<%@ page import="java.io.InputStreamReader" %>



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



														<form class="form-material" 
															 id="formUser">
			<input type="hidden" name="acao" id="acao" value="">
															
<h4 class="sub-title">Marlin</h4>
												
    <%!
        private String compilarMarlin(String caminhoMarlin, String caminhoPlatformIO) throws IOException {
            ProcessBuilder processBuilder = new ProcessBuilder(caminhoPlatformIO, "run");
            processBuilder.directory(new File(caminhoMarlin));

            Process process = processBuilder.start();

            StringBuilder output = new StringBuilder();
            BufferedReader reader = new BufferedReader(new InputStreamReader(process.getInputStream()));
            String line;
            while ((line = reader.readLine()) != null) {
                output.append(line).append("<br>");
            }

            int exitCode;
            try {
                exitCode = process.waitFor();
            } catch (InterruptedException e) {
                throw new IOException("Erro durante a execução do processo de compilação do Marlin.", e);
            }

            if (exitCode == 0) {
                output.append("<br>Compilação do Marlin concluída com sucesso!");
            } else {
                output.append("<br>A compilação do Marlin falhou. Verifique os logs para mais informações.");
            }

            return output.toString();
        }
    %>

    <%
    
    
    
    
    
    
        String caminhoMarlin = request.getParameter("caminhoMarlin");
        String caminhoPlatformIO = request.getParameter("caminhoPlatformIO");

        if (caminhoMarlin == null || caminhoPlatformIO == null) {
            out.println("<p>Por favor, forneça o caminho do Marlin e o caminho para o executável do PlatformIO.</p>");
        } else {
            try {
                String compilação = compilarMarlin(caminhoMarlin, caminhoPlatformIO);
                out.println(compilação);
            } catch (IOException e) {
                out.println("<p>Erro durante a compilação do Marlin: " + e.getMessage() + "</p>");
            }
        }
    %>

    <form method="GET">
        <label>Caminho do Marlin:</label>
        <input type="text" name="caminhoMarlin"><br>
        <label>Caminho do PlatformIO:</label>
        <input type="text" name="caminhoPlatformIO"><br>
        <input type="submit" value="Compilar">
    </form>
	 
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