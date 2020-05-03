package com.user;

public class UserBidAction {
	private int Price;
	private String Item;
	
	public int getPrice() {
		return Price;
	}

	public void setPrice(int price) {
		Price = price;
	}

	public String getItem() {
		return Item;
	}

	public void setItem(String item) {
		Item = item;
	}

	public String execute() {
		int i = UserDetailsDao.savebid(this);
		if (i > 0) {
			return "success";
		}
		return "error";
	}
}
