package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import connection.SingleConnectionBanco;
import model.ModelLogin;

public class DAOUsuarioRepository {
	
	
	private Connection connection;
	
	
	public DAOUsuarioRepository() {
		connection = SingleConnectionBanco.getConnection();
	}
	
	public ModelLogin gravarUsuario(ModelLogin objeto, Long userLogado) throws Exception {
		
		if (objeto.isNovo()) {/*Grava um novo*/
		
		String sql = "INSERT INTO model_login(login, senha, nome, email, usuario_id, permissao)  VALUES (?, ?, ?, ?, ?, ?);";
		PreparedStatement preparedSql = connection.prepareStatement(sql);
		
		preparedSql.setString(1, objeto.getLogin());
		preparedSql.setString(2, objeto.getSenha());
		preparedSql.setString(3, objeto.getNome());
		preparedSql.setString(4, objeto.getEmail());
		preparedSql.setLong(5, userLogado);
		preparedSql.setString(6, objeto.getPermissao());
		
		
		preparedSql.execute();
		
		connection.commit();
		
		if(objeto.getFotouser() != null && !objeto.getFotouser().isEmpty()) {
			sql = "update model_login set fotouser =?, extensaofotouser=? where login =?";
			preparedSql = connection.prepareStatement(sql);
			preparedSql.setString(1, objeto.getFotouser());
			preparedSql.setString(2,objeto.getExtensaofotouser());
			preparedSql.setString(3, objeto.getLogin());
			
			preparedSql.execute();
			
			connection.commit();
		}
		
		
		}else {
			String sql = "UPDATE model_login SET login=?, senha=?, nome=?, email=?, permissao=? WHERE id =  "+objeto.getId()+";";
			
			PreparedStatement prepareSql = connection.prepareStatement(sql);
			
			prepareSql.setString(1, objeto.getLogin());
			prepareSql.setString(2, objeto.getSenha());
			prepareSql.setString(3, objeto.getNome());
			prepareSql.setString(4, objeto.getEmail());
			prepareSql.setString(5, objeto.getPermissao());
			
			
			prepareSql.executeUpdate();
			
			connection.commit();
			
			if(objeto.getFotouser() != null && !objeto.getFotouser().isEmpty()) {
				sql = "update model_login set fotouser =?, extensaofotouser=? where id =?";
				prepareSql = connection.prepareStatement(sql);
				prepareSql.setString(1, objeto.getFotouser());
				prepareSql.setString(2,objeto.getExtensaofotouser());
				prepareSql.setLong(3, objeto.getId());
				
				prepareSql.execute();
				
				connection.commit();
			}
			
			
		}
		
		
		return this.consultaUsuario(objeto.getLogin(), userLogado);
	}
	
	
	
	public List<ModelLogin> consultaUsuarioListPaginada(Long userLogado,Integer offset) throws Exception {
		
		List<ModelLogin> retorno = new ArrayList<ModelLogin>();
		
		String sql = "select * from model_login where useradmin is false and usuario_id = " + userLogado + " order by nome offset "+offset+ " limit 5";
		PreparedStatement statement = connection.prepareStatement(sql);
		
		ResultSet resultado = statement.executeQuery();
		
		while (resultado.next()) { /*percorrer as linhas de resultado do SQL*/
			
			ModelLogin modelLogin = new ModelLogin();
			
			modelLogin.setEmail(resultado.getString("email"));
			modelLogin.setId(resultado.getLong("id"));
			modelLogin.setLogin(resultado.getString("login"));
			modelLogin.setNome(resultado.getString("nome"));
			modelLogin.setSenha(resultado.getString("senha"));
			modelLogin.setPermissao(resultado.getString("permissao"));
			
			
			retorno.add(modelLogin);
		}
		
		
		return retorno;
	}
	
public int totalPagina(Long userLogado) throws Exception {
		
		String sql = "select count(1) as total from model_login  where usuario_id = " + userLogado;
		
		PreparedStatement statement = connection.prepareStatement(sql);
		
		ResultSet resultado = statement.executeQuery();
		
		resultado.next();
		
		Double cadastros = resultado.getDouble("total");
		
		Double porpagina = 5.0;
		
		Double pagina = cadastros / porpagina;
		
		Double resto = pagina % 2;
		
		if (resto > 0) {
			pagina ++;
		}
		
		return pagina.intValue();
		
	}
	
