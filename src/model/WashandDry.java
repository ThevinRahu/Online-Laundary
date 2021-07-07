package model;

public class WashandDry extends Package{
	double wadprice = 250.00;
	
	public WashandDry(int qty){
		//Calling super class
		super(qty);
		this.price = wadprice;
	
	}
	//Overridden methods
	public double getPrice(){
		double total = 0;
		if(qty <=3 ){
			total = price;
		}else if(this.qty>3){
			int a = qty-3;
			total = ((price*a)+price);
			
		
	}
		return total;
	}
	public int getQty(){
		return qty;
	}
}
