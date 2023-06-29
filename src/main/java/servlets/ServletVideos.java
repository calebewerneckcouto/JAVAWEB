package servlets;

import java.io.IOException;

import java.util.List;

import dao.DAOUsuarioRepository;
import dao.DAOVideos;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

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
		              		
		              		if (acao != null && !acao.isEmpty() && acao.equals("excluir")) {
		              			
		              			String idvideo = request.getParameter("id");
		              			
		              			daoVideos.deleteVideos(Long.parseLong(idvideo));
		              			
		              			
		              		
		              			request.getRequestDispatcher("principal/videos.jsp").forward(request, response);
		              			
		              			return;
		              		}
		              		
		                	  
		                	  
		                  }catch (Exception e) {
						e.printStackTrace();
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
	
			
			
  			
  			
			
			
			
			
		
			request.setAttribute("msg", msg);
		
			request.setAttribute("msg", "Salvo com sucesso");
			request.getRequestDispatcher("principal/videos.jsp").forward(request, response);
		 
		
		}catch (Exception e) {
			e.printStackTrace();
		}
	}

}
