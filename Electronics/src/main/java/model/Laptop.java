/**
 * 
 */
package model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;

/**
 * @author devoza
 *
 */

@Entity
@Table(name = "Laptop") 
public class Laptop extends Product{
	
	@Column(name="Name")
	private String lName;
	
	@Column(name="Ram")
	private String lRam;
	
	@Column(name="Processor")
	private String lProcessor;
	
	@Column(name="Storage")
	private String lStorage;
	
	@Column(name="Color")
	private String lColor;
	
	@Column(name="Graphics")
	private String lGraphics;
	
	public Laptop(int p_Id, String p_Type, String p_Description, double p_price, int p_Quantity, String lName,
			String lRam, String lProcessor, String lStorage, String lColor, String lGraphics) {
		super(p_Id, p_Type, p_Description, p_price, p_Quantity);
		this.lName = lName;
		this.lRam = lRam;
		this.lProcessor = lProcessor;
		this.lStorage = lStorage;
		this.lColor = lColor;
		this.lGraphics = lGraphics;
	}
	
	public Laptop() {
		// TODO Auto-generated constructor stub
		super();
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

	public String getlName() {
		return lName;
	}

	public void setlName(String lName) {
		this.lName = lName;
	}

	public String getlRam() {
		return lRam;
	}

	public void setlRam(String lRam) {
		this.lRam = lRam;
	}

	public String getlProcessor() {
		return lProcessor;
	}

	public void setlProcessor(String lProcessor) {
		this.lProcessor = lProcessor;
	}

	public String getlStorage() {
		return lStorage;
	}

	public void setlStorage(String lStorage) {
		this.lStorage = lStorage;
	}

	public String getlColor() {
		return lColor;
	}

	public void setlColor(String lColor) {
		this.lColor = lColor;
	}

	public String getlGraphics() {
		return lGraphics;
	}

	public void setlGraphics(String lGraphics) {
		this.lGraphics = lGraphics;
	}
	
}
