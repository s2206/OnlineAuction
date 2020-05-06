package com.user;

public class UserDetailsAction {

	private int phone;
	private String username, email, address;
	
	public int getPhone() {
		return phone;
	}

	public void setPhone(int phone) {
		this.phone = phone;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}


	@Override
	public String toString() {
		return "UserDetailsAction [phone=" + phone + ", username=" + username + ", email=" + email + ", address="
				+ address + "]";
	}

	public String execute() {

		int i = UserDetailsDao.save(this);
		if (i > 0) {
			return "success";
		}
		return "error";
	}
}
