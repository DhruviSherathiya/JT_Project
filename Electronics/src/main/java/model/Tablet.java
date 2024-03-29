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
@Table(name = "Tablet")
public class Tablet extends Product{
	
	@Column(name="Name")
	private String tName;
		
	@Column(name="Color")
	private String tColor;
	
	@Column(name="Ram")
	private String tRam;
	
	@Column(name="Storage")
	private String tStorage;
	
	@Column(name="Size")
	private String tSize;
	
	public Tablet(int p_Id, String p_Type, String p_Description, double p_price, int p_Quantity, String tName,
			String tColor, String tRam, String tStorage, String imageurl, String tSize) {
		super(p_Id, p_Type, p_Description, p_price, p_Quantity, imageurl);
		this.tName = tName;
		this.tColor = tColor;
		this.tRam = tRam;
		this.tStorage = tStorage;
		this.tSize = tSize;
	}
	
	public Tablet() {
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
	
	public String gettName() {
		return tName;
	}
	
	public void settName(String tName) {
		this.tName = tName;
	}
	
	public String gettColor() {
		return tColor;
	}
	
	public void settColor(String tColor) {
		this.tColor = tColor;
	}
	
	public String gettRam() {
		return tRam;
	}
	
	public void settRam(String tRam) {
		this.tRam = tRam;
	}
	
	public String gettStorage() {
		return tStorage;
	}
	
	public void settStorage(String tStorage) {
		this.tStorage = tStorage;
	}
	
	public String gettSize() {
		return tSize;
	}
	
	public void settSize(String tSize) {
		this.tSize = tSize;
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
	