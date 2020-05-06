package com.seller;

import com.opensymphony.xwork2.ActionContext;

public class LoginAction {

	private String sellername;
	private String password;
	
	
	public String getSellername() {
		return sellername;
	}

	public void setSellername(String sellername) {
		this.sellername = sellername;
	}

	public String getPassword() {
		return password;
	}	
	
	public void setPassword(String password) {
		this.password = password;
	}	
		
	public String execute(){  
		
		ActionContext.getContext().getSession().put("sellername", getSellername());
		
	    if(LoginDao.validate(sellername, password)){  
	        return "success";  
	    }  
	    else{  
	        return "error";  
	    }  
	}
}
