package contextDB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Connexiondb {
	private static Connection conn ;
	private  static String url = "jdbc:mysql://localhost:3306/db" ;
	static {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver") ;
			conn = DriverManager.getConnection(url ,"root","");
		}catch(SQLException | ClassNotFoundException e) { 
			System.out.println("prblm bd");
		}
	}
	
	public static Connection getConnexion() {
		return conn ;
	}

}
