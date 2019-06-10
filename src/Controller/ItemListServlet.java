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
 * Servlet implementation class itemList
 */
@WebServlet("/itemList")
public class ItemListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ItemListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException,
	IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException,
	IOException {
	// retrieve all parametres from jsp page.
	
			String proName = request.getParameter("proName");
			String proCode = request.getParameter("proCode");
			String things = request.getParameter("things");
			String proDesc = request.getParameter("proDesc");
			String miniStock = request.getParameter("miniStock");
			String subAcc = request.getParameter("subAcc");    

			//  set all the values in model class object.
			
			ModelMVC m = new ModelMVC();
			m.setProName(proName);
			m.setProCode(proCode);
			m.setThings(things);
			m.setProDesc(proDesc);
			m.setMiniStock(miniStock);
			m.setSubAcc(subAcc);

			// call a method in Dao class to insert data in table.
			
			String query = "insert into newitem values (?,?,?,?,?,?)";
			int i = DbManager.itemList(m,query);
			
			if(i !=0) {
				System.out.println("Data is Inserted");
				request.setAttribute("msg", "Product Added Successfully");
				getServletContext().getRequestDispatcher("/itemList.jsp").forward(request, response);
			}
			else {
				System.out.println("Data is not Inserted");
			}
			
			
	}
}
