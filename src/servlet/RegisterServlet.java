package servlet;

import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.RegisteredCustomers;

import dao.RegisterDao;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet")

public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private RegisterDao rd;
	
	public void init() {
		rd = new RegisterDao();
	}
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {
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
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		//get details
		String generatedPassword = null;
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		try {
			MessageDigest md = MessageDigest.getInstance("MD5");
			 md.update(password.getBytes());
			 byte[] bytes = md.digest();
			 StringBuilder sb = new StringBuilder();
			 for(int i=0; i< bytes.length ;i++)
	            {
	                sb.append(Integer.toString((bytes[i] & 0xff) + 0x100, 16).substring(1));
	            }
	            //Get complete hashed password in hex format
	            generatedPassword = sb.toString();
		} catch (NoSuchAlgorithmException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		String nic = request.getParameter("id");
		String gender = request.getParameter("gender");
		String dob = request.getParameter("bdate");
		String tel = request.getParameter("phone");
		int tel1 = Integer.parseInt(tel);
	

		
		RegisteredCustomers rc = new RegisteredCustomers();
		//send details
		rc.setName(name);
		rc.setAddress(address);
		rc.setDOB(dob);
		rc.setEmail(email);
		rc.setPassword(generatedPassword);
		rc.setNIC(nic);
		rc.setTel(tel1);
		rc.setGender(gender);
		

		
		try {
 			rd.registerCustomers(rc);
 			response.sendRedirect("home.jsp");
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
	}
	}


