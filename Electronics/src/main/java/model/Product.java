/**
 * 
 */
package model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.Table;

/**
 * @author devoza
 *
 */

@Entity
@Table(name = "Product")
@Inheritance(strategy = InheritanceType.JOINED)
public abstract class Product {
	
	public Product() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="pId")
	protected int p_Id;
	
	@Column(name="p_Type")
	protected String p_Type;
	
	@Column(name="p_Description")
	protected String p_Description;
	
	@Column(name="p_Price")
	protected double p_Price;
	
	@Column(name="p_Quantity")
    protected int p_Quantity;
	
	@Column(name="Image")
	protected String img_Url;
    
	/*
	 * public Product(int p_Id, String p_Type, String p_Description, double p_price,
	 * int p_Quantity) { super(); this.p_Id = p_Id; this.p_Type = p_Type;
	 * this.p_Description = p_Description; this.p_Price = p_price; this.p_Quantity =
	 * p_Quantity; }
	 */
	public Product(int p_Id, String p_Type, String p_Description, double p_Price, int p_Quantity, String img_Url) {
		super();
		this.p_Id = p_Id;
		this.p_Type = p_Type;
		this.p_Description = p_Description;
		this.p_Price = p_Price;
		this.p_Quantity = p_Quantity;
		this.img_Url = img_Url;
	}
	
	public abstract int getP_Id();

	public abstract void setP_Id(int p_Id);
	
	public abstract String getP_Type();
	
	public abstract void setP_Type(String p_Type);
	
	public abstract String getP_Description();
	
	public abstract void setP_Description(String p_Description);
	
	public abstract double getP_Price();
	
	public abstract void setP_Price(double p_Price);
	
	public abstract int getP_Quantity();
	
	public abstract void setP_Quantity(int p_Quantity);
	
	public abstract String getImg_Url();
	
	public abstract void setImg_Url(String url);

}
