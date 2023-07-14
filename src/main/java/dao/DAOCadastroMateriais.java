package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import connection.SingleConnectionBanco;
import model.ModelCadastroImpressoras;
import model.ModelCadastroMateriais;
import model.ModelVideoNome;
import model.ModelVideos;

public class DAOCadastroMateriais {
	
	
	private static Connection connection;
	
	public DAOCadastroMateriais() {
		
		connection = SingleConnectionBanco.getConnection();

		
	}
	
	
	
	public void gravaMateriais(ModelCadastroMateriais modelCadastroMateriais) throws Exception {

		String sql = "insert into cadastromateriais (fabricante,diametro,precorolo,tamanhorolo,densidade,temperaturanozzle,temperaturamesa,comprimentorolo,preco,idusuariologado) values (?,?,?,?,?,?,?,?,?,?)";

		PreparedStatement preparedStatement = connection.prepareStatement(sql);

		preparedStatement.setString(1, modelCadastroMateriais.getFabricante());
		preparedStatement.setString(2, modelCadastroMateriais.getDiametro());
		preparedStatement.setString(3, modelCadastroMateriais.getPrecorolo());
		preparedStatement.setString(4,modelCadastroMateriais.getTamanhorolo());
		preparedStatement.setString(5,modelCadastroMateriais.getDensidade());
		preparedStatement.setString(6,modelCadastroMateriais.getTemperaturanozzle());
		preparedStatement.setString(7,modelCadastroMateriais.getTemperaturamesa());
		preparedStatement.setString(8,modelCadastroMateriais.getComprimentorolo());
		preparedStatement.setString(9,modelCadastroMateriais.getPreco());
		preparedStatement.setString(10,modelCadastroMateriais.getIdusuariologado());
		
		
	

		preparedStatement.execute();

		connection.commit();

	}
	
	public List<ModelCadastroMateriais> buscarCadastroMateriais() throws Exception {
	    List<ModelCadastroMateriais> cadastroMaterial = new ArrayList<>();

	    String sql = "select id,fabricante,diametro,precorolo,tamanhorolo,densidade,temperaturanozzle,temperaturamesa,comprimentorolo,preco,idusuariologado  from cadastromateriais";

	    PreparedStatement preparedStatement = connection.prepareStatement(sql);

	    ResultSet resultSet = preparedStatement.executeQuery();

	    while (resultSet.next()) {
	        ModelCadastroMateriais cadastroMateriais = new ModelCadastroMateriais();
	        cadastroMateriais.setId(resultSet.getLong("id"));
	        cadastroMateriais.setFabricante(resultSet.getString("fabricante"));
	        cadastroMateriais.setDiametro(resultSet.getString("diametro"));
	        cadastroMateriais.setPrecorolo(resultSet.getString("precorolo"));
	        cadastroMateriais.setTamanhorolo(resultSet.getString("tamanhorolo"));
	        cadastroMateriais.setDensidade(resultSet.getString("densidade"));
	        cadastroMateriais.setTemperaturanozzle(resultSet.getString("temperaturanozzle"));
	        cadastroMateriais.setTemperaturamesa(resultSet.getString("temperaturamesa"));
	        cadastroMateriais.setComprimentorolo(resultSet.getString("comprimentorolo"));
	        cadastroMateriais.setPreco(resultSet.getString("preco"));
	        cadastroMateriais.setIdusuariologado(resultSet.getString("idusuariologado"));
	       
	        
	        cadastroMaterial.add(cadastroMateriais);
	    }

	    resultSet.close();
	    preparedStatement.close();

	    return cadastroMaterial;
	}
	
	
public void deletecadastromateriais(Long id) throws Exception {
		
		String sql = "delete from cadastromateriais where id =?";
		
		PreparedStatement preparedStatement = connection.prepareStatement(sql);

		preparedStatement.setLong(1, id);

		preparedStatement.executeUpdate();

		connection.commit();
	}
}
	



