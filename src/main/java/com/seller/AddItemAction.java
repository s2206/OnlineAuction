package com.seller;

public class AddItemAction {
	private int price ;
	private String sellername, item,activebid;
	
	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getSellername() {
		return sellername;
	}

	public void setSellername(String sellername) {
		this.sellername = sellername;
	}

	public String getItem() {
		return item;
	}

	public void setItem(String item) {
		this.item = item;
	}

	public String getActivebid() {
		return activebid;
	}

	public void setActivebid(String activebid) {
		this.activebid = activebid;
	}

	public String execute() {

		int i = AddItemsDao.save(this);
		if (i > 0) {
			return "success";
		}
		return "error";
	}
	
}
