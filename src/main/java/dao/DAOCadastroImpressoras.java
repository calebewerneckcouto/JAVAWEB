package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import connection.SingleConnectionBanco;
import model.ModelCadastroImpressoras;
import model.ModelVideoNome;
import model.ModelVideos;

public class DAOCadastroImpressoras {
	
	
	private static Connection connection;
	
	public DAOCadastroImpressoras() {
		
		connection = SingleConnectionBanco.getConnection();

		
	}
	
	
	
	public void gravaImpressora(ModelCadastroImpressoras modelCadastroImpressoras) throws Exception {

		String sql = "insert into cadastroimpressoras (nomedaimpressora,diametrodomaterial,preco,tempodepreciacao,custodereparos,consumodeenergia,depreciacao,idusuariologado) values (?,?,?,?,?,?,?,?)";

		PreparedStatement preparedStatement = connection.prepareStatement(sql);

		preparedStatement.setString(1, modelCadastroImpressoras.getNomedaimpressora());
		preparedStatement.setString(2, modelCadastroImpressoras.getDiametrodomaterial());
		preparedStatement.setString(3, modelCadastroImpressoras.getPreco());
		preparedStatement.setString(4,modelCadastroImpressoras.getTempodepreciacao());
		preparedStatement.setString(5,modelCadastroImpressoras.getCustodereparos());
		preparedStatement.setString(6,modelCadastroImpressoras.getConsumodeenergia());
		preparedStatement.setString(7,modelCadastroImpressoras.getDepreciacao());
		preparedStatement.setString(8,modelCadastroImpressoras.getIdusuariologado());
		
		
	

		preparedStatement.execute();

		connection.commit();

	}
	
	public List<ModelCadastroImpressoras> buscarCadastroImpressora() throws Exception {
	    List<ModelCadastroImpressoras> cadastroimpressoras = new ArrayList<>();

	    String sql = "select id,nomedaimpressora,diametrodomaterial,preco,tempodepreciacao,custodereparos,consumodeenergia,depreciacao,idusuariologado  from cadastroimpressoras";

	    PreparedStatement preparedStatement = connection.prepareStatement(sql);

	    ResultSet resultSet = preparedStatement.executeQuery();

	    while (resultSet.next()) {
	        ModelCadastroImpressoras cadastroimpressora = new ModelCadastroImpressoras();
	        cadastroimpressora.setId(resultSet.getLong("id"));
	        cadastroimpressora.setNomedaimpressora(resultSet.getString("nomedaimpressora"));
	        cadastroimpressora.setDiametrodomaterial(resultSet.getString("diametrodomaterial"));
	        cadastroimpressora.setPreco(resultSet.getString("preco"));
	        cadastroimpressora.setTempodepreciacao(resultSet.getString("tempodepreciacao"));
	        cadastroimpressora.setCustodereparos(resultSet.getString("custodereparos"));
	        cadastroimpressora.setConsumodeenergia(resultSet.getString("consumodeenergia"));
	        cadastroimpressora.setDepreciacao(resultSet.getString("depreciacao"));
	        cadastroimpressora.setIdusuariologado(resultSet.getString("idusuariologado"));
	       
	        
	        cadastroimpressoras.add(cadastroimpressora);
	    }

	    resultSet.close();
	    preparedStatement.close();

	    return cadastroimpressoras;
	}
	
	
public void deletecadastroimpressoras(Long id) throws Exception {
		
		String sql = "delete from cadastroimpressoras where id =?";
		
		PreparedStatement preparedStatement = connection.prepareStatement(sql);

		preparedStatement.setLong(1, id);

		preparedStatement.executeUpdate();

		connection.commit();
	}
}
	



