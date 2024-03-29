/**
 * 
 */
package model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * @author devoza
 *
 */

@Entity
@Table(name = "SmartWatch")
public class SmartWatch extends Product{
	
	@Column(name="Name")
	private String sName;
		
	@Column(name="Color")
	private String sColor;
	
	@Column(name="Size")
	private String sSize;
	
	@Column(name="Connectivity")
	private String sConnectivity;
	
//product_id, product_type, product_description, name, color, price, quantity, size, connectivity	
	
	public SmartWatch(int p_Id, String p_Type, String p_Description, double p_price, int p_Quantity, String sName,
			String sColor, String sSize, String imageurl, String sConnectivity) {
		super(p_Id, p_Type, p_Description, p_price, p_Quantity, imageurl);
		this.sName = sName;
		this.sColor = sColor;
		this.sSize = sSize;
		this.sConnectivity = sConnectivity;
	}
	
	public SmartWatch() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public int getP_Id() {
		return p_Id;
	}

	@Override
	public void setP_Id(int p_Id) {
		this.p_Id = p_Id;
	}

	@Override
	public String getP_Type() {
		return p_Type;
	}

	@Override
	public void setP_Type(String p_Type) {
		this.p_Type = p_Type;
	}

	@Override
	public String getP_Description() {
		return p_Description;
	}

	@Override
	public void setP_Description(String p_Description) {
		this.p_Description = p_Description;
	}

	@Override
	public double getP_Price() {
		return p_Price;
	}

	@Override
	public void setP_Price(double p_Price) {
		this.p_Price = p_Price;
	}

	@Override
	public int getP_Quantity() {
		return p_Quantity;
	}

	@Override
	public void setP_Quantity(int p_Quantity) {
		this.p_Quantity = p_Quantity;
	}
	
	public String getsName() {
		return sName;
	}
	
	public void setsName(String sName) {
		this.sName = sName;
	}
	public String getsColor() {
		return sColor;
	}
	
	public void setsColor(String sColor) {
		this.sColor = sColor;
	}
	
	public String getsSize() {
		return sSize;
	}
	
	public void setsSize(String sSize) {
		this.sSize = sSize;
	}
	
	public String getsConnectivity() {
		return sConnectivity;
	}
	
	public void setsConnectivity(String sConnectivity) {
		this.sConnectivity = sConnectivity;

	}	
	
	@Override
	public String getImg_Url() {
		return img_Url;
	}

	@Override
	public void setImg_Url(String url) {
		this.img_Url = url;
	}

}
