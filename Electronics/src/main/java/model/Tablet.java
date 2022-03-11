package model;

public class Tablet extends Product {
	
	String tName;
	String tColor;
	String tRam;
	String tStorage;
	String tSize;
	
	public Tablet(int p_Id, String p_Type, String p_Description, double p_price, int p_Quantity, String tName,
			String tColor, String tRam, String tStorage, String tSize) {
		super(p_Id, p_Type, p_Description, p_price, p_Quantity);
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

}
	