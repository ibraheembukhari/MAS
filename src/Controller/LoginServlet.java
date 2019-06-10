package Controller;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Database.DbManager;
import Model.ModelMVC;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);

		// retrieve all parametres from jsp page.

		String username = request.getParameter("uname");
		String password = request.getParameter("pass");

		if (username.equals(null)||username==""||password.equals(null)||password=="")
		{
			request.setAttribute("msg", "All Fields are Mendatory");
			getServletContext().getRequestDispatcher("/Login.jsp").forward(request, response);
		}
		else 
		{
		//  set all the values in model class object.
			
			ModelMVC m = new ModelMVC();
			m.setUname(username);
			m.setPassword(password);
			
			
			String query = "select * from myregister where Username=? and Password=?";
			
			// call a method in Dao class to insert data in table.
			
			ResultSet rs = DbManager.loginUser(m, query);
			try {
				
				if(rs.next())
				{
					System.out.println("Login Successfully");
					getServletContext().getRequestDispatcher("/Dashboard.jsp").forward(request, response);
				}
				else {
					getServletContext().getRequestDispatcher("/Login.jsp").forward(request, response);
				}
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
	}

}
