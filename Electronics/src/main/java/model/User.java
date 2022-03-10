package model;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
public class User implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int userId;
	
	@Column
	private String userName;
	
	@Column
	private String password;
	
	@Column
	private String email;
	
	@Column
	private String phoneNumber;
	
	@Column
	private String dateOfBirth;
	
	@Column
	private String role;
	/*
	 * private Address billing; private Address shipping;
	 */
	
	@Column
	private String billing;
	
	@Column
	private String shipping;
	
	
		
	public User() {
		super();
		// TODO Auto-generated constructor stub
		System.out.println("User No-arg constructor");
	}

	public User(String userName, String phoneNumber, String email, String dob,String role, String billing, String shipping, String password){
		/* this.userId = userId; */
        this.userName = userName;
        this.phoneNumber = phoneNumber;
        this.email = email;
        this.dateOfBirth = dob;
        this.role = role;
        this.billing = billing;
        this.shipping = shipping;
        this.password = password;
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
	
	public String getBilling() {
		return billing;
	}
	
	public void setBilling(String billing) {
		this.billing = billing;
	}
	
	public String getShipping() {
		return shipping;
	}
	
	public void setShipping(String shipping) {
		this.shipping = shipping;
	}
	
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
}
