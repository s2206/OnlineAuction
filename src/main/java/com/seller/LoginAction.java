package com.seller;

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
		
	    if(LoginDao.validate(sellername, password)){  
	        return "success";  
	    }  
	    else{  
	        return "error";  
	    }  
	}
}
