package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


import model.RegisteredCustomers;

public class RegisterDao {
	private static String emailsearch;
	public int registerCustomers(RegisteredCustomers rc){
	int result = 0;
	try{
		//get connection
		Connection con = DBConnectionUtil.getConnection();
		//sql statement
		String sqlq1 = "INSERT INTO registered" +
	            "(name, email, address, password, phone, dob, gender, nic) VALUES " +
	            " (?, ?, ?, ?, ?, ?, ?, ?);";
		 PreparedStatement preparedStatement = con.prepareStatement(sqlq1); {
             
             preparedStatement.setString(1, rc.getName());
             preparedStatement.setString(2, rc.getEmail());
             preparedStatement.setString(3, rc.getAddress());
             preparedStatement.setString(4, rc.getPassword());
             preparedStatement.setInt(5, rc.getTelno());
             preparedStatement.setString(6, rc.getDOB());
             preparedStatement.setString(7, rc.getGender());
             preparedStatement.setString(8, rc.getNIC());
             
             System.out.println(preparedStatement);
             
             result = preparedStatement.executeUpdate();
             }
	}catch(Exception e){
		
		System.out.println(e);
	}
	return result;
	}
	
	
	public static List<RegisteredCustomers> getAllRecords(){  
	    List<RegisteredCustomers> list=new ArrayList<RegisteredCustomers>();  
	      
	    try{  
	    	//get database connection
	        Connection con = DBConnectionUtil.getConnection();  
	      //SQL statement
	        PreparedStatement ps=con.prepareStatement("select * from registered");  
	        ResultSet rs=ps.executeQuery();
	        
	        while(rs.next()){  
	        	//create new object
	        	RegisteredCustomers rc1 = new RegisteredCustomers();  
	          
	            rc1.setNIC(rs.getString("nic"));
	            rc1.setName(rs.getString("name"));
	            rc1.setEmail(rs.getString("email"));
	            rc1.setTel(rs.getInt("phone"));
	            rc1.setGender(rs.getString("gender"));
	            rc1.setAddress(rs.getString("address"));
	            rc1.setDOB(rs.getString("dob"));
	            rc1.setPassword(rs.getString("password"));
	            list.add(rc1);  
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return list;  
	}  
	 public void getSearchRecords(String email){  
		 RegisterDao.emailsearch = email;
		 
		}  
	 public static List<RegisteredCustomers> searchRecords(){  
		    List<RegisteredCustomers> list1=new ArrayList<RegisteredCustomers>();  
		      
		    try{  
		    	//get database connection
		        Connection con = DBConnectionUtil.getConnection();  
		      //SQL statement
		        PreparedStatement ps=con.prepareStatement("select * from registered where email = ?");  
		        ps.setString(1,emailsearch);
		        ResultSet rs=ps.executeQuery();
		        
		        while(rs.next()){  
		        	//create new object
		        	RegisteredCustomers rc11 = new RegisteredCustomers();
		        	rc11.setNIC(rs.getString("nic"));
		            rc11.setName(rs.getString("name"));
		            rc11.setEmail(rs.getString("email"));
		            rc11.setTel(rs.getInt("phone"));
		            rc11.setGender(rs.getString("gender"));
		            rc11.setAddress(rs.getString("address"));
		            rc11.setDOB(rs.getString("dob"));
		            rc11.setPassword(rs.getString("password"));
		            list1.add(rc11);  
		             
		        }  
		    }catch(Exception e){System.out.println(e);}  
		    return list1;  
		}  
}

