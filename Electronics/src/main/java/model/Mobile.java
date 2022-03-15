/**
 * 
 */
package model;

import javax.persistence.*;

/**
 * @author devoza
 *
 */

@Entity
@Table(name="Mobile")
public class Mobile extends Product {
	
	@Column(name="Name")
	String mName;
	
	@Column(name="Color")
	String mColor;
	
	@Column(name="Charger_Type")
	String mChargerType;
	
	@Column(name="Ram")
	String mRam;
	
	@Column(name="Processor")
	String mProcessor;
	
	@Column(name="Storage")
	String mStorage;
	
	@Column(name="Camera")
	String mCamera;
	
	public Mobile(int p_Id, String p_Type, String p_Description, double p_price, int p_Quantity, String mName,
			String mColor, String mChargerType, String mRam, String mProcessor, String mStorage, String imageurl, String mCamera) {
		super(p_Id, p_Type, p_Description, p_price, p_Quantity, imageurl);
		this.mName = mName;
		this.mColor = mColor;
		this.mChargerType = mChargerType;
		this.mRam = mRam;
		this.mProcessor = mProcessor;
		this.mStorage = mStorage;
		this.mCamera = mCamera;
	}
	
	public Mobile() {
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

	public String getmName() {
		return mName;
	}

	public void setmName(String mName) {
		this.mName = mName;
	}

	public String getmColor() {
		return mColor;
	}

	public void setmColor(String mColor) {
		this.mColor = mColor;
	}

	public String getmChargerType() {
		return mChargerType;
	}

	public void setmChargerType(String mChargerType) {
		this.mChargerType = mChargerType;
	}

	public String getmRam() {
		return mRam;
	}

	public void setmRam(String mRam) {
		this.mRam = mRam;
	}

	public String getmProcessor() {
		return mProcessor;
	}

	public void setmProcessor(String mProcessor) {
		this.mProcessor = mProcessor;
	}

	public String getmStorage() {
		return mStorage;
	}

	public void setmStorage(String mStorage) {
		this.mStorage = mStorage;
	}

	public String getmCamera() {
		return mCamera;
	}

	public void setmCamera(String mCamera) {
		this.mCamera = mCamera;
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
