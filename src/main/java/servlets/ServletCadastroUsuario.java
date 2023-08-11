package servlets;

import javax.servlet.ServletException;

import javax.servlet.annotation.WebServlet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.ModelCadastro;

import java.io.IOException;
import java.util.List;

import model.ModelLogin;
import dao.DAOCadastroUsuario;
import dao.DAOUsuarioRepository;

@WebServlet(urlPatterns = { "/ServletCadU" })
public class ServletCadastroUsuario extends ServletGenericUtil {
	private static final long serialVersionUID = 1L;
	private DAOUsuarioRepository daoUsuarioRepository = new DAOUsuarioRepository();

	public ServletCadastroUsuario() {

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {
			String msg = "Cadastro Efetuado com Sucesso!";
			String login = request.getParameter("login");
			String senha = request.getParameter("senha");
			String nome = request.getParameter("nome");
			String email = request.getParameter("email");
			String permissao = request.getParameter("permissao");
			
			
			

			ModelCadastro modelCadastro = new ModelCadastro();

			modelCadastro.setLogin(login);
			modelCadastro.setSenha(senha);
			modelCadastro.setNome(nome);
			modelCadastro.setEmail(email);
			modelCadastro.setPermissao(permissao);
		

			

			DAOCadastroUsuario daoCadastroUsuario = new DAOCadastroUsuario();
			
			daoCadastroUsuario.gravaUsuario(modelCadastro);
			
				
			
			request.setAttribute("msg", msg);
			request.setAttribute("modelCadastro", modelCadastro);
			

			request.getRequestDispatcher("index.jsp").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
}
