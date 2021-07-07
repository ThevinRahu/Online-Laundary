package model;
//abstract class
public abstract class Package {
	protected double price;
	protected  int qty;
	
	Package(){
		price = 0;
		qty = 0;
	}
	Package(int qty){
		
		this.qty = qty;
	}
	//abstract methods
	abstract public double getPrice();
	abstract public int getQty();
}
