/**
 * 
 */
package model;

/**
 * @author devoza
 *
 */
public class Mobile extends Product {

	String mName;
	String mColor;
	String mChargerType;
	String mRam;
	String mProcessor;
	String mStorage;
	String mCamera;
	
	public Mobile(int p_Id, String p_Type, String p_Description, double p_price, int p_Quantity, String mName,
			String mColor, String mChargerType, String mRam, String mProcessor, String mStorage, String mCamera) {
		super(p_Id, p_Type, p_Description, p_price, p_Quantity);
		this.mName = mName;
		this.mColor = mColor;
		this.mChargerType = mChargerType;
		this.mRam = mRam;
		this.mProcessor = mProcessor;
		this.mStorage = mStorage;
		this.mCamera = mCamera;
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
	
}