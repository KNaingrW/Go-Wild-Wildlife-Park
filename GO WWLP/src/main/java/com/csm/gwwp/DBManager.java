package com.csm.gwwp;

import java.sql.Connection;
import java.sql.Driver;
import java.sql.SQLException;
import java.sql.DriverManager;

public class DBManager {
	public Connection getConnection() throws
	ClassNotFoundException,SQLException{
		Connection connection = null;
		Class.forName("com.mysql.cj.jdbc.Driver");
		String dbUrl= "jdbc:mysql://localhost:3306/gwwpid";
		String dbUser= "root";
		String dbPassword= "KNW446708";
		connection= DriverManager.getConnection(dbUrl, dbUser, dbPassword);
		return connection;
		
	}
}
