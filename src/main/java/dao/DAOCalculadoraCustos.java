package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import connection.SingleConnectionBanco;
import model.ModelCalculadora;
import model.ModelVideos;


public class DAOCalculadoraCustos {

	private static Connection connection;

	public DAOCalculadoraCustos() {
		connection = SingleConnectionBanco.getConnection();

	}

	public void gravacalculos(ModelCalculadora modelCalculadora) throws Exception {

		String sql = "insert into calculadoracustos (impressora,filamento,peso,tempoimpressao,preparacao,fatiamento,trocamaterial,transferenciaeinicio,somapreparacao,remocaoimpressao,remocaosuportes,trabalhoadicional,somaposprocessamento,consumiveis,filamentovalor,eletricidadevalor,depreciacaomaquina,posprocessamentocustos,consumiveiscustos,subtotal,incluindoperdas,lucroporcentagem,lucrovalor,precofinal) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

		PreparedStatement preparedStatement = connection.prepareStatement(sql);

		preparedStatement.setString(1, modelCalculadora.getImpressora());
		preparedStatement.setString(2,modelCalculadora.getFilamento());
		preparedStatement.setString(3,modelCalculadora.getPeso());
		preparedStatement.setString(4,modelCalculadora.getTempoimpressao());
		preparedStatement.setString(5,modelCalculadora.getPreparacao());
		preparedStatement.setString(6,modelCalculadora.getFatiamento());
		preparedStatement.setString(7,modelCalculadora.getTrocamaterial());
		preparedStatement.setString(8,modelCalculadora.getTransferenciaeinicio());
		preparedStatement.setString(9,modelCalculadora.getSomapreparacao());
		preparedStatement.setString(10,modelCalculadora.getRemocaoimpressao());
		preparedStatement.setString(11,modelCalculadora.getRemocaosuportes());
		preparedStatement.setString(12,modelCalculadora.getTrabalhoadicional());
		preparedStatement.setString(13,modelCalculadora.getSomaposprocessamento());
		preparedStatement.setString(14,modelCalculadora.getConsumiveis());
		preparedStatement.setString(15,modelCalculadora.getFilamentovalor());
		preparedStatement.setString(16,modelCalculadora.getEletricidadevalor());
		preparedStatement.setString(17,modelCalculadora.getDepreciacaomaquina());
		preparedStatement.setString(18,modelCalculadora.getPosprocessamentocustos());
		preparedStatement.setString(19,modelCalculadora.getConsumiveiscustos());
		preparedStatement.setString(20,modelCalculadora.getSubtotal());
		preparedStatement.setString(21,modelCalculadora.getIncluindoperdas());
		preparedStatement.setString(22,modelCalculadora.getLucroporcentagem());
		preparedStatement.setString(23,modelCalculadora.getLucrovalor());
		preparedStatement.setString(24, modelCalculadora.getPrecofinal());

		preparedStatement.execute();

		connection.commit();

	}
	
	
	public List<ModelCalculadora> buscarCalculadora() throws Exception {
	    List<ModelCalculadora> calculos = new ArrayList<>();

	    String sql = "select id,impressora,filamento,peso,tempoimpressao,preparacao,fatiamento,trocamaterial,transferenciaeinicio,somapreparacao,remocaoimpressao,remocaosuportes,trabalhoadicional,somaposprocessamento,consumiveis,filamentovalor,eletricidadevalor,depreciacaomaquina,posprocessamentocustos,consumiveiscustos,subtotal,incluindoperdas,lucroporcentagem,lucrovalor,precofinal  from calculadoracustos";

	    PreparedStatement preparedStatement = connection.prepareStatement(sql);

	    ResultSet resultSet = preparedStatement.executeQuery();

	    while (resultSet.next()) {
	        ModelCalculadora calculo = new ModelCalculadora();
	        calculo.setId(resultSet.getLong("id"));
	        calculo.setImpressora(resultSet.getString("impressora"));
	        calculo.setFilamento(resultSet.getString("filamento"));
	        calculo.setPeso(resultSet.getString("peso"));
	        calculo.setTempoimpressao(resultSet.getString("tempoimpressao"));
	        calculo.setLucroporcentagem(resultSet.getString("lucroporcentagem"));
	        calculo.setLucrovalor(resultSet.getString("lucrovalor"));
	        calculo.setPrecofinal(resultSet.getString("precofinal"));
	        
	        
	        
	       
	        calculos.add(calculo);
	    }

	    resultSet.close();
	    preparedStatement.close();

	    return calculos;
	}
	
	public void deleteCalculadora(Long id) throws Exception {
		
		String sql = "delete from calculadoracustos where id =?";
		
		PreparedStatement preparedStatement = connection.prepareStatement(sql);

		preparedStatement.setLong(1, id);

		preparedStatement.executeUpdate();

		connection.commit();
	}
}
	
	
	