package servlet;
//hii
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.PackageSelectDao;

import model.PackageSelectors;


/**
 * Servlet implementation class PackageServlet
 */
@WebServlet("/PackageServlet")
public class PackageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
     private PackageSelectDao psd; 
     
     public void init() {
 		psd = new PackageSelectDao();
 	}
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PackageServlet() {
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
		String name = request.getParameter("q4_customerName[first]")+" "+request.getParameter("q4_customerName[last]");
		String id = request.getParameter("q23_address[postal]");
		String email = request.getParameter("q6_Email");
		String packagename = request.getParameter("q46_package46");
		packagename = packagename.replaceAll("\\s+", "");
		String nic = request.getParameter("q47_numberOf");
		int qty = Integer.parseInt(nic);
		String gender = request.getParameter("q14_totalPrice");
		double price = Double.parseDouble(gender);
		String tel = request.getParameter("q27_mobileNumber[full]");
		
	

		//send details to model
		PackageSelectors ps = new PackageSelectors();
		ps.generateNo();
		ps.setName(name);
		ps.setEmail(email);
		ps.setId(id);
		ps.setMobile(tel);
		ps.setPackage(packagename);
		ps.setPrice(price);
		ps.setQty(qty);
		
		

		
		try {
 			psd.selectPackage(ps);
 			response.sendRedirect("payment.jsp");
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
	}
}


