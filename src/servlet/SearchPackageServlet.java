package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.PackageSelectDao;


/**
 * Servlet implementation class SearchPackageServlet
 */
@WebServlet("/SearchPackageServlet")
public class SearchPackageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private PackageSelectDao pksd; 
    
    public void init() {
		pksd = new PackageSelectDao();
	}   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchPackageServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//get email to search
		String email= request.getParameter("search");
		try{
			pksd.getSearchRecords(email);
			response.sendRedirect("admin.jsp"); //direct to page
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
