package servlets;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.ModelCadastroImpressoras;
import model.ModelVideoNome;
import model.ModelVideos;

import java.io.IOException;
import java.util.List;

import dao.DAOCadastroImpressoras;
import dao.DAOVideos;

@WebServlet("/SertvletCadastroImpressoras")
public class ServletCadastroImpressoras extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ServletCadastroImpressoras() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		
		try {
			   
		    String acao = request.getParameter("acao");
		    
		    
		    
		
		    
		    if (acao != null && !acao.isEmpty() && acao.equalsIgnoreCase("listarcadastroimpressoras")) {
		
		        // Criar uma instância da classe de acesso aos dados (DAO) ou qualquer classe que lide com a recuperação dos dados do banco de dados
		        DAOCadastroImpressoras daoCadastroImpressoras = new DAOCadastroImpressoras();
		        
		        // Chamar o método buscarVideos() para obter os dados do banco de dados
		        List<ModelCadastroImpressoras> cadastroimpressoras = daoCadastroImpressoras.buscarCadastroImpressora();
		        
		        
		        // Passar os dados para a página JSP
		        request.setAttribute("cadastroimpressora", cadastroimpressoras);
		       
		        
		        // Encaminhar a requisição para a página JSP
		        request.getRequestDispatcher("principal/cadastroimpressoras.jsp").forward(request, response);
		        
		    } else if (acao != null && !acao.isEmpty() && acao.equalsIgnoreCase("excluir")) {

					String id = request.getParameter("id");
					DAOCadastroImpressoras daoCadastroImpressoras = new DAOCadastroImpressoras();

					daoCadastroImpressoras.deletecadastroimpressoras(Long.parseLong(id));

					response.getWriter().write("Excluido com sucesso!");
					
					 // Criar uma instância da classe de acesso aos dados (DAO) ou qualquer classe que lide com a recuperação dos dados do banco de dados
			        DAOCadastroImpressoras daoCadastroImpressoras2 = new DAOCadastroImpressoras();
			        
			        // Chamar o método buscarVideos() para obter os dados do banco de dados
			        List<ModelCadastroImpressoras> cadastroimpressoras = daoCadastroImpressoras2.buscarCadastroImpressora();
			       
			        
			        // Passar os dados para a página JSP
			        request.setAttribute("cadastroimpressora", cadastroimpressoras);
			       
			        
					
					   request.getRequestDispatcher("principal/cadastroimpressoras.jsp").forward(request, response);

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

			String nomedaimpressora = request.getParameter("nomedaimpressora");
			String diametrodomaterial = request.getParameter("diametrodomaterial");
			String preco = request.getParameter("preco");
			String tempodepreciacao = request.getParameter("tempodepreciacao");
			String custodereparos = request.getParameter("custodereparos");
			String consumodeenergia = request.getParameter("consumodeenergia");
			String depreciacao =request.getParameter("depreciacao");
			String idusuariologado = request.getParameter("idusuariologado");

			ModelCadastroImpressoras modelCadastroImpressoras = new ModelCadastroImpressoras();

			modelCadastroImpressoras.setNomedaimpressora(nomedaimpressora);
			modelCadastroImpressoras.setDiametrodomaterial(diametrodomaterial);
			modelCadastroImpressoras.setPreco(preco);
			modelCadastroImpressoras.setTempodepreciacao(tempodepreciacao);
			modelCadastroImpressoras.setCustodereparos(custodereparos);
			modelCadastroImpressoras.setConsumodeenergia(consumodeenergia);
			modelCadastroImpressoras.setDepreciacao(depreciacao);
			modelCadastroImpressoras.setIdusuariologado(idusuariologado);
			

			DAOCadastroImpressoras daoCadastroImpressoras = new DAOCadastroImpressoras();
			daoCadastroImpressoras.gravaImpressora(modelCadastroImpressoras);
			

			DAOCadastroImpressoras daoCadastroImpressoras2 = new DAOCadastroImpressoras();

			// Chamar o método buscarVideos() para obter os dados do banco de dados
			List<ModelCadastroImpressoras> cadastroimpressora = daoCadastroImpressoras2.buscarCadastroImpressora();

			// Passar os dados para a página JSP
			request.setAttribute("cadastroimpressora", cadastroimpressora);

			request.setAttribute("msg", msg);

			request.setAttribute("msg", "Salvo com sucesso");
			request.getRequestDispatcher("principal/cadastroimpressoras.jsp").forward(request, response);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
