/**
 * 
 */
package Products;

import Product_Class.Product;

/**
 * @author devoz
 *
 */
public class HeadPhone extends Product{

	String hName;
	String hSoundQuality;
	
	public HeadPhone(int p_Id, String p_Type, String p_Description, double p_price, int p_Quantity, String hName,
			String hSoundQuality) {
		super(p_Id, p_Type, p_Description, p_price, p_Quantity);
		this.hName = hName;
		this.hSoundQuality = hSoundQuality;
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

	public String gethName() {
		return hName;
	}

	public void sethName(String hName) {
		this.hName = hName;
	}

	public String gethSoundQuality() {
		return hSoundQuality;
	}

	public void sethSoundQuality(String hSoundQuality) {
		this.hSoundQuality = hSoundQuality;
	}
	
}
