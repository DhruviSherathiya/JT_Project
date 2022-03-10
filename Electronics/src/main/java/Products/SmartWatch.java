package Products;

import Product_Class.Product;

public class SmartWatch extends Product {
	String tName;
	String tColor;
	String tSize;
	String tConnectivity;
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
	public String gettSize() {
		return tSize;
	}
	public void settSize(String tSize) {
		this.tSize = tSize;
	}
	public String gettConnectivity() {
		return tConnectivity;
	}
	public void settConnectivity(String tConnectivity) {
		this.tConnectivity = tConnectivity;
	}
	public SmartWatch(int p_Id, String p_Type, String p_Description, double p_price, int p_Quantity, String tName,
			String tColor, String tSize, String tConnectivity) {
		super(p_Id, p_Type, p_Description, p_price, p_Quantity);
		this.tName = tName;
		this.tColor = tColor;
		this.tSize = tSize;
		this.tConnectivity = tConnectivity;
	}
	
	
	
}
