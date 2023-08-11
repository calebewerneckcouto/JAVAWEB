package servlets;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Scanner;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ServletSubstituir")
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

        String caminhoPasta = "/home2/cwcdcomb/repositories/Marlin1";
        String placa = request.getParameter("placa");
        String novoValor = request.getParameter("novoValor");
        String portaserial = request.getParameter("portaserial");
        String baudrate = request.getParameter("baudrate");
        
        
        
        

        try {
            substituirValor(caminhoPasta, placa,novoValor,portaserial,baudrate);
            request.setAttribute("mensagem", "Firmware Montado com Sucesso!");
            request.getRequestDispatcher("principal/paginacompilarmarlin.jsp").forward(request, response);
        } catch (IOException e) {
            request.setAttribute("mensagem", "Erro ao Montar Firmware!");
            request.getRequestDispatcher("principal/paginacompilarmarlin.jsp").forward(request, response);
        }
    }

    private static void substituirValor(String caminhoPasta, String placa,String novoValor ,String portaserial,String baudrate) throws IOException {
        File pasta = new File(caminhoPasta);
        substituirValorRecursivo(pasta, placa,novoValor,portaserial,baudrate);
    }

    private static void substituirValorRecursivo(File arquivoOuDiretorio, String placa,String novoValor,String portaserial,String baudrate) throws IOException {
        if (arquivoOuDiretorio.isDirectory()) {
            File[] arquivos = arquivoOuDiretorio.listFiles();
            if (arquivos != null) {
                for (File arquivo : arquivos) {
                    substituirValorRecursivo(arquivo, placa,novoValor,portaserial,baudrate);
                }
            }
        } else if (arquivoOuDiretorio.isFile()) {
            substituirValorNoArquivo(arquivoOuDiretorio, placa, novoValor,portaserial,baudrate);
        }
    }

    private static void substituirValorNoArquivo(File arquivo, String placa,String novoValor,String portaserial,String baudrate) throws IOException {
        StringBuilder conteudo = new StringBuilder();
        Scanner scanner = new Scanner(arquivo);

        while (scanner.hasNextLine()) {
            String linha = scanner.nextLine();
            if (linha.startsWith("  #define MOTHERBOARD")) {
                linha = "  #define MOTHERBOARD " + placa;
            }
            if (linha.startsWith("default_envs = ")) {
                linha = "default_envs = " + novoValor;
            }
           if (linha.startsWith("#define SERIAL_PORT")){
               	 linha = "#define SERIAL_PORT " + portaserial;
                }
                   	
            	
            	
            	
            if (linha.startsWith("#define BAUDRATE")) {
                linha = "#define BAUDRATE " + baudrate;
            }
            conteudo.append(linha).append(System.lineSeparator());
        }
        scanner.close();

        FileWriter writer = new FileWriter(arquivo);
        writer.write(conteudo.toString());
        writer.close();
    }
}
