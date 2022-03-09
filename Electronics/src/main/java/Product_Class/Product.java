/**
 * 
 */
package Product_Class;

/**
 * @author devoz
 *
 */
public abstract class Product {
	
	protected int p_Id;
	protected String p_Type;
	protected String p_Description;
	protected double p_Price;
    protected int p_Quantity;
    
	public Product(int p_Id, String p_Type, String p_Description, double p_price, int p_Quantity) {
		super();
		this.p_Id = p_Id;
		this.p_Type = p_Type;
		this.p_Description = p_Description;
		this.p_Price = p_price;
		this.p_Quantity = p_Quantity;
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

//	public int getP_Id() {
//		return p_Id;
//	}
//
//	public void setP_Id(int p_Id) {
//		this.p_Id = p_Id;
//	}
//
//	public String getP_Type() {
//		return p_Type;
//	}
//
//	public void setP_Type(String p_Type) {
//		this.p_Type = p_Type;
//	}
//
//	public String getP_Description() {
//		return p_Description;
//	}
//
//	public void setP_Description(String p_Description) {
//		this.p_Description = p_Description;
//	}

//	public double getP_Price() {
//		return p_Price;
//	}

//	public void setP_Price(double p_Price) {
//		this.p_Price = p_Price;
//	}

//	public int getP_Quantity() {
//		return p_Quantity;
//	}

//	public void setP_Quantity(int p_Quantity) {
//		this.p_Quantity = p_Quantity;
//	}
	
}
