package Database;
import java.sql.*;

public class DBConnection {
		public static Connection Connect() {
				
				Connection con = null;
				try {
					Class.forName("com.mysql.jdbc.Driver");
					try {
						con = DriverManager.getConnection("jdbc:mysql://localhost:3306/registrationdb","root","");
						System.out.println("Connected");
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				} catch (ClassNotFoundException e) {
					e.printStackTrace();
				}
				return con;
				
				
			}
		
		public static Connection Coonnect() {
			
			Connection con = null;
			try {
				Class.forName("com.mysql.jdbc.Driver");
				try {
					con = DriverManager.getConnection("jdbc:mysql://localhost:3306/itemList","root","");
					System.out.println("Connected");
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			}
			return con;
			
			
		}
}
