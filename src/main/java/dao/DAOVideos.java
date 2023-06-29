package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import connection.SingleConnectionBanco;
import model.ModelTelefone;
import model.ModelVideos;

public class DAOVideos {

	private Connection connection;
	
	private DAOUsuarioRepository daoUsuarioRepository = new DAOUsuarioRepository();

	public DAOVideos() {
		connection = SingleConnectionBanco.getConnection();

	}
	
	
	public List<ModelVideos> listVideos(Long idUserPai) throws Exception {
		
		List<ModelVideos> retorno = new ArrayList<ModelVideos>();
		
		String sql = "select * from videos where usuario_pai_id = ?";
		PreparedStatement preparedStatement = connection.prepareStatement(sql);
		
		preparedStatement.setLong(1, idUserPai);
		
		ResultSet rs = preparedStatement.executeQuery();
		
		while (rs.next()) {
			
			ModelVideos modelVideos = new ModelVideos();
			
			modelVideos.setId(rs.getLong("id"));
			modelVideos.setNomevideo(rs.getString("nomevideo"));
			modelVideos.setLink(rs.getString("link"));
			modelVideos.setPagina(rs.getString("pagina"));			
			modelVideos.setUsuario_cad_id(daoUsuarioRepository.consultaUsuarioID(rs.getLong("usuario_cad_id")));
			modelVideos.setUsuario_pai_id(daoUsuarioRepository.consultaUsuarioID(rs.getLong("usuario_pai_id")));
			
			retorno.add(modelVideos);
			
		}
		
		return retorno;
	}

	public void gravaVideo(ModelVideos modelVideos) throws Exception {

		String sql = "insert into videos (nomevideo,link,pagina, usuario_pai_id, usuario_cad_id) values (?,?,?,?,?)";

		PreparedStatement preparedStatement = connection.prepareStatement(sql);

		preparedStatement.setString(1, modelVideos.getNomevideo());
		preparedStatement.setString(2,modelVideos.getLink());
		preparedStatement.setString(3,modelVideos.getPagina());
		preparedStatement.setLong(4, modelVideos.getUsuario_pai_id().getId());
		preparedStatement.setLong(5, modelVideos.getUsuario_cad_id().getId());

		preparedStatement.execute();

		connection.commit();

	}

	public void deleteVideos(Long id) throws Exception {
		
		String sql = "delete from videos where id =?";
		
		PreparedStatement preparedStatement = connection.prepareStatement(sql);

		preparedStatement.setLong(1, id);

		preparedStatement.executeUpdate();

		connection.commit();
	}

}