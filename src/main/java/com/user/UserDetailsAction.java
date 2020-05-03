package com.user;

public class UserDetailsAction {

	private int Phone;
	private String UserName, Email, Address;

	public int getPhone() {
		return Phone;
	}

	public void setPhone(int phone) {
		Phone = phone;
	}

	public String getUserName() {
		return UserName;
	}

	public void setUserName(String userName) {
		UserName = userName;
	}

	public String getEmail() {
		return Email;
	}

	public void setEmail(String email) {
		Email = email;
	}

	public String getAddress() {
		return Address;
	}

	public void setAddress(String address) {
		Address = address;
	}	

	
	@Override
	public String toString() {
		return "UserDetailsAction [Phone=" + Phone + ", UserName=" + UserName + ", Email=" + Email + ", Address="
				+ Address + "]";
	}

	public String execute() {

		int i = UserDetailsDao.save(this);
		if (i > 0) {
			return "success";
		}
		return "error";
	}
}
