package servlet;

import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.LoginDao;
import model.LoginforPackage;
import dao.PackageSelectDao;
/**
 * Servlet implementation class LoginBookingServlet
 */
@WebServlet("/LoginBookingServlet")
public class LoginBookingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private LoginDao loginDao1;
	private PackageSelectDao pksd;
	public void init() {
		loginDao1 = new LoginDao();
		pksd = new PackageSelectDao();
	}
	   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginBookingServlet() {
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
		String username = request.getParameter("Username");
		String password = request.getParameter("Password");
		 String generatedPassword = null;
	        try {
	            // Create MessageDigest instance for MD5
	            MessageDigest md = MessageDigest.getInstance("MD5");
	            //Add password bytes to digest
	            md.update(password.getBytes());
	            //Get the hash's bytes 
	            byte[] bytes = md.digest();
	            //This bytes[] has bytes in decimal format;
	            //Convert it to hexadecimal format
	            StringBuilder sb = new StringBuilder();
	            for(int i=0; i< bytes.length ;i++)
	            {
	                sb.append(Integer.toString((bytes[i] & 0xff) + 0x100, 16).substring(1));
	            }
	            //Get complete hashed password in hex format
	            generatedPassword = sb.toString();
	        } 
	        catch (NoSuchAlgorithmException e) 
	        {
	            e.printStackTrace();
	        }
		LoginforPackage loginBean1 = new LoginforPackage();
		//send details
		loginBean1.setUsername(username);
		loginBean1.setPassword(generatedPassword);
		//validate
		try {
			if (loginDao1.validate(loginBean1)) {
				//HttpSession session = request.getSession();
				// session.setAttribute("username",username);
				pksd.getSearchRecords(username);
				RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/mybookings.jsp");
				HttpSession session1 = request.getSession();
				session1.setAttribute("user", "user");
				dispatcher.forward(request, response);
			} else {
				
				response.sendRedirect("loginunsuccess.jsp");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
