package model;

public class RegisteredCustomers {
	//attributes
		protected int telno;
	    protected String name;
	    protected String email;
	    protected String dob;
	    protected String nic;
	    protected String address;
	    protected String password;
	    protected String gender;
	 
	    public RegisteredCustomers() {
	    	
	    }
	 
	 
	    public RegisteredCustomers(String nic, String name, String address, String dob, int telno,String email,String password, String gender) {
	        this.nic = nic;
	        this.name = name;
	        this.address = address;
	        this.email = email;
	        this.telno = telno;
	        this.dob = dob;
	        this.password = password;
	        this.gender = gender;
	    }
	     
	  
	 //getters and setters
	    public String getName() {
	        return name;
	    }
	    public String getAddress() {
	        return address;
	    }

	    public String getEmail() {
	        return email;
	    }

	    public int getTelno() {
	        return telno;
	    }

	    public String getPassword() {
	        return password;
	    }

	    public String getNIC() {
	        return nic;
	    }
	    public String getDOB() {
	        return dob;
	    }
	    public String getGender() {
	        return gender;
	    }


	    
	    public void setName(String name) {
	        this.name = name;
	    }
	    public void setAddress(String address) {
	        this.address = address;
	    }
	    public void setEmail(String email) {
	        this.email =email;
	    }
	    public void setPassword(String password) {
	        this.password = password;
	    }
	    public void setDOB(String dob) {
	        this.dob = dob;
	    }
	    public void setGender(String gender) {
	        this.gender = gender;
	    }
	    public void setTel(int tel) {
	        this.telno = tel;
	    }
	    public void setNIC(String nic) {
	        this.nic = nic;
	    }
	   

}
