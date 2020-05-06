package com.seller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class LoginDao {
	private static final Logger logger = LoggerFactory.getLogger("UserDetailsDao");
	//public static String sellername;

	public static boolean validate(String sellername, String password) {
		// TODO Auto-generated method stub
		boolean status = false;
		try {
			Connection con = null;
			Class.forName("com.mysql.jdbc.Driver");

			logger.info("Driver loaded ...");

			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/auction", "root", "root");
			if (con != null) {
				logger.info("connection established....");
			}
			String sql = "select * from auction.sellerlogin where SelleName=? and Password=?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, sellername);
			ps.setString(2, password);
			ResultSet rs=ps.executeQuery();  
			status=rs.next(); 			
		}
		catch (Exception e) {
		}
		return status;
	}
}
			