	public List<ModelLogin> consultaUsuarioList(Long userLogado) throws Exception {
		
		List<ModelLogin> retorno = new ArrayList<ModelLogin>();
		
		String sql = "select * from model_login where useradmin is false and usuario_id = " + userLogado + " limit 5";
		PreparedStatement statement = connection.prepareStatement(sql);
		
		ResultSet resultado = statement.executeQuery();
		
		while (resultado.next()) { /*percorrer as linhas de resultado do SQL*/
			
			ModelLogin modelLogin = new ModelLogin();
			
			modelLogin.setEmail(resultado.getString("email"));
			modelLogin.setId(resultado.getLong("id"));
			modelLogin.setLogin(resultado.getString("login"));
			modelLogin.setNome(resultado.getString("nome"));
			modelLogin.setSenha(resultado.getString("senha"));
			modelLogin.setPermissao(resultado.getString("permissao"));
			
			
			retorno.add(modelLogin);
		}
		
		
		return retorno;
	}
	
	
	public List<ModelLogin> consultaUsuarioList(String nome, Long userLogado) throws Exception {
		
		List<ModelLogin> retorno = new ArrayList<ModelLogin>();
		
		String sql = "select * from model_login  where upper(nome) like upper(?) and useradmin is false and usuario_id = ? limit 5";
		PreparedStatement statement = connection.prepareStatement(sql);
		statement.setString(1, "%" + nome + "%");
		statement.setLong(2, userLogado);
	
		ResultSet resultado = statement.executeQuery();
	
		
		while (resultado.next()) { /*percorrer as linhas de resultado do SQL*/
			
			ModelLogin modelLogin = new ModelLogin();
			
			modelLogin.setEmail(resultado.getString("email"));
			modelLogin.setId(resultado.getLong("id"));
			modelLogin.setLogin(resultado.getString("login"));
			modelLogin.setNome(resultado.getString("nome"));
			modelLogin.setSenha(resultado.getString("senha"));
			modelLogin.setPermissao(resultado.getString("permissao"));
			
			
			retorno.add(modelLogin);
			
		}
		
		
		return retorno;
		
	
	}
	
	
	public ModelLogin consultaUsuarioLogado1(Long id) throws Exception  {
		
		ModelLogin modelLogin = new ModelLogin();
		
		String sql = "select * from model_login where upper(id) = upper('"+id+"')";
		
		PreparedStatement statement = connection.prepareStatement(sql);
		
		ResultSet resutlado =  statement.executeQuery();
		
		while (resutlado.next()) /*Se tem resultado*/ {
			
			modelLogin.setId(resutlado.getLong("id"));
			modelLogin.setEmail(resutlado.getString("email"));
			modelLogin.setLogin(resutlado.getString("login"));
			modelLogin.setSenha(resutlado.getString("senha"));
			modelLogin.setNome(resutlado.getString("nome"));
			modelLogin.setUseradmin(resutlado.getBoolean("useradmin"));
			modelLogin.setPermissao(resutlado.getString("permissao"));;
			modelLogin.setFotouser(resutlado.getString("fotouser"));
		}
		
		
		return modelLogin;
		
	}
	
public ModelLogin consultaUsuarioLogado(String login) throws Exception  {
		
		ModelLogin modelLogin = new ModelLogin();
		
		String sql = "select * from model_login where upper(login) = upper('"+login+"')";
		
		PreparedStatement statement = connection.prepareStatement(sql);
		
		ResultSet resutlado =  statement.executeQuery();
		
		while (resutlado.next()) /*Se tem resultado*/ {
			
			modelLogin.setId(resutlado.getLong("id"));
			modelLogin.setEmail(resutlado.getString("email"));
			modelLogin.setLogin(resutlado.getString("login"));
			modelLogin.setSenha(resutlado.getString("senha"));
			modelLogin.setNome(resutlado.getString("nome"));
			modelLogin.setUseradmin(resutlado.getBoolean("useradmin"));
			modelLogin.setPermissao(resutlado.getString("permissao"));;
			modelLogin.setFotouser(resutlado.getString("fotouser"));
		}
		
		
		return modelLogin;
		
	}




	
	public ModelLogin consultaUsuario(String login) throws Exception  {
		
		ModelLogin modelLogin = new ModelLogin();
		
		String sql = "select * from model_login where upper(login) = upper('"+login+"') and useradmin is false ";
		
		PreparedStatement statement = connection.prepareStatement(sql);
		
		ResultSet resutlado =  statement.executeQuery();
		
		while (resutlado.next()) /*Se tem resultado*/ {
			
			modelLogin.setId(resutlado.getLong("id"));
			modelLogin.setEmail(resutlado.getString("email"));
			modelLogin.setLogin(resutlado.getString("login"));
			modelLogin.setSenha(resutlado.getString("senha"));
			modelLogin.setNome(resutlado.getString("nome"));
			modelLogin.setUseradmin(resutlado.getBoolean("useradmin"));
			modelLogin.setPermissao(resutlado.getString("permissao"));
			modelLogin.setFotouser(resutlado.getString("fotouser"));
		}
		
		
		return modelLogin;
		
	}
	
	
	
