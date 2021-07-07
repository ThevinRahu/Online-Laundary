package model;
import java.lang.Math;
public class PackageSelectors {
	//attributes
	private String name;
	private String id;
	private String mobile;
	private String email;
	private String packagename;
	private int qty;
	private double price;
	private String status;
	private static int no;
	private int number;
	private String stat;
	
	public PackageSelectors(){
		
	}
	//getters and setters
	public void setStat(String stat){
		this.stat = stat;
	}
	public void setNumber(int number){
		this.number = number;
	}
	public void setName(String name){
		this.name = name;
	}
	public void setId(String id){
		this.id = id;
	}
	public void setMobile(String mobile){
		this.mobile = mobile;
	}
	public void setEmail(String email){
		this.email = email;
	}
	public void setPackage(String packagename){
		this.packagename = packagename;
	}
	public void setQty(int qty){
		this.qty = qty;
	}
	public void setPrice(double price){
		this.price = price;
	}
	public void setStatus(String status){
		this.status = status;
	}
	//generate random number
	public void generateNo(){
		no = (int)(Math.random()*(900-100+1)+100);  
	}
	
	public String getStat(){
		return stat;
	}
	public int getNo(){
		return no;
	}
	public int getNumber(){
		return number;
	}
	public String getName(){
		return name;
	}
	public String getID(){
		return id;
	}
	public String getMobile(){
		return mobile;
	}
	public String getEmail(){
		return email;
	}
	public String getPackage(){
		return packagename;
	}
	public int getQty(){
		return qty;
	}
	public double getPrice(){
		return price;
	}
	public String getStatus(){
		return status;
	}
	
}
