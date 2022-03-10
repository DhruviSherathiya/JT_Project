package Orders;

public class Order_Items {
	 String product_name;
	 int quantity;
	 int product_price;
	
	
	public Order_Items(String product_name, int quantity, int product_price) {
		super();
		this.product_name = product_name;
		this.quantity = quantity;
		this.product_price = product_price;
	}
	
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public int getProduct_price() {
		return product_price;
	}
	public void setProduct_price(int product_price) {
		this.product_price = product_price;
	}
	
}
