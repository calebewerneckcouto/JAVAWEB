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

@WebServlet("/SertvletSubstituir")
public class ServletSubstituir extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public ServletSubstituir() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.getWriter().append("Served at: ").append(request.getContextPath());
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String caminhoPasta = System.getProperty("user.home") + "\\Downloads\\Marlin-2.1.2.1";
        String novoValor = request.getParameter("novoValor");

        try {
            substituirValor(caminhoPasta, novoValor);
            request.setAttribute("mensagem", "Firmware Montado com Sucesso!");
            request.getRequestDispatcher("principal/paginacompilarmarlin.jsp").forward(request, response);
        } catch (IOException e) {
        	 request.setAttribute("mensagem", "Erro ao Montar Firmware!");
        	  request.getRequestDispatcher("principal/paginacompilarmarlin.jsp").forward(request, response);
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
