package servlets;

import java.io.IOException;

import java.util.List;

import dao.DAOUsuarioRepository;
import dao.DAOVideos;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.ModelVideoNome;
import model.ModelVideos;

@WebServlet("/SertvletVideos")
public class ServletVideos extends ServletGenericUtil {
	private static final long serialVersionUID = 1L;
	
	private DAOVideos daoVideos = new DAOVideos();
	
	DAOUsuarioRepository daoUsuarioRepository = new DAOUsuarioRepository();
    public ServletVideos() {
   
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	 
		
		try {
		   
		    String acao = request.getParameter("acao");
		    
		    
		    
		
		    
		    if (acao != null && !acao.isEmpty() && acao.equalsIgnoreCase("listarVideos")) {
		
		        // Criar uma instância da classe de acesso aos dados (DAO) ou qualquer classe que lide com a recuperação dos dados do banco de dados
		        DAOVideos daoVideos = new DAOVideos();
		        
		        // Chamar o método buscarVideos() para obter os dados do banco de dados
		        List<ModelVideos> videos = daoVideos.buscarVideos();
		        List<ModelVideoNome> videos2 = daoVideos.buscarVideosnome();
		        
		        // Passar os dados para a página JSP
		        request.setAttribute("videos", videos);
		        request.setAttribute("videos2", videos2);
		        
		        // Encaminhar a requisição para a página JSP
		        request.getRequestDispatcher("principal/videos.jsp").forward(request, response);
		        
		    } else if (acao != null && !acao.isEmpty() && acao.equalsIgnoreCase("excluir")) {

					String id = request.getParameter("id");

					daoVideos.deleteVideos(Long.parseLong(id));

					response.getWriter().write("Excluido com sucesso!");
					
					 // Criar uma instância da classe de acesso aos dados (DAO) ou qualquer classe que lide com a recuperação dos dados do banco de dados
			        DAOVideos daoVideos = new DAOVideos();
			        
			        // Chamar o método buscarVideos() para obter os dados do banco de dados
			        List<ModelVideos> videos = daoVideos.buscarVideos();
			        List<ModelVideoNome> videos2 = daoVideos.buscarVideosnome();
			        
			        // Passar os dados para a página JSP
			        request.setAttribute("videos", videos);
			        request.setAttribute("videos2", videos2);
			        
					
					   request.getRequestDispatcher("principal/videos.jsp").forward(request, response);

				}
		        
		        
		  
		} catch (Exception e) {
		    e.printStackTrace();
		    // Tratar qualquer exceção que possa ocorrer
		}
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			
			String msg = "Operação realizada com sucesso!";
	        
		    String nomevideo = request.getParameter("nomevideo");
			String link = request.getParameter("link");
			String pagina = request.getParameter("pagina");
			
			
			ModelVideos modelVideos = new ModelVideos();
			
			
			modelVideos.setNomevideo(nomevideo);
			modelVideos.setLink(link);
			modelVideos.setPagina(pagina);
			
			
			daoVideos.gravaVideos(modelVideos);
	

			 DAOVideos daoVideos = new DAOVideos();
		        
		        // Chamar o método buscarVideos() para obter os dados do banco de dados
		        List<ModelVideos> videos3 = daoVideos.buscarVideos();
		        
		        // Passar os dados para a página JSP
		        request.setAttribute("videos", videos3);
			
  			
  			
			
			
			
			
		
			request.setAttribute("msg", msg);
		
			request.setAttribute("msg", "Salvo com sucesso");
			request.getRequestDispatcher("principal/videos.jsp").forward(request, response);
		 
		
		}catch (Exception e) {
			e.printStackTrace();
		}
	}

}