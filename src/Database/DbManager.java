package Database;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import com.mysql.jdbc.PreparedStatement;
import Database.DBConnection;
import Model.ModelMVC;

public class DbManager {

	public static int registerUser(ModelMVC m, String query) {
		
		int i=0;
		Connection con = DBConnection.Connect();
		try {
			PreparedStatement ps = (PreparedStatement) con.prepareStatement(query);
			ps.setString(1, m.getFname());
			ps.setString(2, m.getUname());
			ps.setString(3, m.getPassword());
			ps.setString(4, m.getCpassword());
			ps.setString(5, m.getEmail());
			ps.setString(6, m.getPhone());
			ps.setString(7, m.getSquestion());
			ps.setString(8, m.getAnswer());
			
			i = ps.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return i;
	}

	public static ResultSet loginUser(ModelMVC m, String query) {
		
		ResultSet rs = null;
		Connection con = DBConnection.Connect();
		try {
			PreparedStatement ps = (PreparedStatement) con.prepareStatement(query);
			ps.setString(1, m.getUname());
			ps.setString(2, m.getPassword());

			rs = ps.executeQuery();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
	}
	
public static int itemList(ModelMVC m, String query) {
		
		int i=0;
		Connection con = DBConnection.Coonnect();
		try {
			PreparedStatement ps = (PreparedStatement) con.prepareStatement(query);
			ps.setString(1, m.getProName());
			ps.setString(2, m.getProCode());
			ps.setString(3, m.getThings());
			ps.setString(4, m.getProDesc());
			ps.setString(5, m.getMiniStock());
			ps.setString(6, m.getSubAcc());
			
			i = ps.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return i;
	}

}
