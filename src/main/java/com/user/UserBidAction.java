package com.user;

public class UserBidAction {
	private int price;
	private String item;
	
	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getItem() {
		return item;
	}

	public void setItem(String item) {
		this.item = item;
	}

	public String execute() {
		int i = UserDetailsDao.savebid(this);
		if (i > 0) {
			return "success";
		}
		return "error";
	}
}
