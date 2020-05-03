package com.user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class UserDetailsDao {
	private static final Logger logger = LoggerFactory.getLogger("UserDetailsDao");
	public static String Email;

	public static int save(UserDetailsAction ud) {
		// TODO Auto-generated method stub
		int status = 0;

		try {
			Connection con = null;
			Class.forName("com.mysql.jdbc.Driver");

			logger.info("Driver loaded ...");

			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/auction", "root", "root");
			if (con != null) {
				logger.info("connection established....");
			}
			String sql = "insert into auction.auctionuserdetails(UserName, Email, Phone, Address) values (?,?,?,?)";
			PreparedStatement ps = con.prepareStatement(sql);

			Email = ud.getEmail();
			ps.setString(1, ud.getUserName());
			ps.setString(2, ud.getEmail());
			ps.setInt(3, ud.getPhone());
			ps.setString(4, ud.getAddress());

			status = ps.executeUpdate();
			logger.info("Updated....");
			if (con != null) {
				con.close();
			}

		} catch (Exception e) {
		}

		return status;
	}

	public static int savebid(UserBidAction ub) {
		// TODO Auto-generated method stub
		int status = 0;

		try {
			Connection con = null;
			Class.forName("com.mysql.jdbc.Driver");

			logger.info("Driver loaded for bid ...");

			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/auction", "root", "root");
			if (con != null) {
				logger.info("connection established for bid....");
			}
			
			String sql = "update auction.auctionuserdetails set Price=? where Email = '"+Email+"'";
	
			PreparedStatement ps = con.prepareStatement(sql);	

			//ps.setString(1, ub.getItem());
			ps.setInt(1, ub.getPrice());

			status = ps.executeUpdate();
			logger.info("Updated....");
			if(con!=null) {
				con.close();
			}
		} 
		catch (Exception e) {
		}
		return status;
	}

}
