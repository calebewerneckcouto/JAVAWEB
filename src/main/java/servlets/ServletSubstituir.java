package servlets;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ServletSubstituir
 */

@WebServlet("/SertvletSubstituir")
public class ServletSubstituir extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletSubstituir() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 response.setContentType("text/html");
	        PrintWriter out = response.getWriter();

	        String caminhoPasta = request.getParameter("caminhoPasta");
	        String novoValor = request.getParameter("novoValor");

	        try {
	            substituirValor(caminhoPasta, novoValor);
	            out.println("Substituição concluída com sucesso.");
	        } catch (IOException e) {
	            out.println("Ocorreu um erro ao substituir o valor no arquivo: " + e.getMessage());
	        }
	    }

	    private static void substituirValor(String caminhoPasta, String novoValor) throws IOException {
	        File pasta = new File(caminhoPasta);
	        substituirValorRecursivo(pasta, novoValor);
	    }

	    private static void substituirValorRecursivo(File arquivoOuDiretorio, String novoValor) throws IOException {
	        if (arquivoOuDiretorio.isDirectory()) {
	            File[] arquivos = arquivoOuDiretorio.listFiles();
	            if (arquivos != null) {
	                for (File arquivo : arquivos) {
	                    substituirValorRecursivo(arquivo, novoValor);
	                }
	            }
	        } else if (arquivoOuDiretorio.isFile()) {
	            substituirValorNoArquivo(arquivoOuDiretorio, novoValor);
	        }
	    }

	    private static void substituirValorNoArquivo(File arquivo, String novoValor) throws IOException {
	        StringBuilder conteudo = new StringBuilder();
	        BufferedReader reader = new BufferedReader(new FileReader(arquivo));
	        String linha;
	        while ((linha = reader.readLine()) != null) {
	            if (linha.startsWith("default_envs =")) {
	                linha = "default_envs = " + novoValor;
	            }
	            conteudo.append(linha).append(System.lineSeparator());
	        }
	        reader.close();

	        FileWriter writer = new FileWriter(arquivo);
	        writer.write(conteudo.toString());
	        writer.close();
	        
	    }
	    
	  
	    
	}
