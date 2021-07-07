package servlet;
import java.io.IOException;

//comment in deletebooking
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import dao.PackageSelectDao;
/**
 * Servlet implementation class DeleteBookingServlet
 */
@WebServlet("/DeleteBookingServlet")
public class DeleteBookingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
     private PackageSelectDao pd2; 
     public void init() {
  		pd2 = new PackageSelectDao();
  	}  
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteBookingServlet() {
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
		//get details
		String no1= request.getParameter("search");
	
		int no = Integer.parseInt(no1);
		try{
		 pd2.deleteBooking(no);
		response.sendRedirect("mybookings.jsp");
		}catch(Exception e){
			System.out.println(e);
		}
	}

}
