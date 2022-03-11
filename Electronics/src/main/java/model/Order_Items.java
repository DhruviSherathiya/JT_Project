package model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "Order_Items")
public class Order_Items {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="id")
	private Integer id;
	
	@ManyToOne
	@JoinColumn(name = "Order_ID")
	Order order;
	
	@Column(name="Product_Name")
	String product_Name;
	
	@Column(name="Quantity")
	int quantity;
	
	@Column(name="Product_Price")
	int product_Price;
	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Order getOrder() {
		return order;
	}

	public void setOrder(Order order) {
		this.order = order;
	}
	
	public Order_Items(String product_Name, int quantity, int product_Price) {
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
