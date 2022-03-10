package Orders;

public class Order {
	int userId;
	int orderId;
	String orderDate;
	String orderItem;
	int totalAmount;
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public int getOrderId() {
		return orderId;
	}
	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}
	public String getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(String orderDate) {
		this.orderDate = orderDate;
	}
	public String getOrderItem() {
		return orderItem;
	}
	public void setOrderItem(String orderItem) {
		this.orderItem = orderItem;
	}
	public int getTotalAmount() {
		return totalAmount;
	}
	public void setTotalAmount(int totalAmount) {
		this.totalAmount = totalAmount;
	}
	public Order(int userId, int orderId, String orderDate, String orderItem, int totalAmount) {
		super();
		this.userId = userId;
		this.orderId = orderId;
		this.orderDate = orderDate;
		this.orderItem = orderItem;
		this.totalAmount = totalAmount;
	}
	
	
}
