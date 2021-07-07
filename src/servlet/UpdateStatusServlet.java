package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.PackageSelectDao;
import model.PackageSelectors;

/**
 * Servlet implementation class UpdateStatusServlet
 */
@WebServlet("/UpdateStatusServlet")
public class UpdateStatusServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private PackageSelectDao psd2; 
     
     public void init() {
 		psd2 = new PackageSelectDao();
 	}  
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateStatusServlet() {
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
		PackageSelectors pkgs = new PackageSelectors();
		String no1= request.getParameter("number");
		int no = Integer.parseInt(no1);
		String status = request.getParameter("status");
		if(status.equalsIgnoreCase("Pending")){
			pkgs.setStatus("Assigned");
		}else{
			pkgs.setStatus("Pending");	
		}
		try{
			psd2.updateStatus(pkgs, no); // send details
			response.sendRedirect("admin.jsp");
		}catch(Exception e){
			System.out.println(e);
		}
	}

}
