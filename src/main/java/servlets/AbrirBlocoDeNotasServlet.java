package servlets;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/abrir-bloco-de-notas")
public class AbrirBlocoDeNotasServlet extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String command = "notepad.exe"; // Comando para abrir o Bloco de Notas

        try {
            ProcessBuilder processBuilder = new ProcessBuilder("cmd.exe", "/c", command);
            Process process = processBuilder.start();

            // Esperar até que o processo termine
            int exitCode = process.waitFor();

            if (exitCode == 0) {
                response.setStatus(HttpServletResponse.SC_OK);
            } else {
                response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
            }
        } catch (IOException | InterruptedException e) {
            e.printStackTrace();
            response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
        }
    }
}
