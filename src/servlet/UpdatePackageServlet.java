package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.PackageSelectDao;
import model.Dry;
import model.Wash;
import model.WashandDry;

/**
 * Servlet implementation class UpdatePackageServlet
 */
@WebServlet("/UpdatePackageServlet")
public class UpdatePackageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private PackageSelectDao psd2; 
    
    public void init() {
		psd2 = new PackageSelectDao();
	}    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdatePackageServlet() {
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
		double result = 0;
		//get details to update
		String no1= request.getParameter("number");
		int no = Integer.parseInt(no1);
		String no2= request.getParameter("qty");
		int no3 = Integer.parseInt(no2);
		String name= request.getParameter("package");
		//send details
		if(name.equals("WashandDry")){
			WashandDry wd1 = new WashandDry(no3);
				 result = wd1.getPrice();
			
			
			}else if(name.equals("Wash")){
				Wash w1 = new Wash(no3);
				 result = w1.getPrice();
			
			}else if(name.equals("Dry")){
				Dry d1 = new Dry(no3);
				 result = d1.getPrice();
			
			}
		try{
			psd2.updatePrice(no3, result, no);
			response.sendRedirect("payment.jsp");
		}catch(Exception e){
			System.out.println(e);
		}
	}

}