	public ModelLogin consultaUsuario(String login, Long userLogado) throws Exception  {
		
		ModelLogin modelLogin = new ModelLogin();
		
		String sql = "select * from model_login where upper(login) = upper('"+login+"') and useradmin is false and usuario_id = " + userLogado;
		
		PreparedStatement statement = connection.prepareStatement(sql);
		
		ResultSet resutlado =  statement.executeQuery();
		
		while (resutlado.next()) /*Se tem resultado*/ {
			
			modelLogin.setId(resutlado.getLong("id"));
			modelLogin.setEmail(resutlado.getString("email"));
			modelLogin.setLogin(resutlado.getString("login"));
			modelLogin.setSenha(resutlado.getString("senha"));
			modelLogin.setNome(resutlado.getString("nome"));
			modelLogin.setPermissao(resutlado.getString("permissao"));
			modelLogin.setFotouser(resutlado.getString("fotouser"));
		}
		
		
		return modelLogin;
		
	}
	
	
	

	public ModelLogin consultaUsuarioID(Long id) throws Exception  {
		
		ModelLogin modelLogin = new ModelLogin();
		
		String sql = "select * from model_login where id = ? and useradmin is false";
		
		PreparedStatement statement = connection.prepareStatement(sql);
		statement.setLong(1, id);
		
		
		ResultSet resutlado =  statement.executeQuery();
		
		while (resutlado.next()) /*Se tem resultado*/ {
			
			modelLogin.setId(resutlado.getLong("id"));
			modelLogin.setEmail(resutlado.getString("email"));
			modelLogin.setLogin(resutlado.getString("login"));
			modelLogin.setSenha(resutlado.getString("senha"));
			modelLogin.setNome(resutlado.getString("nome"));
			modelLogin.setPermissao(resutlado.getString("permissao"));
			modelLogin.setFotouser(resutlado.getString("fotouser"));
		}
		
		
		return modelLogin;
		
	}
		
	
	
	
	public ModelLogin consultaUsuarioID(String id, Long userLogado) throws Exception  {
		
		ModelLogin modelLogin = new ModelLogin();
		
		String sql = "select * from model_login where id = ? and useradmin is false and usuario_id = ?";
		
		PreparedStatement statement = connection.prepareStatement(sql);
		statement.setLong(1, Long.parseLong(id));
		statement.setLong(2, userLogado);
		
		ResultSet resutlado =  statement.executeQuery();
		
		while (resutlado.next()) /*Se tem resultado*/ {
			
			modelLogin.setId(resutlado.getLong("id"));
			modelLogin.setEmail(resutlado.getString("email"));
			modelLogin.setLogin(resutlado.getString("login"));
			modelLogin.setSenha(resutlado.getString("senha"));
			modelLogin.setNome(resutlado.getString("nome"));
			modelLogin.setPermissao(resutlado.getString("permissao"));
		    modelLogin.setFotouser(resutlado.getString("fotouser"));
	
		}
		
		
		return modelLogin;
		
		
	}
	
	
	
	public boolean validarLogin(String login) throws Exception {
		String sql = "select count(1) > 0 as existe from model_login where upper(login) = upper('"+login+"');";
		
        PreparedStatement statement = connection.prepareStatement(sql);
		
		ResultSet resutlado =  statement.executeQuery();
		
		resutlado.next();/*Pra ele entrar nos resultados do sql*/
		return resutlado.getBoolean("existe");
		
	}
	
	
	public void deletarUser(String idUser) throws Exception {
		String sql = "DELETE FROM model_login WHERE id = ? and useradmin is false;";
		
		PreparedStatement prepareSql = connection.prepareStatement(sql);
		
		prepareSql.setLong(1, Long.parseLong(idUser));
		
		prepareSql.executeUpdate();
		
		connection.commit();
		
	}

}
