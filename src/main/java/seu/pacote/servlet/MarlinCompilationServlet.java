package seu.pacote.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import marlin.MarlinCompilationExample;
@WebServlet("/MarlinCompilationServlet")
public class MarlinCompilationServlet extends HttpServlet {
   
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String marlinFolderPath = request.getParameter("marlinFolderPath");
        String platformioPath = request.getParameter("platformioPath");

        MarlinCompilationExample.compileMarlin(marlinFolderPath, platformioPath);

        // Redireciona de volta para a página JSP após a compilação
        response.sendRedirect("marlin.jsp");
    }
}
