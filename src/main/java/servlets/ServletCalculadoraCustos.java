package servlets;

import java.io.IOException;
import java.util.List;

import org.json.JSONObject;

import dao.DAOCalculadoraCustos;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.ModelCadastroImpressoras;
import model.ModelCadastroMateriais;
import model.ModelCalculadora;

@WebServlet("/SertvletCalculadoraCustos")
public class ServletCalculadoraCustos extends ServletGenericUtil {

	private static final long serialVersionUID = 1L;

	
	private DAOCalculadoraCustos daoCalculadoraCustos = new DAOCalculadoraCustos();

	public ServletCalculadoraCustos() {
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			   
		    String acao = request.getParameter("acao");
		   
		      if (acao != null && !acao.isEmpty() && acao.equalsIgnoreCase("listarCalculadora")) {
		    	
		    	
		    	
		
		        // Criar uma instância da classe de acesso aos dados (DAO) ou qualquer classe que lide com a recuperação dos dados do banco de dados
		        DAOCalculadoraCustos daoCalculadoraCustos = new DAOCalculadoraCustos();
		        
		        // Chamar o método buscarVideos() para obter os dados do banco de dados
		        List<ModelCalculadora> calculadora = daoCalculadoraCustos.buscarCalculadora();
		        
		        DAOCalculadoraCustos daoCalculadoraCustos2 = new DAOCalculadoraCustos();
		        List<ModelCadastroImpressoras>impressoras = daoCalculadoraCustos2.buscarNomeImpressora();
		        
		        
		        
		       
		        DAOCalculadoraCustos daoCalculadoraCustos3 = new DAOCalculadoraCustos();
		        List<ModelCadastroMateriais> materiais = daoCalculadoraCustos3.buscarfabricante();
		        
		        
		        DAOCalculadoraCustos daoCalculadoraCustos4 = new DAOCalculadoraCustos();
		       
		        List<ModelCadastroImpressoras> consumoimpressora =daoCalculadoraCustos4.buscarconsumoimpressora();
		        request.setAttribute("consumoimpressora", consumoimpressora);
		        request.setAttribute("materiais", materiais);
		        // Passar os dados para a página JSP
		        request.setAttribute("calculadora", calculadora);
		        request.setAttribute("impressoras", impressoras);
		        
		        
		        
		        // Encaminhar a requisição para a página JSP
		        request.getRequestDispatcher("principal/principal.jsp").forward(request, response);
		        
		    } else if (acao != null && !acao.isEmpty() && acao.equalsIgnoreCase("excluir")) {

					String id = request.getParameter("id");

					daoCalculadoraCustos.deleteCalculadora(Long.parseLong(id));

					response.getWriter().write("Excluido com sucesso!");
					
					 DAOCalculadoraCustos daoCalculadoraCustos = new DAOCalculadoraCustos();
				        
				        // Chamar o método buscarVideos() para obter os dados do banco de dados
				        List<ModelCalculadora> calculadora = daoCalculadoraCustos.buscarCalculadora();
				        
				        
				        
				        DAOCalculadoraCustos daoCalculadoraCustos3 = new DAOCalculadoraCustos();
				        List<ModelCadastroMateriais> materiais = daoCalculadoraCustos3.buscarfabricante();
				        
				        request.setAttribute("materiais", materiais);
				        
				        // Passar os dados para a página JSP
				        request.setAttribute("calculadora", calculadora);
				        
				        
				        DAOCalculadoraCustos daoCalculadoraCustos2 = new DAOCalculadoraCustos();
				        
				        List<ModelCadastroImpressoras>impressoras = daoCalculadoraCustos2.buscarNomeImpressora();
				        
				        
				        // Passar os dados para a página JSP
				      
				        request.setAttribute("impressoras", impressoras);
					
					   request.getRequestDispatcher("principal/principal.jsp").forward(request, response);

				}
		        
		        
		  
		} catch (Exception e) {
		    e.printStackTrace();
		    // Tratar qualquer exceção que possa ocorrer
		}
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
			String idusuariologado = request.getParameter("idusuariologado");
			
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
			modelCalculadora.setIdusuariologado(idusuariologado);
			
			
			
			
			
			
			daoCalculadoraCustos.gravacalculos(modelCalculadora);
			
			
			 DAOCalculadoraCustos daoCalculadoraCustos = new DAOCalculadoraCustos();
		        
		        // Chamar o método buscarVideos() para obter os dados do banco de dados
		        List<ModelCalculadora> calculadora = daoCalculadoraCustos.buscarCalculadora();
		        
		        // Passar os dados para a página JSP
		        request.setAttribute("calculadora", calculadora);
			
		        DAOCalculadoraCustos daoCalculadoraCustos2 = new DAOCalculadoraCustos();
		        
		        List<ModelCadastroImpressoras>impressoras = daoCalculadoraCustos2.buscarNomeImpressora();
		        
		        
		        // Passar os dados para a página JSP
		      
		        request.setAttribute("impressoras", impressoras);
		        
		        
		        DAOCalculadoraCustos daoCalculadoraCustos3 = new DAOCalculadoraCustos();
		        List<ModelCadastroMateriais> materiais = daoCalculadoraCustos3.buscarfabricante();
		        
		        request.setAttribute("materiais", materiais);
				
			
			request.setAttribute("msg", msg);
			
			request.setAttribute("msg", "Salvo com sucesso");
			request.getRequestDispatcher("principal/principal.jsp").forward(request, response);
		 
		
		}catch (Exception e) {
			e.printStackTrace();
		}
	}

}