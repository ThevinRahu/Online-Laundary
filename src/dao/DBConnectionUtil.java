package dao;

import java.sql.Connection;
import java.sql.DriverManager;


public class DBConnectionUtil {
	public static Connection getConnection(){  
	    Connection con = null;  
	    try{  
	    	//get DB connection
	        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");  
	        con=DriverManager.getConnection("jdbc:sqlserver://localhost:49670;databaseName=LaundaryMart", "thevin", "slmahela#27");  
	    }catch(Exception e){System.out.println(e);}  
	    return con;  
}

}
