package servlets;

import java.io.IOException;
import java.util.List;

import dao.DAOCalculadoraCustos;
import dao.DAOTelefoneRepository;
import dao.DAOUsuarioRepository;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.ModelCalculadora;
import model.ModelLogin;
import model.ModelTelefone;

@WebServlet("/SertvletCalculadoraCustos")
public class ServletCalculadoraCustos extends ServletGenericUtil {

	private static final long serialVersionUID = 1L;

	
	private DAOCalculadoraCustos daoCalculadoraCustos = new DAOCalculadoraCustos();

	public ServletCalculadoraCustos() {
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		try {
			String msg = "Operação realizada com sucesso!";
			
			String impressora = request.getParameter("impressora");
			String filamento = request.getParameter("filamento");
			String peso = request.getParameter("peso");
			String tempoimpressao = request.getParameter("tempoimpressao");
			String preparacao = request.getParameter("preparacao");
			String fatiamento = request.getParameter("fatiamento");
			String trocamaterial = request.getParameter("trocamaterial");
			String transferenciaeinicio = request.getParameter("transferenciaeinicio");
			String somapreparacao = request.getParameter("somapreparacao");
			String remocaoimpressao = request.getParameter("remocaoimpressao");
			String remocaosuportes = request.getParameter("remocaosuportes");
			String trabalhoadicional =request.getParameter("trabalhoadicional");
			String somaposprocessamento = request.getParameter("somaposprocessamento");
			String consumiveis = request.getParameter("consumiveis");
			String filamentovalor = request.getParameter("filamentovalor");
			String eletricidadevalor = request.getParameter("eletricidadevalor");
			String depreciacaomaquina = request.getParameter("depreciacaomaquina");
			String preparacaocustos = request.getParameter("preparacaocustos");
			String posprocessamentocustos = request.getParameter("posprocessamentocustos");
			String consumiveiscustos = request.getParameter("consumiveiscustos");
			String subtotal = request.getParameter("subtotal");
			String incluindoperdas = request.getParameter("incluindoperdas");
			String lucroporcentagem = request.getParameter("lucroporcentagem");
			String lucrovalor = request.getParameter("lucrovalor");
			String precofinal = request.getParameter("precofinal");
			
			ModelCalculadora modelCalculadora = new ModelCalculadora();
			
			modelCalculadora.setImpressora(impressora);
			modelCalculadora.setFilamento(filamento);
			modelCalculadora.setPeso(peso);
			modelCalculadora.setTempoimpressao(tempoimpressao);
			modelCalculadora.setPreparacao(preparacao);
			modelCalculadora.setFatiamento(fatiamento);
			modelCalculadora.setTrocamaterial(trocamaterial);
			modelCalculadora.setTransferenciaeinicio(transferenciaeinicio);
			modelCalculadora.setSomapreparacao(somapreparacao);
			modelCalculadora.setRemocaoimpressao(remocaoimpressao);
			modelCalculadora.setRemocaosuportes(remocaosuportes);
			modelCalculadora.setTrabalhoadicional(trabalhoadicional);
			modelCalculadora.setSomaposprocessamento(somaposprocessamento);
			modelCalculadora.setConsumiveis(consumiveis);
			modelCalculadora.setFilamentovalor(filamentovalor);
			modelCalculadora.setEletricidadevalor(eletricidadevalor);
			modelCalculadora.setDepreciacaomaquina(depreciacaomaquina);
			modelCalculadora.setPreparacaocustos(preparacaocustos);
			modelCalculadora.setPosprocessamentocustos(posprocessamentocustos);
			modelCalculadora.setConsumiveiscustos(consumiveiscustos);
			modelCalculadora.setSubtotal(subtotal);
			modelCalculadora.setIncluindoperdas(incluindoperdas);
			modelCalculadora.setLucroporcentagem(lucroporcentagem);
			modelCalculadora.setLucrovalor(lucrovalor);
			modelCalculadora.setPrecofinal(precofinal);
			
			
			
			
			
			
			daoCalculadoraCustos.gravacalculos(modelCalculadora);
			
			request.setAttribute("msg", msg);
			
			request.setAttribute("msg", "Salvo com sucesso");
			request.getRequestDispatcher("principal/principal.jsp").forward(request, response);
		 
		
		}catch (Exception e) {
			e.printStackTrace();
		}
	}

}