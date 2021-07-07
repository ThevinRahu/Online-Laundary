package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.RegisterDao;

/**
 * Servlet implementation class SearchRegisteredServlet
 */
@WebServlet("/SearchRegisteredServlet")
public class SearchRegisteredServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
private RegisterDao rd; 
    
    public void init() {
		rd = new RegisterDao();
	}     
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchRegisteredServlet() {
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
			rd.getSearchRecords(email); // send details
			response.sendRedirect("adminregistered.jsp");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
