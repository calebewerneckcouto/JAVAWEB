package servlets;

import java.io.IOException;
import java.util.List;

import dao.DAOUsuarioRepository;
import dao.DAOVideos;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.ModelLogin;
import model.ModelVideos;

@WebServlet("/SertvletVideos")
public class SertvletVideos extends ServletGenericUtil {

	private static final long serialVersionUID = 1L;

	private DAOUsuarioRepository daoUsuarioRepository = new DAOUsuarioRepository();
	
   private DAOVideos daoVideos = new DAOVideos();
   
   

	public SertvletVideos() {
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			
		String acao = request.getParameter("acao");
		
		if (acao != null && !acao.isEmpty() && acao.equals("excluir")) {
			
			String idvideo = request.getParameter("id");
			
			  daoVideos.deleteVideos(Long.parseLong(idvideo));
			
			String userpai = request.getParameter("userpai");
			
			ModelLogin modelLogin = daoUsuarioRepository.consultaUsuarioID(Long.parseLong(userpai));
			
			List<ModelVideos> modelVideos = daoVideos.listVideos(modelLogin.getId());
			request.setAttribute("modelVideos", modelVideos);
			
			request.setAttribute("msg", "Video Excluido");
			request.setAttribute("modelLogin", modelLogin);
			request.getRequestDispatcher("principal/videos.jsp").forward(request, response);
			
			return;
		}
		
		else if (acao != null && !acao.isEmpty() && acao.equalsIgnoreCase("buscarEditar")) {

			String id = request.getParameter("id");

			ModelLogin modelLogin = daoUsuarioRepository.consultaUsuarioID(id, super.getUserLogado(request));

			List<ModelLogin> modelLogins = daoUsuarioRepository.consultaUsuarioList(super.getUserLogado(request));
			request.setAttribute("modelLogins", modelLogins);

			request.setAttribute("msg", "Usuario em edição");
			request.setAttribute("modolLogin", modelLogin);
			request.setAttribute("totalPagina", daoUsuarioRepository.totalPagina(this.getUserLogado(request)));
			request.getRequestDispatcher("principal/usuario.jsp").forward(request, response);
		}
		
		
			
		
		String iduser = request.getParameter("iduser");
		
		if (iduser != null && !iduser.isEmpty()) {
				
				ModelLogin modelLogin = daoUsuarioRepository.consultaUsuarioID(Long.parseLong(iduser));
			
				List<ModelVideos> modelVideos = daoVideos.listVideos(modelLogin.getId());
				request.setAttribute("modelVideos", modelVideos);
				
				request.setAttribute("modelLogin", modelLogin);
				request.getRequestDispatcher("principal/videos.jsp").forward(request, response);
	
		
		}else {
			 List<ModelLogin> modelLogins = daoUsuarioRepository.consultaUsuarioList(super.getUserLogado(request));
		     request.setAttribute("modelLogins", modelLogins);
		     request.setAttribute("totalPagina", daoUsuarioRepository.totalPagina(this.getUserLogado(request)));
			 request.getRequestDispatcher("principal/usuario.jsp").forward(request, response);
		}
		
		
		}catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		try {
		
			String usuario_pai_id = request.getParameter("id");
			String nomevideo = request.getParameter("nomevideo");
			String link = request.getParameter("link");
			String pagina = request.getParameter("pagina");
			
			ModelVideos modelVideos = new ModelVideos();
			
			modelVideos.setNomevideo(nomevideo);
			modelVideos.setLink(link);
			modelVideos.setPagina(pagina);
			modelVideos.setUsuario_pai_id(daoUsuarioRepository.consultaUsuarioID(Long.parseLong(usuario_pai_id)));
			modelVideos.setUsuario_cad_id(super.getUserLogadoObjt(request));
			
			daoVideos.gravaVideo(modelVideos);
			
			List<ModelVideos> modelVideo = daoVideos.listVideos(Long.parseLong(usuario_pai_id));
			
			ModelLogin modelLogin = daoUsuarioRepository.consultaUsuarioID(Long.parseLong(usuario_pai_id));
			
			request.setAttribute("modelLogin", modelLogin);
			request.setAttribute("modelVideo", modelVideo);
			request.setAttribute("msg", "Salvo com sucesso");
			request.getRequestDispatcher("principal/videos.jsp").forward(request, response);
		 
		
		}catch (Exception e) {
			e.printStackTrace();
		}
	}

}