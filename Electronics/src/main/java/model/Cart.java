/**
 * 
 */
package model;

/**
 * @author devoza
 *
 */

import javax.persistence.*;

@Entity
@Table(name="Cart")
public class Cart {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="cart_Id")
	private int cart_id;
	
	@Column(name="Quantity")
	private int cart_quantity;
	
	@ManyToOne
	@JoinColumn(name = "Product_ID")
	private Product product;
	
	@ManyToOne
	@JoinColumn(name = "User_ID")
	private User user;
	
	@Column(name="Price")
	private double cart_Amount;
	
	public int getCart_id() {
		return cart_id;
	}

	public void setCart_id(int cart_id) {
		this.cart_id = cart_id;
	}

	public int getCart_quantity() {
		return cart_quantity;
	}

	public void setCart_quantity(int cart_quantity) {
		this.cart_quantity = cart_quantity;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public double getCart_Amount() {
		return cart_Amount;
	}

	public void setCart_Amount(double cart_Amount) {
		this.cart_Amount = cart_Amount;
	}

	public Cart(int cart_id, int cart_quantity, Product product, User user, double cart_Amount) {
		super();
		this.cart_id = cart_id;
		this.cart_quantity = cart_quantity;
		this.product = product;
		this.user = user;
		this.cart_Amount = cart_Amount;
	}

	public Cart() {
		super();
		// TODO Auto-generated constructor stub
	}

}
