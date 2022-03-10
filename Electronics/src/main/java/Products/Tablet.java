package Products;

import Product_Class.Product;

public class Tablet extends Product {
	
	String tName;
	String tColor;
	String tRam;
	String tStorage;
	String tSize;
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
	public Tablet(int p_Id, String p_Type, String p_Description, double p_price, int p_Quantity, String tName,
			String tColor, String tRam, String tStorage, String tSize) {
		super(p_Id, p_Type, p_Description, p_price, p_Quantity);
		this.tName = tName;
		this.tColor = tColor;
		this.tRam = tRam;
		this.tStorage = tStorage;
		this.tSize = tSize;
	}
	@Override
	public int getP_Id() {
		// TODO Auto-generated method stub
		return 0;
	}
	@Override
	public void setP_Id(int p_Id) {
		// TODO Auto-generated method stub
		
	}
	@Override
	public String getP_Type() {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public void setP_Type(String p_Type) {
		// TODO Auto-generated method stub
		
	}
	@Override
	public String getP_Description() {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public void setP_Description(String p_Description) {
		// TODO Auto-generated method stub
		
	}
	@Override
	public double getP_Price() {
		// TODO Auto-generated method stub
		return 0;
	}
	@Override
	public void setP_Price(double p_Price) {
		// TODO Auto-generated method stub
		
	}
	@Override
	public int getP_Quantity() {
		// TODO Auto-generated method stub
		return 0;
	}
	@Override
	public void setP_Quantity(int p_Quantity) {
		// TODO Auto-generated method stub
		
	}
	
	
}
