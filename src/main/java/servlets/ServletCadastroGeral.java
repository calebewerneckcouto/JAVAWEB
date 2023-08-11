package servlets;

import java.io.IOException;

import java.util.List;

import dao.DAOCadastroGeral;
import dao.DAOUsuarioRepository;
import dao.DAOVideos;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.ModelGeral;
import model.ModelLogin;
import model.ModelVideoNome;
import model.ModelVideos;

@WebServlet("/SertvletCadastroGeral")
public class ServletCadastroGeral extends ServletGenericUtil {
	private static final long serialVersionUID = 1L;
	
	
	
	DAOUsuarioRepository daoUsuarioRepository = new DAOUsuarioRepository();
    public ServletCadastroGeral() {
   
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	 
		
		try {
		   
		    String acao = request.getParameter("acao");
		 
		    
		    
		
		    
		    if (acao != null && !acao.isEmpty() && acao.equalsIgnoreCase("listargeral")) {
		
		        // Criar uma instância da classe de acesso aos dados (DAO) ou qualquer classe que lide com a recuperação dos dados do banco de dados
		        DAOCadastroGeral daoCadastroGeral = new DAOCadastroGeral();
		        
		   List<ModelGeral> geral = daoCadastroGeral.buscarCadastroGeral();
		        
		        // Passar os dados para a página JSP
		        request.setAttribute("geral", geral);
		       
		        
		        // Encaminhar a requisição para a página JSP
		        request.getRequestDispatcher("principal/cadastrogeral.jsp").forward(request, response);
		        
		    } else if (acao != null && !acao.isEmpty() && acao.equalsIgnoreCase("excluir")) {

					String id = request.getParameter("id");

					DAOCadastroGeral daoCadastroGeral = new DAOCadastroGeral();
					
					
					daoCadastroGeral.deletecadastrogeral(Long.parseLong(id));

					response.getWriter().write("Excluido com sucesso!");
					
					 // Criar uma instância da classe de acesso aos dados (DAO) ou qualquer classe que lide com a recuperação dos dados do banco de dados
			        DAOCadastroGeral daoCadastroGeral2 = new DAOCadastroGeral();
			        
			        // Chamar o método buscarVideos() para obter os dados do banco de dados
			        List<ModelGeral> geral = daoCadastroGeral2.buscarCadastroGeral();
			       
			        
			        // Passar os dados para a página JSP
			        request.setAttribute("geral", geral);
			      
					
					   request.getRequestDispatcher("principal/cadastrogeral.jsp").forward(request, response);

				}
		        
		        
		  
		} catch (Exception e) {
		    e.printStackTrace();
		    // Tratar qualquer exceção que possa ocorrer
		}
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String usuariologado = request.getParameter("id");
		
		
		try {
			
			String msg = "Operação realizada com sucesso!";
	        
		    String custoenergia = request.getParameter("custoenergia");
			String custodetrabalho = request.getParameter("custodetrabalho");
			String taxadeperdas = request.getParameter("taxadeperdas");
		    String unidademonetaria = request.getParameter("unidademonetaria");
		    String totalgeral = request.getParameter("totalgeral");
		    String idusuariologado = request.getParameter("idusuariologado");
			ModelGeral modelGeral = new ModelGeral();
			
			  
				
				
				
				  
				DAOCadastroGeral daoCadastroGeral = new DAOCadastroGeral();
				List<ModelGeral > usuariologadogeral = daoCadastroGeral.buscaridusuariologado(usuariologado);
				
			     
				
				 
			
			
		if(usuariologadogeral.size() == 0) {
			  
			
				
				modelGeral.setCustoenergia(custoenergia);
				modelGeral.setCustodetrabalho(custodetrabalho);
				modelGeral.setTaxadeperdas(taxadeperdas);
				modelGeral.setUnidademonetaria(unidademonetaria);
				modelGeral.setTotalgeral(totalgeral);
				modelGeral.setIdusuariologado(idusuariologado);
				
				
				
				DAOCadastroGeral daoGeral = new DAOCadastroGeral();
				
				daoGeral.gravaGeral(modelGeral);
		

				 DAOCadastroGeral daoGeral2 = new DAOCadastroGeral();
			        
			        // Chamar o método buscarVideos() para obter os dados do banco de dados
			        List<ModelGeral> geral = daoGeral2.buscarCadastroGeral();
			        
			        // Passar os dados para a página JSP
			        request.setAttribute("geral", geral);
			        
			        request.setAttribute("msg", msg);
					
					request.setAttribute("msg", "Salvo com sucesso");
				
		}else {
			
			  request.setAttribute("msg", msg);
				
				request.setAttribute("msg", "Ja Possui Cadastro!!!!!");
				 DAOCadastroGeral daoGeral2 = new DAOCadastroGeral();
			        
			        // Chamar o método buscarVideos() para obter os dados do banco de dados
			        List<ModelGeral> geral = daoGeral2.buscarCadastroGeral();
			        
			        // Passar os dados para a página JSP
			        request.setAttribute("geral", geral);
			
		}
	  			
				
				
				
				
			
				
				request.getRequestDispatcher("principal/cadastrogeral.jsp").forward(request, response);
			 
				
			
			
			
	
		
		}catch (Exception e) {
			e.printStackTrace();
		}
	}

}
