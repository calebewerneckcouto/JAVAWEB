package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import connection.SingleConnectionBanco;
import model.ModelCalculadora;


public class DAOCalculadoraCustos {

	private static Connection connection;

	public DAOCalculadoraCustos() {
		connection = SingleConnectionBanco.getConnection();

	}

	public void gravacalculos(ModelCalculadora modelCalculadora) throws Exception {

		String sql = "insert into calculadoracustos (impressora,filamento,peso,tempoimpressao,preparacao,fatiamento,trocamaterial,transferenciaeinicio,somapreparacao,remocaoimpressao,remocaosuportes,trabalhoadicional,somaposprocessamento,consumiveis,filamentovalor,eletricidadevalor,depreciacaomaquina,posprocessamentocustos,consumiveiscustos,subtotal,incluindoperdas) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

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

		preparedStatement.execute();

		connection.commit();

	}
}