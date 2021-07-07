package dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import model.PackageSelectors;







public class PackageSelectDao {
	private static String emailsearch;
	public int selectPackage(PackageSelectors ps){
		int result = 0;
		try{
			//get connection
			Connection con = DBConnectionUtil.getConnection();
			//sql statement
			String sqlq1 = "INSERT INTO packageselectors" +
		            "(name, email, mobile, price, qty, package, id, status,no) VALUES " +
		            " (?, ?, ?, ?, ?, ?, ?, ?, ?);";
			 PreparedStatement preparedStatement = con.prepareStatement(sqlq1); {
	             
	             preparedStatement.setString(1, ps.getName());
	             preparedStatement.setString(2, ps.getEmail());
	             preparedStatement.setString(3, ps.getMobile());
	             preparedStatement.setDouble(4, ps.getPrice());
	             preparedStatement.setInt(5, ps.getQty());
	             preparedStatement.setString(6, ps.getPackage());
	             preparedStatement.setString(7, ps.getID());
	             preparedStatement.setString(8, "Pending");
	             preparedStatement.setInt(9, ps.getNo());
	             
	             System.out.println(preparedStatement);
	             
	             result = preparedStatement.executeUpdate();
	             }
		}catch(Exception e){
			
			System.out.println(e);
		}
		return result;
		}
	
	
	public static List<PackageSelectors> getAllRecords(){  
	    List<PackageSelectors> list=new ArrayList<PackageSelectors>();  
	      
	    try{  
	    	//get database connection
	        Connection con = DBConnectionUtil.getConnection();  
	      //SQL statement
	        PreparedStatement ps=con.prepareStatement("select * from packageselectors");  
	        ResultSet rs=ps.executeQuery();
	        
	        while(rs.next()){  
	        	//create new object
	        	PackageSelectors ps1 = new PackageSelectors();
	        	ps1.setNumber(rs.getInt("no"));
	        	ps1.setName(rs.getString("name"));
	        	ps1.setEmail(rs.getString("email"));
	        	ps1.setPackage(rs.getString("package"));
	        	ps1.setQty(rs.getInt("qty"));
	        	ps1.setPrice(rs.getDouble("price"));
	        	ps1.setMobile(rs.getString("mobile"));
	        	ps1.setStatus(rs.getString("status"));
	            list.add(ps1);  
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return list;  
	}  
	
	 public int updateStatus(PackageSelectors ps2, int no){
		 int status = 0;
		 try{
			//get database connection
         	Connection con = DBConnectionUtil.getConnection();
         	//SQL statement
            PreparedStatement prst = con.prepareStatement("UPDATE packageselectors SET status = ? WHERE no = ? "); 
		    prst.setString(1, ps2.getStatus());
		    prst.setInt(2, no);
		    System.out.println(prst);
	        status = prst.executeUpdate();
	               
	        }catch(Exception e){System.out.println(e);}       
	        return status;
 
	 } 
	 public void getSearchRecords(String email){  
		 PackageSelectDao.emailsearch = email;
		 
		}  
	 public static List<PackageSelectors> searchRecords(){  
		    List<PackageSelectors> list1=new ArrayList<PackageSelectors>();  
		      
		    try{  
		    	//get database connection
		        Connection con = DBConnectionUtil.getConnection();  
		      //SQL statement
		        PreparedStatement ps=con.prepareStatement("select * from packageselectors where email = ?");  
		        ps.setString(1,emailsearch);
		        ResultSet rs=ps.executeQuery();
		        
		        while(rs.next()){  
		        	//create new object
		        	PackageSelectors ps11 = new PackageSelectors();
		        	ps11.setNumber(rs.getInt("no"));
		        	ps11.setName(rs.getString("name"));
		        	ps11.setEmail(rs.getString("email"));
		        	ps11.setPackage(rs.getString("package"));
		        	ps11.setQty(rs.getInt("qty"));
		        	ps11.setPrice(rs.getDouble("price"));
		        	ps11.setMobile(rs.getString("mobile"));
		        	ps11.setStatus(rs.getString("status"));
		        	if(rs.getString("status").equalsIgnoreCase("Pending")){
		        		ps11.setStat("enabled");
		        	}else{
		        		ps11.setStat("disabled");
		        	}
		            list1.add(ps11);  
		        }  
		    }catch(Exception e){System.out.println(e);}  
		    return list1;  
		}  
	 public int deleteBooking(int id){
		 int status = 0;
		 String a = null;
		 try{
	
			//get database connection
         	Connection con = DBConnectionUtil.getConnection();
         	//SQL statement
         	PreparedStatement ps=con.prepareStatement("select * from packageselectors where no = ?"); 
         	 ps.setInt(1, id);
         	ResultSet rs=ps.executeQuery();
         	  while(rs.next()){ 
         		 a= rs.getString("status"); 
         	  }
         	if(a.equalsIgnoreCase("Pending")){ 
            PreparedStatement prst = con.prepareStatement("DELETE FROM packageselectors WHERE no = ? "); 
		    prst.setInt(1, id);
		    System.out.println(prst);
	        status = prst.executeUpdate();
         	}else{
         		status = 0;
         	}
	        }catch(Exception e){System.out.println(e);}       
	        return status;
		 
	 } 
	 public int updatePrice(int qty, double price, int id){
		 int status = 0;
		 try{
			//get database connection
         	Connection con = DBConnectionUtil.getConnection();
         	//SQL statement
            PreparedStatement prst = con.prepareStatement("UPDATE packageselectors SET qty = ?, price = ? WHERE no = ? "); 
		    prst.setInt(1, qty);
		    prst.setDouble(2,price);
		    prst.setInt(3,id);
		    System.out.println(prst);
	        status = prst.executeUpdate();
	               
	        }catch(Exception e){System.out.println(e);}       
	        return status;
 
	 } 
}






