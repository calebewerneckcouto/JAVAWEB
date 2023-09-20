package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import connection.SingleConnectionBanco;
import model.ModelVideoNome;
import model.ModelVideos;


public class DAOVideos {

	private static Connection connection;
	
	

	public DAOVideos() {
		connection = SingleConnectionBanco.getConnection();

	}
	
	
	


	public void gravaVideos(ModelVideos modelVideos) throws Exception {

		String sql = "insert into videos (nomevideo,link,pagina) values (?,?,?)";

		PreparedStatement preparedStatement = connection.prepareStatement(sql);

		preparedStatement.setString(1, modelVideos.getNomevideo());
		preparedStatement.setString(2, modelVideos.getLink());
		preparedStatement.setString(3, modelVideos.getPagina());
		
		
	

		preparedStatement.execute();

		connection.commit();

	}
	
	
	
		
		
	
	public List<ModelVideoNome> buscarVideosnome() throws Exception {
	    List<ModelVideoNome> videos = new ArrayList<>();

	    String sql = "select id,pagina  from nomepaginas";

	    PreparedStatement preparedStatement = connection.prepareStatement(sql);

	    ResultSet resultSet = preparedStatement.executeQuery();

	    while (resultSet.next()) {
	        ModelVideoNome video = new ModelVideoNome();
	        video.setId(resultSet.getLong("id"));
	        video.setPagina(resultSet.getString("pagina"));
	       
	        
	        videos.add(video);
	    }

	    resultSet.close();
	    preparedStatement.close();

	    return videos;
	}

	
	
	
	
	
	
	public List<ModelVideos> buscarVideos() throws Exception {
	    List<ModelVideos> videos = new ArrayList<>();

	    String sql = "select id,nomevideo,pagina,link  from videos";

	    PreparedStatement preparedStatement = connection.prepareStatement(sql);

	    ResultSet resultSet = preparedStatement.executeQuery();

	    while (resultSet.next()) {
	        ModelVideos video = new ModelVideos();
	        video.setId(resultSet.getLong("id"));
	        video.setNomevideo(resultSet.getString("nomevideo"));
	        video.setPagina(resultSet.getString("pagina"));
	        video.setLink(resultSet.getString("link"));
	        
	        videos.add(video);
	    }

	    resultSet.close();
	    preparedStatement.close();

	    return videos;
	}

	
	public List<ModelVideos> buscarVideos3dbuilder() throws Exception {
	    List<ModelVideos> videos = new ArrayList<>();

	    String sql = "select link  from videos where pagina =?" ;

	    PreparedStatement preparedStatement = connection.prepareStatement(sql);

	    ResultSet resultSet = preparedStatement.executeQuery();

	    while (resultSet.next()) {
	        ModelVideos video = new ModelVideos();
	        video.setId(resultSet.getLong("id"));
	        video.setNomevideo(resultSet.getString("nomevideo"));
	        video.setPagina(resultSet.getString("pagina"));
	        video.setLink(resultSet.getString("link"));
	        
	        videos.add(video);
	    }

	    resultSet.close();
	    preparedStatement.close();

	    return videos;
	}
	
	

	
	

	public void deleteVideos(Long id) throws Exception {
		
		String sql = "delete from videos where id =?";
		
		PreparedStatement preparedStatement = connection.prepareStatement(sql);

		preparedStatement.setLong(1, id);

		preparedStatement.executeUpdate();

		connection.commit();
	}
}
	
	