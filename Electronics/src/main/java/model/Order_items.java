package model;

public class Order_items {
	String product_Name;
	int quantity;
	int product_Price;
	
	public Order_items(String product_Name, int quantity, int product_Price) {
		super();
		this.product_Name = product_Name;
		this.quantity = quantity;
		this.product_Price = product_Price;
	}
	
	public String getProduct_Name() {
		return product_Name;
	}
	public void setProduct_Name(String product_Name) {
		this.product_Name = product_Name;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public int getProduct_Price() {
		return product_Price;
	}
	public void setProduct_Price(int product_Price) {
		this.product_Price = product_Price;
	}
}
