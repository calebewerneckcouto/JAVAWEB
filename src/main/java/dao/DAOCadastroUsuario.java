package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import connection.SingleConnectionBanco;
import model.ModelCadastro;

public class DAOCadastroUsuario {

	private Connection connection;

	public DAOCadastroUsuario() {
		connection = SingleConnectionBanco.getConnection();

	}

	public void gravaUsuario(ModelCadastro modelCadastro) throws Exception {

		String sql = "INSERT INTO model_login (login, senha, nome, email, permissao)  VALUES (?, ?, ?, ?,?);";

		PreparedStatement preparedStatement = connection.prepareStatement(sql);

		preparedStatement.setString(1, modelCadastro.getLogin());
		preparedStatement.setString(2, modelCadastro.getSenha());
		preparedStatement.setString(3, modelCadastro.getNome());
		preparedStatement.setString(4, modelCadastro.getEmail());
		preparedStatement.setString(5, modelCadastro.getPermissao());

		

		preparedStatement.execute();

		connection.commit();

	}

}
