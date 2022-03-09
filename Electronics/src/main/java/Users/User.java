package Users;

public class User {
	private int userId;
	private String userName;
	private String phoneNumber;
	private String email;
	private String dateOfBirth;
	private String role;
	private Address billing;
	private Address shipping;
	private String password;
	
	public User(int userId, String userName, String phoneNumber, String email, String dob,String role, Address billing, Address shipping, String password){
        this.userId = userId;
        this.userName = userName;
        this.phoneNumber = phoneNumber;
        this.email = email;
        this.dateOfBirth = dob;
        this.role = role;
        this.billing = billing;
        this.shipping = shipping;
        this.setPassword(password);
    }
	
	
	
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	
	
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	
	
	public String getDateOfBirth() {
		return dateOfBirth;
	}
	public void setDateOfBirth(String dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}
	
	
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	
	
	public Address getBilling() {
		return billing;
	}
	public void setBilling(Address billing) {
		this.billing = billing;
	}
	
	
	public Address getShipping() {
		return shipping;
	}
	public void setShipping(Address shipping) {
		this.shipping = shipping;
	}
	
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	

}
