package com.dao;

import java.sql.Connection;
import java.sql.SQLException;

import com.bean.RegisterBean;

public class RegisterDao {
	
	public int registerUser(RegisterBean register) throws ClassNotFoundException {
		int rowsAffected = 0;
		
		try {
			Connection connection = DBConnection.getConnectionToDatabase();
			
			String insertQuery = "INSERT INTO user"
					+ "(`first_name`,`last_name`,`city`,`country`,`email`,`password`)"
					+ "VALUES(?,?,?,?,?,?)";
	
			java.sql.PreparedStatement statement = connection.prepareStatement(insertQuery);
			
			statement.setString(1, register.getFirstName());
			statement.setString(2, register.getLastName());
			statement.setString(3, register.getCity());
			statement.setString(4, register.getCountry());	
			statement.setString(5, register.getEmail());
			statement.setString(6, register.getPassword());
			
			rowsAffected = statement.executeUpdate();

		} catch (SQLException exception) {
			exception.printStackTrace();
		}
		return rowsAffected;
	
	}
}

