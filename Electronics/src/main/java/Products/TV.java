/**
 * 
 */
package Products;

import Product_Class.Product;

/**
 * @author devoza
 *
 */
public class TV extends Product{

//product_id, product_type, product_description, name, color, size, music_system, price, quantity
	String tvName;
	String tvColor;
	String tvSize;
	String tvMusicSystem;
	
	public TV(int p_Id, String p_Type, String p_Description, double p_price, int p_Quantity, String tvName,
			String tvColor, String tvSize, String tvMusicSystem) {
		super(p_Id, p_Type, p_Description, p_price, p_Quantity);
		this.tvName = tvName;
		this.tvColor = tvColor;
		this.tvSize = tvSize;
		this.tvMusicSystem = tvMusicSystem;
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

	public String getTvName() {
		return tvName;
	}

	public void setTvName(String tvName) {
		this.tvName = tvName;
	}

	public String getTvColor() {
		return tvColor;
	}

	public void setTvColor(String tvColor) {
		this.tvColor = tvColor;
	}

	public String getTvSize() {
		return tvSize;
	}

	public void setTvSize(String tvSize) {
		this.tvSize = tvSize;
	}

	public String getTvMusicSystem() {
		return tvMusicSystem;
	}

	public void setTvMusicSystem(String tvMusicSystem) {
		this.tvMusicSystem = tvMusicSystem;
	}

}
