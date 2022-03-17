package model;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "Orders")
public class Order {
		
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="Order_Id")
	int orderId;
	
	@Column(name="Order_Date")
	Date orderDate;
	
	@Column(name="Total_Amount")
	double totalAmount;
	
	@ManyToOne
	@JoinColumn(name = "User_ID")
	private User user;
	
	@OneToMany(mappedBy = "order")
	private List<Order_Items> order = new ArrayList<Order_Items>();
	
	public int getOrderId() {
		return orderId;
	}
	
	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}
	
	public User getUser() {
		return user;
	}
	
	public void setUser(User user) {
		this.user = user;
	}
	
	public Date getOrderDate() {
		return orderDate;
	}
	
	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}
	
	public double getTotalAmount() {
		return totalAmount;
	}
	
	public void setTotalAmount(double totalAmount) {
		this.totalAmount = totalAmount;
	}
	
	public List<Order_Items> getOrderItems() {
		return order;
	}
	
	public void setOrderItems(List<Order_Items> order) {
		this.order = order;
	}
	
	public Order( int orderId, Date orderDate, int totalAmount) {
		super();
		
		this.orderId = orderId;
		this.orderDate = orderDate;
		this.totalAmount = totalAmount;
	}

	public Order() {
		// TODO Auto-generated constructor stub
	}
		
}
