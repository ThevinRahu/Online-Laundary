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

import model.*;
import dao.*;
/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private LoginDao loginDao;

	public void init() {
		loginDao = new LoginDao();
	}
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    public void getDetails(){
    	
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
	        //get details
		String price = request.getParameter("value");
		String qty = request.getParameter("value2");
		String name = request.getParameter("value3");
		double price1 = Double.parseDouble(price);
		int qty1 = Integer.parseInt(qty);
		LoginforPackage loginBean = new LoginforPackage();
		//send details
		loginBean.setUsername(username);
		loginBean.setPassword(generatedPassword);
		//validate
		try {
			if (loginDao.validate(loginBean)) {
				//HttpSession session = request.getSession();
				// session.setAttribute("username",username);
				RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/packageform.jsp");
				request.setAttribute("value1",price1);
				request.setAttribute("value2",qty1);
				request.setAttribute("value3",name);
				HttpSession session = request.getSession();
				session.setAttribute("user", "user1");
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
