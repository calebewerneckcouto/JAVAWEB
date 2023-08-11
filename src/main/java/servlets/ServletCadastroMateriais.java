package servlets;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.ModelCadastroImpressoras;
import model.ModelCadastroMateriais;
import model.ModelVideoNome;
import model.ModelVideos;

import java.io.IOException;
import java.util.List;

import dao.DAOCadastroImpressoras;
import dao.DAOCadastroMateriais;
import dao.DAOVideos;

@WebServlet("/SertvletCadastroMateriais")
public class ServletCadastroMateriais extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ServletCadastroMateriais() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		
		try {
			   
		    String acao = request.getParameter("acao");
		    
		    
		    
		
		    
		    if (acao != null && !acao.isEmpty() && acao.equalsIgnoreCase("listarmateriais")) {
		
		        // Criar uma instância da classe de acesso aos dados (DAO) ou qualquer classe que lide com a recuperação dos dados do banco de dados
		        DAOCadastroMateriais daoCadastroMateriais = new DAOCadastroMateriais();
		        
		        // Chamar o método buscarVideos() para obter os dados do banco de dados
		        List<ModelCadastroMateriais> cadastroMateriais = daoCadastroMateriais.buscarCadastroMateriais();
		        
		        
		        // Passar os dados para a página JSP
		        request.setAttribute("cadastroMateriais", cadastroMateriais);
		       
		        
		        // Encaminhar a requisição para a página JSP
		        request.getRequestDispatcher("principal/cadastrodemateriais.jsp").forward(request, response);
		        
		    } else if (acao != null && !acao.isEmpty() && acao.equalsIgnoreCase("excluir")) {

					String id = request.getParameter("id");
					DAOCadastroMateriais daoCadastroMateriais = new DAOCadastroMateriais();

					daoCadastroMateriais.deletecadastromateriais(Long.parseLong(id));

					response.getWriter().write("Excluido com sucesso!");
					
					 // Criar uma instância da classe de acesso aos dados (DAO) ou qualquer classe que lide com a recuperação dos dados do banco de dados
			        DAOCadastroMateriais daoCadastroMateriais2 = new DAOCadastroMateriais();
			        
			        // Chamar o método buscarVideos() para obter os dados do banco de dados
			        List<ModelCadastroMateriais> cadastroMateriais = daoCadastroMateriais2.buscarCadastroMateriais();
			       
			        
			        // Passar os dados para a página JSP
			        request.setAttribute("cadastroMateriais", cadastroMateriais);
			       
			        
					
					   request.getRequestDispatcher("principal/cadastrodemateriais.jsp").forward(request, response);

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

			String fabricante = request.getParameter("fabricante");
			String diametro = request.getParameter("diametro");
			String precorolo = request.getParameter("precorolo");
			String tamanhorolo = request.getParameter("tamanhorolo");
			String densidade = request.getParameter("densidade");
			String temperaturanozzle = request.getParameter("temperaturanozzle");
			String temperaturamesa =request.getParameter("temperaturamesa");
			String comprimentorolo= request.getParameter("comprimentorolo");
			String preco = request.getParameter("preco");
			String idusuariologado=request.getParameter("idusuariologado");

			ModelCadastroMateriais modelCadastroMateriais = new ModelCadastroMateriais();

			modelCadastroMateriais.setFabricante(fabricante);
			modelCadastroMateriais.setDiametro(diametro);
			modelCadastroMateriais.setPrecorolo(precorolo);
			modelCadastroMateriais.setTamanhorolo(tamanhorolo);
			modelCadastroMateriais.setDensidade(densidade);
			modelCadastroMateriais.setTemperaturanozzle(temperaturanozzle);
			modelCadastroMateriais.setTemperaturamesa(temperaturamesa);
			modelCadastroMateriais.setComprimentorolo(comprimentorolo);
			modelCadastroMateriais.setPreco(preco);
			modelCadastroMateriais.setIdusuariologado(idusuariologado);
			

			DAOCadastroMateriais daoCadastroMateriais = new DAOCadastroMateriais();
			daoCadastroMateriais.gravaMateriais(modelCadastroMateriais);
			

			DAOCadastroMateriais daoCadastroMateriais2 = new DAOCadastroMateriais();

			// Chamar o método buscarVideos() para obter os dados do banco de dados
			List<ModelCadastroMateriais> cadastroMateriais = daoCadastroMateriais2.buscarCadastroMateriais();

			// Passar os dados para a página JSP
			request.setAttribute("cadastroMateriais", cadastroMateriais);

			request.setAttribute("msg", msg);

			request.setAttribute("msg", "Salvo com sucesso");
			request.getRequestDispatcher("principal/cadastrodemateriais.jsp").forward(request, response);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
