package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Database.DbManager;
import Model.ModelMVC;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet") //Annotation
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public RegisterServlet() {
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
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		// retrieve all parametres from jsp page.
		
		String fname = request.getParameter("fname");
		String uname = request.getParameter("uname");
		String password = request.getParameter("pass");
		String cpassword = request.getParameter("cpass");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");    
		String squestion = request.getParameter("sques");
		String answer = request.getParameter("ans");
		
		// Validation...
		
		if (fname.equals(null)||fname==""||uname.equals(null)||uname==""||password.equals(null)||password==""||cpassword.equals(null)||cpassword==""||email.equals(null)||email==""||phone.equals(null)||phone==""||squestion.equals(null)||squestion==""||answer.equals(null)||answer=="") 
		{
			request.setAttribute("msg", "All Fields are Mendatory");
			getServletContext().getRequestDispatcher("/Register.jsp").forward(request, response);
		}
		else 
			if(!password.equals(cpassword)) {
			request.setAttribute("msg", "Password Does not Match");
			getServletContext().getRequestDispatcher("/Register.jsp").forward(request, response);
		}
		else {
	
		//  set all the values in model class object.
		
		ModelMVC m = new ModelMVC();
		m.setFname(fname);
		m.setUname(uname);
		m.setPassword(password);
		m.setCpassword(cpassword);
		m.setEmail(email);
		m.setPhone(phone);
		m.setSquestion(squestion);
		m.setAnswer(answer);
		
		// call a method in Dao class to insert data in table.
		
		String query = "insert into myregister values (?,?,?,?,?,?,?,?)";
		int i = DbManager.registerUser(m,query);
		
		if(i !=0) {
			System.out.println("Data is Inserted");
			request.setAttribute("msg", "Registration Successfully");
			getServletContext().getRequestDispatcher("/Login.jsp").forward(request, response);
		}
		else {
			System.out.println("Data is not Inserted");
		}
	  }
	}
}
